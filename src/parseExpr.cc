
#include "parser.h"
#include "float.h"
#include "complex.h"
#include "string.h"
#include "bool.h"

#include <unordered_set>


enum class Assoc
{
	LEFT,
	RIGHT,
	NON
};

struct Operator
{
	ID		id;
	Assoc	assoc;
	int 	prec;
};

Operator ops [] =
{
	{ ID::QUAL, 	Assoc::LEFT, 0 }, // ::        Namespace qualifier

	{ ID::ALIGNOF,	Assoc::NON,  1 }, // alignof   Align of a type.
	{ ID::LPAREN,	Assoc::NON,  1 }, // (         Parenthesis / ctor / function call
	{ ID::RPAREN,	Assoc::NON,  1 }, // )         Parenthesis
	{ ID::LBRACK,	Assoc::NON,	 1 }, // [         Array index
	{ ID::RBRACK,	Assoc::NON,	 1 }, // ]         Array index
	{ ID::FACTORIAL,Assoc::NON,  1 }, // . !       Factorial (post)
	{ ID::POST_INC, Assoc::NON,  1 }, // . ++      Post increment
	{ ID::POST_DEC, Assoc::NON,  1 }, // . --      Post decrement
	{ ID::DOT,      Assoc::LEFT, 1 }, // .         Member access
	{ ID::PTR,      Assoc::LEFT, 1 }, // ->        Pointer member access

	{ ID::EXP,		Assoc::RIGHT,2 }, // **        Exponent
	{ ID::CRS_PROD, Assoc::RIGHT,2 }, // [**]      Matrix exponent

	{ ID::NOT,      Assoc::NON,  3 }, // !         Logical not
	{ ID::BNOT,     Assoc::NON,  3 }, // ~ .       Binary not
	{ ID::UNIARY_PLUS, Assoc::NON,3}, // + .       No-op
	{ ID::UNIARY_MINUS,Assoc::NON,3}, // - .       Negate
	{ ID::DEREF,    Assoc::NON,  3 }, // * .       Pointer dereference
	{ ID::INC,      Assoc::NON,  3 }, // ++ .      Pre increment
	{ ID::DEC,      Assoc::NON,  3 }, // -- .      Pre decrement
	{ ID::ABS,      Assoc::NON,  3 }, // |.|       Absolute value
	{ ID::NEW,      Assoc::NON,  3 }, // new       Create operator
	{ ID::DELETE,   Assoc::NON,  3 }, // delete    Delete operator
	{ ID::CO_AWAIT, Assoc::NON,  3 }, // co_await  Co-routine await
	{ ID::SIZEOF,   Assoc::NON,  3 }, // sizeof    Size of operator
	{ ID::IS_VOID,  Assoc::NON,  3 }, // is_void   Value in variable check
 
	{ ID::DOT_ASK,  Assoc::LEFT, 4 }, // .*        Member access
	{ ID::MPTR,     Assoc::LEFT, 4 }, // ->*       Pointer member access

	{ ID::MUL,      Assoc::LEFT, 5 }, // *         Multiplication
	{ ID::DIV,      Assoc::LEFT, 5 }, // /         Division
	{ ID::MOD,      Assoc::LEFT, 5 }, // %         Modulus
	{ ID::CRS_PROD, Assoc::LEFT, 5 }, // [*]       Matrix cross product
	{ ID::DOT_PROD, Assoc::LEFT, 5 }, // [.]       Matrix dot product
	{ ID::M_DIV,    Assoc::LEFT, 5 }, // [/]       Matrix division product

	{ ID::ADD,      Assoc::LEFT, 6 }, // +         Plus
	{ ID::SUB,      Assoc::LEFT, 6 }, // -         Subtract

	{ ID::SLFT,     Assoc::LEFT, 7 }, // <<        Shift left
	{ ID::SRGHT,    Assoc::LEFT, 7 }, // >>        Shift right

	{ ID::SS,       Assoc::LEFT, 8 }, // <=>       Three way comparison 

	{ ID::LT,       Assoc::NON,  9 }, // <         Less than
	{ ID::LE,       Assoc::NON,  9 }, // <=        Less than or equal to
	{ ID::GT,       Assoc::NON,  9 }, // >         Greater than
	{ ID::GE,       Assoc::NON,  9 }, // >=        Greater than or equal to

	{ ID::EQ,       Assoc::LEFT, 10}, // ==        Equal to
	{ ID::NE,       Assoc::RIGHT,10}, // !=        Not equal to

	{ ID::BAND,     Assoc::LEFT, 11}, // &         Binary and

	{ ID::XOR,      Assoc::LEFT, 12}, // ^         Binary xor

	{ ID::BOR,      Assoc::LEFT, 13}, // |         Binary or

	{ ID::IN,       Assoc::LEFT, 14}, // <-        Element of a collection 

	{ ID::AND,      Assoc::LEFT, 15}, // &&        And

	{ ID::OR,       Assoc::LEFT, 16}, // ||        Or

	{ ID::QUEST,    Assoc::RIGHT,17}, // ?         Conditional
	{ ID::COLON,    Assoc::RIGHT,17}, // :         Conditional
	{ ID::ASSIGN,   Assoc::RIGHT,17}, // =         Assign
	{ ID::MOD_ASS,  Assoc::RIGHT,17}, // %=        Modulus assign
	{ ID::MUL_ASS,  Assoc::RIGHT,17}, // *=        Multiply assign
	{ ID::AND_ASS,  Assoc::RIGHT,17}, // &&=       And assign
	{ ID::BAND_ASS, Assoc::RIGHT,17}, // &=        And assign
	{ ID::OR_ASS,   Assoc::RIGHT,17}, // ||=       And assign
	{ ID::BOR_ASS,  Assoc::RIGHT,17}, // |=        And assign
	{ ID::ADD_ASS,  Assoc::RIGHT,17}, // +=        Plus assign

	{ ID::CP_ASS,   Assoc::RIGHT,17 }, // [*]=     Matrix cross product assign
	{ ID::DIV_ASS,  Assoc::RIGHT,17 }, // /=       Divide assign
	{ ID::DP_ASS,   Assoc::RIGHT,17 }, // [.]=     Matrix dot product assign
	{ ID::EXP_ASS,  Assoc::RIGHT,17 }, // **=      Exponent assign
	{ ID::M_DIV,    Assoc::RIGHT,17 }, // [/]=     Matrix divide assign
	{ ID::ME_ASS,   Assoc::RIGHT,17 }, // [**]=    Matrix exponent assign
	{ ID::SUB_ASS,  Assoc::RIGHT,17 }, // -=       Subtract assign
	{ ID::TIL_ASS,  Assoc::RIGHT,17 }, // ~=       Binary not assign
	{ ID::XOR_ASS,  Assoc::RIGHT,17 }, // ^=       Xor assign
	{ ID::SLFT_ASS, Assoc::RIGHT,17 }, // <<=      Shift left assign
	{ ID::SRGHT_ASS,Assoc::RIGHT,17 }, // >>=      Shift right assign
	{ ID::OR_ASS,   Assoc::RIGHT,17 }, // ||=      Or assign
	{ ID::BOR_ASS,  Assoc::RIGHT,17 }, // |=       Binary or assign
	{ ID::CO_YIELD, Assoc::NON,  17 }, // co_yield Yield expression
	{ ID::THROW,    Assoc::NON,  17 }, // throw    Throw exception
	{ ID::ASYNC,    Assoc::NON,  17 }, // async    Execute function asynchronously

	{ ID::S_DELETE, Assoc::NON,  18 }, // delete   SQL delete
	{ ID::INSERT,   Assoc::NON,  18 }, // insert   SQL insert
	{ ID::SELECT,   Assoc::LEFT, 18 }, // select   SQL select
	{ ID::UPDATE,   Assoc::NON,  18 }, // update   SQL update

	{ ID::DOT_DOT,  Assoc::NON,  19 }, // ..       Index range operator
	{ ID::PARAM_ASS,Assoc::NON,  19 }, // :=       Parameter assignment
};


static bool isLiteral( ID id )
{
	static std::unordered_set<ID>	literalIds
	{
		ID::_E,
		ID::_GAMMA,
		ID::_I,
		ID::_INF,
		ID::_NAN,
		ID::_PHI,
		ID::_PI,

		ID::FALSE,
		ID::TRUE,

		ID::THIS,

		ID::CHAR_LIT,

		ID::DATETIME_LIT,
		ID::TIME_LIT,
		ID::DATE_LIT,
		ID::YEARS_LIT,
		ID::DAYS_LIT,
		ID::HOURS_LIT,
		ID::MINS_LIT,
		ID::SECS_LIT,

		ID::F32_LIT,
		ID::F64_LIT,
		ID::F80_LIT,

		ID::I32_LIT,
		ID::I64_LIT,
		ID::I128_LIT,

		ID::U32_LIT,
		ID::U64_LIT,
		ID::U128_LIT,

		ID::N_LIT,
		ID::Z_LIT,
		ID::Q_LIT,
		ID::R_LIT,
		ID::C_LIT,

		ID::LSTRING_LIT,
		ID::LSSTRING_LIT,
		ID::LTSTRING_LIT,
		ID::LTSSTRING_LIT,
		ID::STRING_LIT,
		ID::SSTRING_LIT,

		ID::REGEXP_LIT,
	};

	return literalIds.find(id) != literalIds.end();
}

static Expr * createLiteral( const Token & t )
{
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
	switch( t.id() )
	{
	default:
		TODO
		break;

	case ID::_E:
		return new Literal<E>(t.line(),t.column(), E() );
	case ID::_GAMMA:
		return new Literal<Gamma>(t.line(),t.column(), Gamma() );
	case ID::_I:
		return new Literal<Complex>(t.line(),t.column(), Complex( nullptr, new Int32(1)));
	case ID::_INF:
		return new Literal<Inf>(t.line(),t.column(), Inf() );
	case ID::_NAN:
		return new Literal<Nan>(t.line(),t.column(), Nan() );
	case ID::_PHI:
		return new Literal<Phi>(t.line(),t.column(), Phi() );
	case ID::_PI:
		return new Literal<Pi>(t.line(),t.column(), Pi() );

	case ID::FALSE:
		return new Literal<Bool>(t.line(),t.column(), Bool(false) );
	case ID::TRUE:
		return new Literal<Bool>(t.line(),t.column(), Bool(true) );

	case ID::THIS:
		TODO
		break;
	case ID::CHAR_LIT:
		TODO
		break;
	case ID::DATETIME_LIT:
		TODO
		break;
	case ID::DATE_LIT:
		TODO
		break;
	case ID::DAYS_LIT:
		TODO
		break;
	case ID::F32_LIT:
		return new Literal<Float32>(t.line(),t.column(), Float32(t.f32()));
	case ID::F64_LIT:
		return new Literal<Float64>(t.line(),t.column(), Float64(t.f64()));
	case ID::F80_LIT:
		return new Literal<Float80>(t.line(),t.column(), Float80(t.f80()));
	case ID::HOURS_LIT:
		TODO
		break;
	case ID::I32_LIT:
		return new Literal<Int32>(t.line(),t.column(), Int32(t.i32()));
	case ID::I64_LIT:
		return new Literal<Int64>(t.line(),t.column(), Int64(t.i64()));
	case ID::I128_LIT:
		TODO
		break;
	case ID::Z_LIT:
		TODO
		break;
	case ID::STRING_LIT:
	case ID::SSTRING_LIT:
		return new Literal<String>(t.line(),t.column(), String(t.str()));
	case ID::LSTRING_LIT:
	case ID::LSSTRING_LIT:
		return new Literal<LString>(t.line(),t.column(), LString(t.str()));
	case ID::LTSTRING_LIT:
	case ID::LTSSTRING_LIT:
		return new Literal<LTString>(t.line(),t.column(), LTString(t.str()));
	case ID::MINS_LIT:
		TODO
		break;
	case ID::N_LIT:
		TODO
		break;
	case ID::Q_LIT:
		TODO
		break;
	case ID::R_LIT:
		TODO
		break;
	case ID::REGEXP_LIT:
		TODO
		break;
	case ID::SECS_LIT:
		TODO
		break;
	case ID::TIME_LIT:
		TODO
		break;
	case ID::U32_LIT:
		return new Literal<Uint32>(t.line(),t.column(), Uint32(t.u32()));
	case ID::U64_LIT:
		return new Literal<Uint64>(t.line(),t.column(), Uint64(t.u64()));
	case ID::U128_LIT:
		return new Literal<Uint128>(t.line(),t.column(), Uint128(t.u128()));
	case ID::YEARS_LIT:
		TODO
		break;
	}
}

static bool isTypeName( ID id )
{
	static std::unordered_set<ID>	typeNameIds
	{
		ID::BOOL,
		ID::C,
		ID::CHAR,
		ID::DATE,
		ID::DATETIME,
		ID::DLIST,
		ID::DQUEUE,
		ID::DURATION,
		ID::F32,
		ID::F64,
		ID::F80,
		ID::GRAPH,
		ID::HEAP,
		ID::I0, ID::I1, ID::I2, ID::I3, ID::I4, ID::I5, ID::I6, ID::I7, ID::I8, ID::I9,
		ID::I10,ID::I11,ID::I12,ID::I13,ID::I14,ID::I15,ID::I16,ID::I17,ID::I18,ID::I19,
		ID::I20,ID::I21,ID::I22,ID::I23,ID::I24,ID::I25,ID::I26,ID::I27,ID::I28,ID::I29,
		ID::I30,ID::I31,ID::I32,ID::I64,ID::I128,
		ID::LIST,
		ID::LSTRING,
		ID::LTSTRING,
		ID::AUTO,
		ID::MAP,
		ID::MMAP,
		ID::MSET,
		ID::MUTEX,
		ID::N,
		ID::N0, ID::N1, ID::N2, ID::N3, ID::N4, ID::N5, ID::N6, ID::N7, ID::N8, ID::N9,
		ID::N10,ID::N11,ID::N12,ID::N13,ID::N14,ID::N15,ID::N16,ID::N17,ID::N18,ID::N19,
		ID::N20,ID::N21,ID::N22,ID::N23,ID::N24,ID::N25,ID::N26,ID::N27,ID::N28,ID::N29,
		ID::N30,ID::N31,ID::N32,ID::N64,ID::N128,
		ID::OBJECT,
		ID::Q,
		ID::QUEUE,
		ID::R,
		ID::REGEXP,
		ID::SEMAPHORE,
		ID::STACK,
		ID::STRING,
		ID::U0, ID::U1, ID::U2, ID::U3, ID::U4, ID::U5, ID::U6, ID::U7, ID::U8, ID::U9,
		ID::U10,ID::U11,ID::U12,ID::U13,ID::U14,ID::U15,ID::U16,ID::U17,ID::U18,ID::U19,
		ID::U20,ID::U21,ID::U22,ID::U23,ID::U24,ID::U25,ID::U26,ID::U27,ID::U28,ID::U29,
		ID::U30,ID::U31,ID::U32,ID::U64,ID::U128,
		ID::SET,
		ID::Z,
		ID::Z0, ID::Z1, ID::Z2, ID::Z3, ID::Z4, ID::Z5, ID::Z6, ID::Z7, ID::Z8, ID::Z9,
		ID::Z10,ID::Z11,ID::Z12,ID::Z13,ID::Z14,ID::Z15,ID::Z16,ID::Z17,ID::Z18,ID::Z19,
		ID::Z20,ID::Z21,ID::Z22,ID::Z23,ID::Z24,ID::Z25,ID::Z26,ID::Z27,ID::Z28,ID::Z29,
		ID::Z30,ID::Z31,ID::Z32,ID::Z64,ID::Z128,
		ID::TYPE_NAME,
		ID::CLASS_NAME,
		ID::ENUM_NAME,
		ID::INTERFACE_NAME,
		ID::RELATION_NAME,
		ID::NAMESPACE_NAME,
		ID::SNAMESPACE_NAME,
		ID::UNION_NAME,
	};

	return typeNameIds.find(id) != typeNameIds.end();
}

static bool isPrefixOp( ID id )
{
	static std::unordered_set<ID>	prefixOpIds
	{
		ID::MUL,	// -> DEREF
		ID::ADD,	// -> UNIARY_PLUS
		ID::SUB,	// -> UNIARY_MINUS
		ID::BOR,	// -> ABS
		ID::BNOT,	// -> BNOT
		ID::DEC,	// -> DEC
		ID::INC,	// -> INC
		ID::NOT,	// -> NOT
	};

	return prefixOpIds.find(id) != prefixOpIds.end();
}

static inline ID mapPrefixOp( ID in )
{
	switch(in)
	{
	default:		return ID::ERROR;
	case ID::MUL:	return ID::DEREF;
	case ID::ADD:	return ID::UNIARY_PLUS;
	case ID::SUB:	return ID::UNIARY_MINUS;
	case ID::BOR:	return ID::ABS;
	case ID::BNOT:	return ID::BNOT;
	case ID::DEC:	return ID::DEC;
	case ID::INC:	return ID::INC;
	case ID::NOT:	return ID::NOT;
	}
}

static bool isPostOp( ID id )
{
	static std::unordered_set<ID>	postOpIds
	{
		ID::QUEST,
		ID::COLON,
		ID::BOR,
		ID::DEC,
		ID::INC,
		ID::NOT,
		ID::FACTORIAL,
	};

	return postOpIds.find(id) != postOpIds.end();
}

static bool isBinaryOp( ID id )
{
	static std::unordered_set<ID>	binOpIds
	{
		ID::ADD,
    	ID::SUB,
    	ID::MOD,
    	ID::MUL,
    	ID::DIV,
    	ID::DOT,
    	ID::LT,
    	ID::GT,
    	ID::BNOT,
    	ID::XOR,
    	ID::BAND,
    	ID::ASSIGN,
    	ID::PARAM_ASS,
    	ID::ADD_ASS,
    	ID::SUB_ASS,
    	ID::TIL_ASS,
    	ID::MOD_ASS,
    	ID::MUL_ASS,
    	ID::DIV_ASS,
    	ID::EXP_ASS,
    	ID::AND_ASS,
    	ID::BAND_ASS,
    	ID::OR_ASS,
    	ID::BOR_ASS,
    	ID::XOR_ASS,
    	ID::SLFT_ASS,
    	ID::SRGHT_ASS,
    	ID::DP_ASS,
    	ID::CP_ASS,
    	ID::MD_ASS,
    	ID::ME_ASS,
    	ID::EXP,
    	ID::DOT_ASK,
    	ID::PTR,
    	ID::MPTR,
    	ID::LE,
    	ID::GE,
    	ID::SS,
    	ID::EQ,
    	ID::NE,
    	ID::AND,
    	ID::OR,
    	ID::SLFT,
    	ID::SRGHT,
    	ID::DOT_PROD,
    	ID::CRS_PROD,
    	ID::M_DIV,
    	ID::M_EXP,
    	ID::IN,
    	ID::QUAL,
	};

	return binOpIds.find(id) != binOpIds.end();
}

static bool isStartToken( ID id )
{
	static std::unordered_set<ID>	startIds
	{
		ID::ALIGNOF,

		ID::QUAL,
		ID::LPAREN,
		ID::FUN_NAME,
		ID::FUNCTION_NAME,
		ID::VARIABLE_NAME,
		ID::ID,
		ID::SID,
		ID::SFUN_NAME,
		ID::SFUNCTION_NAME,
		ID::SVARIABLE_NAME,
		ID::UNKOWN_NAME,
		ID::NEW,
		ID::SELECT,
		ID::SIZEOF,
		ID::TYPEID,
		ID::TIME,
		ID::BSLASH,
		ID::LBRACE,
		ID::THROW,
		ID::ASYNC,
		ID::DELETE,
		ID::EVAL,
		ID::INVALID_NUMBER,
		ID::INVALID_STRING,
		ID::CO_AWAIT,
		ID::IS_VOID,
		ID::CO_YIELD,
	};

	return startIds.find(id) != startIds.end();
}

bool Parser::evalStacks( Expr ** expr )
{
	if(opStack.size() > 0 )
	{
		TODO
	}
	else if( exprStack.size() == 1 )
	{
		*expr = exprStack.top();
		exprStack.pop();
		return true;
	}
	else
	{
		TODO
	}

	return false;
}

bool Parser::parseExpr( Expr ** expr, Token & token )
{
PENTER
	enum State
	{
		start,
		uniarySeen,
		valueSeen,
		binSeen
	} state = start;

	while(true)
	{
		switch( state )
		{
		default:
			TODO
			break;

		case start:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( isLiteral( token.id() ))
			{
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
				Expr * lit = createLiteral( token );
				exprStack.push(lit);
				state = valueSeen;
			}
			else if( isPrefixOp( token.id() ))
			{
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
				ID prefixOp = mapPrefixOp( token.id() );
				state = uniarySeen;
			}
			else
				TODO
			break;

		case uniarySeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( isLiteral( token.id() ))
			{
				Expr * lit = createLiteral( token );
				exprStack.push(lit);
				state = valueSeen;
			}
			else
				TODO
			break;

		case valueSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.id() == ID::SCOLON)
				return evalStacks( expr );
			else
			{
				TODO
			}
			break;

		case binSeen:
			TODO
			break;
		}

		lex(token, this );	
	}

	return false;
}
#if 0
		switch(token.id() )
		{
		default:
			TODO
			break;

		///////////////////////////////////////////////
		// punctuators
		///////////////////////////////////////////////
		case ID::COMMA:
			TODO
			break;
		case ID::SCOLON:
			// *expr = new Literal();
			return true;
		case ID::LBRACE:// {
			TODO
			break;
		case ID::RBRACE:// }
			TODO
			break;

		///////////////////////////////////////////////
		// operators
		///////////////////////////////////////////////

		case ID::QUAL:			// ::
			TODO
			break;
		case ID::ALIGNOF:		// alignof
			TODO
			break;
		case ID::LPAREN:		// (
			TODO
			break;
		case ID::RPAREN:		// )
			TODO
			break;
		case ID::LBRACK:		// [
			TODO
			break;
		case ID::RBRACK:		// ]
			TODO
			break;
		case ID::NOT:			// !
			TODO
			break;
		case ID::INC:			// ++
			TODO
			break;
		case ID::DEC:			// --
			TODO
			break;
		case ID::DOT:			// .
			TODO
			break;
		case ID::PTR:			// ->
			TODO
			break;
		case ID::EXP:			// **
			TODO
			break;
		case ID::M_EXP:			// [**]
			TODO
			break;
		case ID::BNOT:			// ~
			TODO
			break;
		case ID::ADD:			// +
			TODO
			break;
		case ID::SUB:			// -
			TODO
			break;
		case ID::MUL:			// *
			TODO
			break;
		case ID::BOR:			// |
			TODO
			break;
		case ID::NEW:			// new
			TODO
			break;
		case ID::DELETE:		// delete	
			TODO
			break;
		case ID::CO_AWAIT:		// co_await
			TODO
			break;
		case ID::SIZEOF:		// sizeof
			TODO
			break;
		case ID::IS_VOID:		// is_void
			TODO
			break;
		case ID::DOT_ASK:		// .*
			TODO
			break;
		case ID::MPTR:			// ->*
			TODO
			break;
		case ID::DIV:			// /
			TODO
			break;
		case ID::MOD:			// %
			TODO
			break;
		case ID::CRS_PROD:		// [*]
			TODO
			break;
		case ID::DOT_PROD:		// [.]
			TODO
			break;
		case ID::M_DIV:			// [/]
			TODO
			break;
		case ID::SLFT:			// <<
			TODO
			break;
		case ID::SRGHT:			// >>
			TODO
			break;
		case ID::SS:			// <=>
			TODO
			break;
		case ID::LT:			// <
			TODO
			break;
		case ID::LE:			// <=
			TODO
			break;
		case ID::GT:			// >
			TODO
			break;
		case ID::GE:			// >=
			TODO
			break;
		case ID::EQ:			// ==
			TODO
			break;
		case ID::NE:			// !=
			TODO
			break;
		case ID::BAND:			// &
			TODO
			break;
		case ID::XOR:			// ^
			TODO
			break;
		case ID::IN:			// in
			TODO
			break;
		case ID::AND:			// &&
			TODO
			break;
		case ID::OR:			// ||
			TODO
			break;
		case ID::QUEST:			// ?
			TODO
			break;
		case ID::COLON:			// :
			TODO
			break;
		case ID::ASSIGN:		// =
			TODO
			break;
		case ID::MOD_ASS:		// %=
			TODO
			break;
		case ID::MUL_ASS:		// *=
			TODO
			break;
		case ID::AND_ASS:		// &=		
			TODO
			break;
		case ID::ADD_ASS:		// +=		
			TODO
			break;
		case ID::CP_ASS:		// [*]=	
			TODO
			break;
		case ID::DIV_ASS:		// /=
			TODO
			break;
		case ID::DP_ASS:		// [.]=
			TODO
			break;
		case ID::EXP_ASS:		// **=
			TODO
			break;
		case ID::MD_ASS:		// [/]=
			TODO
			break;
		case ID::ME_ASS:		// [**]=
			TODO
			break;
		case ID::SUB_ASS:		// -=
			TODO
			break;
		case ID::TIL_ASS:		// ~=
			TODO
			break;
		case ID::XOR_ASS:		// ^=
			TODO
			break;
		case ID::SLFT_ASS:		// <<=
			TODO
			break;
		case ID::SRGHT_ASS:		// >>=
			TODO
			break;
		case ID::OR_ASS:		// |=
			TODO
			break;
		case ID::CO_YIELD:		// co_yield
			TODO
			break;
		case ID::THROW:			// throw
			TODO
			break;
		case ID::APPLY:			// apply
			TODO
			break;
		case ID::ASYNC:			// async
			TODO
			break;
		case ID::CLOSURE:		// closure
			TODO
			break;
		case ID::EVAL:			// eval
			TODO
			break;
		case ID::FILTER:		// filter
			TODO
			break;
		case ID::REDUCE:		// reduce
			TODO
			break;
		case ID::ORDER:			// order
			TODO
			break;
		case ID::INSERT:		// insert		
			TODO
			break;
		case ID::SELECT:		// select		
			TODO
			break;
		case ID::UPDATE:		// update		
			TODO
			break;
		case ID::DOT_DOT:		// ..
			TODO
			break;
		case ID::PARAM_ASS:		// :=
			TODO
			break;

		/////////////////////////////////////////
		// Identifiers
		/////////////////////////////////////////
		case ID::FUN_NAME:
			TODO
			break;
		case ID::FUNCTION_NAME:
			TODO
			break;
		case ID::NAMESPACE_NAME:
			TODO
			break;
		case ID::VARIABLE_NAME:
			TODO
			break;
		case ID::ID:
			TODO
			break;
		case ID::SID:
			TODO
			break;

		/////////////////////////////////////////
		// literals
		/////////////////////////////////////////
		case ID::_E:			// .e
			TODO
			break;
		case ID::FALSE:
			TODO
			break;
		case ID::_GAMMA:		// .gamma
			TODO
			break;
		case ID::_I:			// .i
			TODO
			break;
		case ID::_INF:			// .inf
			TODO
			break;
		case ID::_NAN:			// .nan
			TODO
			break;
		case ID::_PHI:			// .phi
			TODO
			break;
		case ID::_PI:			// .pi
			TODO
			break;
		case ID::TRUE:		
			TODO
			break;
		case ID::THIS:
			TODO
			break;
		case ID::CHAR_LIT:		// 'x'
			TODO
			break;
		case ID::DATETIME_LIT:	// d"YYYY-MM-DD:HH:MM:SS[:sssssssss]"
			TODO
			break;
		case ID::DATE_LIT:		// d"YYYY-MM-DD"
			TODO
			break;
		case ID::DAYS_LIT:       // 111d
			TODO
			break;
		case ID::F32_LIT:	// 1.1e10
			TODO
			break;
		case ID::F64_LIT:	// 1.1e100
			TODO
			break;
		case ID::F80_LIT:	// 1.1e100
			TODO
			break;
		case ID::HOURS_LIT:     // 111h
			TODO
			break;
		case ID::INT8_LIT:      // 1111
			TODO
			break;
		case ID::INT16_LIT:     // 1111
			TODO
			break;
		case ID::INT32_LIT:     // 1111
			TODO
			break;
		case ID::INT64_LIT:     // 1111
			TODO
			break;
		case ID::INTEGER_LIT:   // 765 432 109 876 543 210
			TODO
			break;
		case ID::LSTRING_LIT:   // l"sss"
		case ID::LSSTRING_LIT:   // l"sss"
			TODO
			break;
		case ID::LTSTRING_LIT:  // t"aaa"
		case ID::LTSSTRING_LIT:  // t"aaa"
			TODO
			break;
		case ID::MINS_LIT:      // 111m
			TODO
			break;
		case ID::NAT_LIT:       // 1212u
			TODO
			break;
		case ID::Q_LIT:         // 111q
			TODO
			break;
		case ID::REAL_LIT:      // 123r
			TODO
			break;
		case ID::REGEXP_LIT:    // re"s*"
			TODO
			break;
		case ID::SECS_LIT:      // 111.123s
			TODO
			break;
		case ID::STRING_LIT:    // "ssss"
		case ID::SSTRING_LIT:   // "ssss"
			TODO
			break;
		case ID::TIME_LIT:      // t"HH:MM:SS:sssssssss"
			TODO
			break;
		case ID::UINT8_LIT:     // 111u
			TODO
			break;
		case ID::UINT16_LIT:    // 111u
			TODO
			break;
		case ID::UINT32_LIT:    // 111u
			TODO
			break;
		case ID::UINT64_LIT:    // 111u
			TODO
			break;
    	case ID::YEARS_LIT:     // 111y
			TODO
			break;
		}
#endif


#include "parser.h"
#include "float.h"
#include "complex.h"
#include "string.h"
#include "char.h"
#include "bool.h"
#include "regex.h"

#include <unordered_set>
#include <vector>


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
		ID::MONTHS_LIT,
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

		ID::LSTRING_LIT,
		ID::LSSTRING_LIT,
		ID::LTSTRING_LIT,
		ID::LTSSTRING_LIT,
		ID::STRING_LIT,
		ID::SSTRING_LIT,

		ID::REGEXP_LIT,
		ID::SREGEXP_LIT,

		ID::SEQ_LIT,
		ID::MSET_LIT,
		ID::MMAP_LIT,
		ID::TUPLE_LIT,
	};

	return literalIds.find(id) != literalIds.end();
}

static Expr * createLiteral( const Token & t, std::vector<Expr *> & values, ID type )
{
	switch( type )
	{
	default:
		TODO
		break;

	case ID::SEQ_LIT:
		return new Literal<Vector>( t.line(), t.column(), Vector(std::move(values)) );

	case ID::MSET_LIT:
		return new Literal<MSet>( t.line(), t.column(), MSet(std::move(values)) );
	
	case ID::MMAP_LIT:
		TODO
		break;
	case ID::TUPLE_LIT:
		TODO
		break;
	}
}

static Expr * createLiteral( const Token & t )
{
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

	case ID::DATETIME_LIT:
		return new Literal<Datetime>(t.line(),t.column(), t.u128());
	case ID::DATE_LIT:
		return new Literal<Date>(t.line(),t.column(), t.u32());
	case ID::TIME_LIT:
		return new Literal<Time>(t.line(),t.column(), t.u64());

	case ID::YEARS_LIT:
		return new Literal<Year>(t.line(),t.column(), t.i32());
	case ID::MONTHS_LIT:
		return new Literal<Month>(t.line(),t.column(), t.i32());
	case ID::DAYS_LIT:
		return new Literal<Day>(t.line(),t.column(), t.i32());

	case ID::HOURS_LIT:
		return new Literal<Hour>(t.line(),t.column(), t.i32());
	case ID::MINS_LIT:
		return new Literal<Minute>(t.line(),t.column(), t.i32());
	case ID::SECS_LIT:
		return new Literal<Second>(t.line(),t.column(), t.f64());

	case ID::F32_LIT:
		return new Literal<Float32>(t.line(),t.column(), Float32(t.f32()));
	case ID::F64_LIT:
		return new Literal<Float64>(t.line(),t.column(), Float64(t.f64()));
	case ID::F80_LIT:
		return new Literal<Float80>(t.line(),t.column(), Float80(t.f80()));
	case ID::I32_LIT:
		return new Literal<Int32>(t.line(),t.column(), Int32(t.i32()));
	case ID::I64_LIT:
		return new Literal<Int64>(t.line(),t.column(), Int64(t.i64()));
	case ID::I128_LIT:
		return new Literal<Int128>(t.line(),t.column(), Int128(t.i128()));

	case ID::N_LIT:
		return new Literal<Integer *>(t.line(),t.column(), t.integer());

	case ID::STRING_LIT:
	case ID::SSTRING_LIT:
		return new Literal<String>(t.line(),t.column(), String(t.str()));
	case ID::LSTRING_LIT:
	case ID::LSSTRING_LIT:
		return new Literal<LString>(t.line(),t.column(), LString(t.str()));
	case ID::LTSTRING_LIT:
	case ID::LTSSTRING_LIT:
		return new Literal<LTString>(t.line(),t.column(), LTString(t.str()));

	case ID::CHAR_LIT:
		return new Literal<Char>(t.line(),t.column(), Char(t.str()[0]));

	case ID::SREGEXP_LIT:
	case ID::REGEXP_LIT:
		return new Literal<RegExp>(t.line(),t.column(), RegExp(t.str()));

	case ID::U32_LIT:
		return new Literal<Uint32>(t.line(),t.column(), Uint32(t.u32()));
	case ID::U64_LIT:
		return new Literal<Uint64>(t.line(),t.column(), Uint64(t.u64()));
	case ID::U128_LIT:
		return new Literal<Uint128>(t.line(),t.column(), Uint128(t.u128()));
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
		if( opStack.size() == 1 && opStack.top().id() == ID::COLON )
		{
			const Token & op = opStack.top();
			opStack.pop();
			Expr * right = exprStack.top();
			exprStack.pop();
			Expr * left = exprStack.top();
			exprStack.pop();

			*expr = new KeyValue( op.line(), op.column(), left, right );
		}
		else
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
		binarySeen,
		valueSeen,
		binSeen,
		vecLiteralBeginSeen,
		assocLiteralBeginSeen,
	} state = start;

	std::vector<Expr *>	seq;

	while(true)
	{
		switch( state )
		{
		default:
		{
			TODO
			break;

		case start:
			if( isLiteral( token.id() ))
			{
				Expr * lit = createLiteral( token );
				exprStack.push(lit);
				state = valueSeen;
			}
			else if( token.isId() )
			{
				Expr * name = new Name( token.line(), token.column(),  token.str() );
				exprStack.push(name);
				state = valueSeen;
			}
			else if( isPrefixOp( token.id() ))
			{
				ID prefixOp = mapPrefixOp( token.id() );
				state = uniarySeen;
			}
			else if( isBinaryOp( token.id() ) )
			{
				opStack.push(token);
				state = binarySeen;
			}
			else if( token.id() == ID::LBRACK )
			{
				// Vector literal
				state = vecLiteralBeginSeen;
			}
			else if( token.id() == ID::LBRACE )
			{
				// Associative collection literal
				state = assocLiteralBeginSeen;
			}
			else
			{
				dumpToken(token);
				TODO
			}
			break;
		}
		case vecLiteralBeginSeen:
		{
			Expr * ex;
			parseExpr( &ex, token );

			if( token.id() == ID::COMMA )
				seq.push_back(ex);
			else if( token.id() == ID::RBRACK )
			{
				state = valueSeen;
				Expr * vec = createLiteral(token, seq, ID::SEQ_LIT );
				exprStack.push(vec);
			}
			else
				TODO
			break;
		}
		case assocLiteralBeginSeen:
		{
			Expr * ex;
			parseExpr( &ex, token );

			if( token.id() == ID::COMMA )
			{
				seq.push_back(ex);
			}
			else if( token.id() == ID::RBRACE )
			{
				state = valueSeen;
				Expr * vec = createLiteral(token, seq, ID::MSET_LIT );
				exprStack.push(vec);
			}
			else
				TODO
			break;
		}
		case uniarySeen:
		{
			if( isLiteral( token.id() ))
			{
				Expr * lit = createLiteral( token );
				exprStack.push(lit);
				state = valueSeen;
			}
			else if( token.isId() )
			{
				Expr * name = new Name( token.line(), token.column(),  token.str() );
				exprStack.push(name);
				state = valueSeen;
			}
			else
				TODO
			break;
		}
		case binarySeen:
		{
			if( isLiteral( token.id() ))
			{
				Expr * lit = createLiteral( token );
				exprStack.push(lit);
				state = valueSeen;
			}
			else if( token.isId() )
			{
				Expr * name = new Name( token.line(), token.column(),  token.str() );
				exprStack.push(name);
				state = valueSeen;
			}
			else
				TODO
			break;
		}
		case valueSeen:
		{
			if( token.id() == ID::SCOLON)
			{
				return evalStacks( expr );
			}
			else if( token.id() == ID::COMMA)
			{
				return evalStacks( expr );
			}
			else if( token.id() == ID::RBRACK)
			{
				return evalStacks( expr );
			}
			else if( token.id() == ID::RBRACE)
			{
				return evalStacks( expr );
			}
			else if( token.id() == ID::COLON )
			{
				opStack.push(token);
				state = start;
			}
			else if( isBinaryOp( token.id() ) )
			{
				opStack.push(token);
				state = binarySeen;
			}
			else
			{
				TODO
			}
			break;
		}
		case binSeen:
		{
			TODO
			break;
		}
		}

		lex(token, this );	
	}

	return false;
}

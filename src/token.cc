#include "token.h"

#include <string.h>
#include <algorithm>


Keyword keyWords[] =
{
	{ ID::_E,           "_e" },
	{ ID::_GAMMA,       "_gamma" },
	{ ID::_I,           "_i" },
	{ ID::_INF,         "_inf" },
	{ ID::_NAN,         "_nan" },
	{ ID::_PHI,         "_phi" },
	{ ID::_PI,          "_pi" },

	{ ID::AUTO,         "auto" },
	{ ID::BOOL,         "bool" },
	{ ID::C,            "C" },
	{ ID::CHAR,         "char" },
	{ ID::DATE,         "date" },
	{ ID::DATETIME,     "datetime" },
	{ ID::DLIST,        "dlist" },
	{ ID::DQUEUE,       "dqueue" },
	{ ID::DURATION,     "duration" },
	{ ID::F32,          "f32" },
	{ ID::F64,          "f64" },
	{ ID::F80,          "f80" },
	{ ID::FALSE,        "false" },
	{ ID::GRAPH,        "graph" },
	{ ID::HEAP,         "heap" },
	{ ID::I0,           "i0" },
	{ ID::I1,           "i1" },
	{ ID::I2,           "i2" },
	{ ID::I3,           "i3" },
	{ ID::I4,           "i4" },
	{ ID::I5,           "i5" },
	{ ID::I6,           "i6" },
	{ ID::I7,           "i7" },
	{ ID::I8,           "i8" },
	{ ID::I9,           "i9" },
	{ ID::I10,          "i10" },
	{ ID::I11,          "i11" },
	{ ID::I12,          "i12" },
	{ ID::I13,          "i13" },
	{ ID::I14,          "i14" },
	{ ID::I15,          "i15" },
	{ ID::I16,          "i16" },
	{ ID::I17,          "i17" },
	{ ID::I18,          "i18" },
	{ ID::I19,          "i19" },
	{ ID::I20,          "i20" },
	{ ID::I21,          "i21" },
	{ ID::I22,          "i22" },
	{ ID::I23,          "i23" },
	{ ID::I24,          "i24" },
	{ ID::I25,          "i25" },
	{ ID::I26,          "i26" },
	{ ID::I27,          "i27" },
	{ ID::I28,          "i28" },
	{ ID::I29,          "i29" },
	{ ID::I30,          "i30" },
	{ ID::I31,          "i31" },
	{ ID::I32,          "i32" },
	{ ID::I64,          "i64" },
	{ ID::LIST,         "list" },
	{ ID::LSTRING,      "lstring" },
	{ ID::LTSTRING,     "ltstring" },
	{ ID::MAP,          "map" },
	{ ID::MMAP,         "mmap" },
	{ ID::MSET,         "mset" },
	{ ID::MUTEX,        "mutex" },
	{ ID::N,            "N" },
	{ ID::N0,           "n0" },
	{ ID::N1,           "n1" },
	{ ID::N2,           "n2" },
	{ ID::N3,           "n3" },
	{ ID::N4,           "n4" },
	{ ID::N5,           "n5" },
	{ ID::N6,           "n6" },
	{ ID::N7,           "n7" },
	{ ID::N8,           "n8" },
	{ ID::N9,           "n9" },
	{ ID::N10,          "n10" },
	{ ID::N11,          "n11" },
	{ ID::N12,          "n12" },
	{ ID::N13,          "n13" },
	{ ID::N14,          "n14" },
	{ ID::N15,          "n15" },
	{ ID::N16,          "n16" },
	{ ID::N17,          "n17" },
	{ ID::N18,          "n18" },
	{ ID::N19,          "n19" },
	{ ID::N20,          "n20" },
	{ ID::N21,          "n21" },
	{ ID::N22,          "n22" },
	{ ID::N23,          "n23" },
	{ ID::N24,          "n24" },
	{ ID::N25,          "n25" },
	{ ID::N26,          "n26" },
	{ ID::N27,          "n27" },
	{ ID::N28,          "n28" },
	{ ID::N29,          "n29" },
	{ ID::N30,          "n30" },
	{ ID::N31,          "n31" },
	{ ID::N32,          "n32" },
	{ ID::N64,          "n64" },
	{ ID::OBJECT,       "object" },
	{ ID::Q,            "Q" },
	{ ID::QUEUE,        "queue" },
	{ ID::R,            "R" },
	{ ID::REGEXP,       "regexp" },
	{ ID::SEMAPHORE,    "semaphore" },
	{ ID::STACK,        "stack" },
	{ ID::STRING,       "string" },
	{ ID::TRUE,         "true" },
	{ ID::U0,           "u0" },
	{ ID::U1,           "u1" },
	{ ID::U2,           "u2" },
	{ ID::U3,           "u3" },
	{ ID::U4,           "u4" },
	{ ID::U5,           "u5" },
	{ ID::U6,           "u6" },
	{ ID::U7,           "u7" },
	{ ID::U8,           "u8" },
	{ ID::U9,           "u9" },
	{ ID::U10,          "u10" },
	{ ID::U11,          "u11" },
	{ ID::U12,          "u12" },
	{ ID::U13,          "u13" },
	{ ID::U14,          "u14" },
	{ ID::U15,          "u15" },
	{ ID::U16,          "u16" },
	{ ID::U17,          "u17" },
	{ ID::U18,          "u18" },
	{ ID::U19,          "u19" },
	{ ID::U20,          "u20" },
	{ ID::U21,          "u21" },
	{ ID::U22,          "u22" },
	{ ID::U23,          "u23" },
	{ ID::U24,          "u24" },
	{ ID::U25,          "u25" },
	{ ID::U26,          "u26" },
	{ ID::U27,          "u27" },
	{ ID::U28,          "u28" },
	{ ID::U29,          "u29" },
	{ ID::U30,          "u30" },
	{ ID::U31,          "u31" },
	{ ID::U32,          "u32" },
	{ ID::U64,          "u64" },
	{ ID::SET,          "set" },
	{ ID::VOID,         "void" },
	{ ID::Z,            "Z" },
	{ ID::Z0,           "z0" },
	{ ID::Z1,           "z1" },
	{ ID::Z2,           "z2" },
	{ ID::Z3,           "z3" },
	{ ID::Z4,           "z4" },
	{ ID::Z5,           "z5" },
	{ ID::Z6,           "z6" },
	{ ID::Z7,           "z7" },
	{ ID::Z8,           "z8" },
	{ ID::Z9,           "z9" },
	{ ID::Z10,          "z10" },
	{ ID::Z11,          "z11" },
	{ ID::Z12,          "z12" },
	{ ID::Z13,          "z13" },
	{ ID::Z14,          "z14" },
	{ ID::Z15,          "z15" },
	{ ID::Z16,          "z16" },
	{ ID::Z17,          "z17" },
	{ ID::Z18,          "z18" },
	{ ID::Z19,          "z19" },
	{ ID::Z20,          "z20" },
	{ ID::Z21,          "z21" },
	{ ID::Z22,          "z22" },
	{ ID::Z23,          "z23" },
	{ ID::Z24,          "z24" },
	{ ID::Z25,          "z25" },
	{ ID::Z26,          "z26" },
	{ ID::Z27,          "z27" },
	{ ID::Z28,          "z28" },
	{ ID::Z29,          "z29" },
	{ ID::Z30,          "z30" },
	{ ID::Z31,          "z31" },
	{ ID::Z32,          "z32" },
	{ ID::Z64,          "z64" },
	{ ID::ATOMIC,       "atomic" },
	{ ID::FINAL,        "final" },
	{ ID::INLINE,       "inline" },
	{ ID::MUTABLE,      "mutable" },
	{ ID::PRIVATE,      "private" },
	{ ID::PUBLIC,       "public" },
	{ ID::PURE,         "pure" },
	{ ID::THREAD_LOCAL, "thread_local" },
	{ ID::CLASS,        "class" },
	{ ID::ENUM,         "enum" },
	{ ID::FUN,          "fun" },
	{ ID::INTERFACE,    "interface" },
	{ ID::RELATION,     "relation" },
	{ ID::UNION,        "union" },
	{ ID::ASSERT,       "assert" },
	{ ID::BREAK,        "break" },
	{ ID::CASE,         "case" },
	{ ID::CATCH,        "catch" },
	{ ID::CO_AWAIT,     "co_await" },
	{ ID::CONTINUE,     "continue" },
	{ ID::CO_RETURN,    "co_return" },
	{ ID::CO_YIELD,     "co_yield" },
	{ ID::DEFAULT,      "default" },
	{ ID::DO,           "do" },
	{ ID::ELSE,         "else" },
	{ ID::FOR,          "for" },
	{ ID::IF,           "if" },
	{ ID::IMPORT,       "import" },
	{ ID::NAMESPACE,    "namespace" },
	{ ID::RETURN,       "return" },
	{ ID::SWITCH,       "switch" },
	{ ID::THROW,        "throw" },
	{ ID::TRY,          "try" },
	{ ID::WHILE,        "while" },
	{ ID::ASYNC,        "async" },
	{ ID::ALIGNAS,      "alignas" },
	{ ID::ALIGNOF,      "alignof" },
	{ ID::DELETE,       "delete" },
	{ ID::EVAL,         "eval" },
	{ ID::IS_VOID,      "is_void" },
	{ ID::INSERT,       "insert" },
	{ ID::NEW,          "new" },
	{ ID::SELECT,       "select" },
	{ ID::SIZEOF,       "sizeof" },
	{ ID::TYPEID,       "typeid" },
	{ ID::UPDATE,       "update" },
	{ ID::TIME,         "time" },
	{ ID::TYPE,         "type" },
	{ ID::USING,        "using" },
	{ ID::VA_ARGS,      "va_args" },
};

unsigned noOfKeyWords = sizeof(keyWords)/sizeof(Keyword);

Token::Token( const Token & src ):
	line_(src.line_),
	column_(src.column_),
	id_(src.id_)
{
	if( src.id_ == ID::Z_LIT )
		integer_ = new Integer( *src.integer_ );
	else if(src.id_ == ID::ID || 
			src.id_ == ID::STRING_LIT || 
			src.id_ == ID::LSTRING_LIT || 
			src.id_ == ID::LTSTRING_LIT )
		lexium_ = new std::string(*src.lexium_);
	else
		strncpy( shortLex_, src.shortLex_, sizeof(__int128_t) );
}

Token::Token( Token && src ):
	line_(src.line_),
	column_(src.column_),
	id_(src.id_)
{
	if( src.id_ == ID::Z_LIT )
		integer_ = src.integer_;
	else if(src.id_ == ID::ID || 
			src.id_ == ID::STRING_LIT || 
			src.id_ == ID::LSTRING_LIT || 
			src.id_ == ID::LTSTRING_LIT )
		lexium_ = src.lexium_;
	else
		strncpy( shortLex_, src.shortLex_, sizeof(__int128_t) );
	src.id_ = ID::NIL;
}
Token & Token::operator = ( Token && in )
{
	if( this != &in )
	{
		line_ = in.line_;
		column_ = in.column_;

		if( in.id_ == ID::Z_LIT )
			integer_ = in.integer_;
		else if(in.id_ == ID::ID || 
			in.id_ == ID::STRING_LIT || 
			in.id_ == ID::LSTRING_LIT || 
			in.id_ == ID::LTSTRING_LIT )
			lexium_ = in.lexium_;
		else
			strncpy( shortLex_, in.shortLex_, sizeof(__int128_t) );
		in.id_ = ID::NIL;
	}

	return *this;
}

void Token::add( char c, int pos )
{
	if( pos < 16 )
		shortLex_[pos] = c;
	else if( pos == 16 )
	{
		id_ = ID::ID;
		std::string * newStr = new std::string();
TODO // copy over value
		lexium_ = newStr;	
	}
	else
		*lexium_ += c;
}

void Token::lexium( char c )
{
	id_ = ID::SID;
	memset( shortLex_, 0, sizeof(__uint128_t));

	shortLex_[sizeof(unsigned short)] = c;
}

Token::~Token()
{
	if( id_ == ID::Z_LIT)
		delete integer_;
	else if( id_ == ID::ID || id_ == ID::STRING_LIT || id_ == ID::LSTRING_LIT || id_ == ID::LTSTRING_LIT )
		delete lexium_;
}

#ifdef DEBUG_YYLEX

#include <sstream>

static std::string decimal_string( __int128 v )
{
	std::string ans;
	bool isNeg;

	if( v == 0 )
		return "0";

	if( v > 0 )
		isNeg = false;
	else
	{
		v = -v;
		isNeg = true;
	}

	while( v > 0 )
	{
		ans += v % 10 + '0';
		v /= 10;
	}

	std::reverse( ans.begin(), ans.end() );
	if( isNeg )
		ans = "-" + ans;

	return ans;
}

static std::string decimal_string( __uint128_t v )
{
	std::string ans;

	if( v == 0 )
		return "0";

	while( v > 0 )
	{
		ans += v % 10 + '0';
		v /= 10;
	}

	std::reverse( ans.begin(), ans.end() );

	return ans;
}

void dumpToken( const Token & token )
{
	std::stringstream ss;
	ss << token.line() << ":" << token.column() << " token=";

	switch(token.id())
	{
	default:
		ss << "unknown " << static_cast<unsigned>(token.id());    
		break;
	case ID::NOT:    		ss << "!";	break;
	case ID::WEAK:    		ss << "#";	break;
	case ID::MOD:     		ss << "%";	break;
	case ID::BAND:    		ss << "&";	break;
	case ID::LPAREN:  		ss << "(";	break;
	case ID::RPAREN:  		ss << ")";	break;
	case ID::MUL:     		ss << "*";	break;
	case ID::ADD:     		ss << "+";	break;
	case ID::COMMA:   		ss << ",";	break;
	case ID::SUB:     		ss << "-";	break;
	case ID::DOT:     		ss << ".";	break;
	case ID::DIV:     		ss << "/";	break;
	case ID::COLON:   		ss << ":";	break;
	case ID::SCOLON:  		ss << ";";	break;
	case ID::LT:      		ss << "<";	break;
	case ID::ASSIGN:  		ss << "=";	break;
	case ID::GT:      		ss << ">";	break;
	case ID::QUEST:   		ss << "?";	break;
	case ID::LBRACK:  		ss << "[";	break;
	case ID::BSLASH:  		ss << "\\";		break;
	case ID::RBRACK:  		ss << "]";	break;
	case ID::XOR:     		ss << "^";	break;
	case ID::LBRACE: 		ss << "{";	break;
	case ID::BOR:    		ss << "|";	break;
	case ID::RBRACE: 		ss << "}";	break;
	case ID::BNOT:   		ss << "~";	break;

	case ID::ADD_ASS: 		ss << "+=";	break;
	case ID::AND:			ss << "&&";   	break;
	case ID::AND_ASS:		ss << "&=";  	break;
    case ID::CP_ASS:   		ss << "[*]=";	break;
    case ID::CRS_PROD:		ss << "[*]";	break;
	case ID::DEC: 			ss << "--";   	break;
	case ID::DIV_ASS: 		ss << "/=";   	break;
	case ID::DOT_ASK: 		ss << ".*";	break;
	case ID::DOT_DOT: 		ss << "..";	break;
	case ID::DOT_DOT_DOT:	ss << "...";	break;
    case ID::DOT_PROD:  	ss << "[.]" ;	break;
    case ID::DP_ASS:    	ss << "[.]=";	break;
	case ID::EQ: 			ss << "==";	break;
	case ID::EXP: 			ss << "**";	break;
	case ID::EXP_ASS:   	ss << "**=";	break;
	case ID::FACTORIAL: 	ss << ".!";	break;
	case ID::GE: 			ss << ">=";	break;
	case ID::INC: 			ss << "++";	break;
	case ID::LE: 			ss << "<=";	break;
    case ID::M_DIV:      	ss << "[/]";	break;
    case ID::MD_ASS:     	ss << "[/]=";	break;
	case ID::MOD_ASS: 		ss << "%=";	break;
	case ID::MUL_ASS: 		ss << "*=";	break;
    case ID::M_EXP:      	ss << "[**]";	break;
    case ID::ME_ASS:     	ss << "[**]=";	break;
    case ID::MPTR:       	ss << "->*";	break;
	case ID::NE: 			ss << "!=";	break;
	case ID::OR: 			ss << "||";	break;
	case ID::OR_ASS: 		ss << "|=";	break;
    case ID::PARAM_ASS:  	ss << ":=";	break;
	case ID::POST_DEC: 		ss << ".--";	break;
	case ID::POST_INC:		ss << ".++";	break;
    case ID::PTR:        	ss << "->";	break;
    case ID::QUAL:       	ss << "::";	break;
	case ID::SLFT:			ss << "<<";	break;
	case ID::SLFT_ASS:		ss << "<<=";	break;
	case ID::SRGHT:			ss << ">>";	break;
	case ID::SRGHT_ASS:		ss << ">>=";	break;
    case ID::SS:         	ss << "<=>";	break;
	case ID::SUB_ASS: 		ss << "-=";	break;
    case ID::TIL_ASS:    	ss << "~=";	break;
	case ID::UNIARY_MINUS:	ss << "-.";	break;
	case ID::UNIARY_PLUS:	ss << "+.";	break;
	case ID::XOR_ASS:		ss << "^=";	break;

	case ID::AUTO:			ss << "auto";		break;

	case ID::BOOL:			ss << "bool";		break;

	case ID::C:        		ss << "C" ;		break;

	case ID::CHAR:      	ss << "char";		break;

	case ID::DATE:      	ss << "date";		break;
	case ID::DATETIME:  	ss << "datetime" ;	break;

	case ID::DLIST:     	ss << "dlist" ;	break;
	case ID::DQUEUE:    	ss << "dqueue" ;	break;
	case ID::DURATION:  	ss << "duration" ;	break;

	case ID::F32:   		ss << "f32";	break;
	case ID::F64:   		ss << "f64";	break;
	case ID::F80:   		ss << "f80";	break;

    case ID::GRAPH:			ss << "graph";		break;
    case ID::HEAP:			ss << "heap";		break;

	case ID::I0:			ss << "i0"; 	    break;
	case ID::I1:			ss << "i1"; 	    break;
	case ID::I2:			ss << "i2"; 	    break;
	case ID::I3:			ss << "i3"; 	    break;
	case ID::I4:			ss << "i4"; 	    break;
	case ID::I5:			ss << "i5"; 	    break;
	case ID::I6:			ss << "i6"; 	    break;
	case ID::I7:			ss << "i7"; 	    break;
	case ID::I8:			ss << "i8"; 	    break;
	case ID::I9:			ss << "i9"; 	    break;

	case ID::I10:			ss << "i10"; 	    break;
	case ID::I11:			ss << "i11"; 	    break;
	case ID::I12:			ss << "i12"; 	    break;
	case ID::I13:			ss << "i13"; 	    break;
	case ID::I14:			ss << "i14"; 	    break;
	case ID::I15:			ss << "i15"; 	    break;
	case ID::I16:			ss << "i16"; 	    break;
	case ID::I17:			ss << "i17"; 	    break;
	case ID::I18:			ss << "i18"; 	    break;
	case ID::I19:			ss << "i19"; 	    break;

	case ID::I20:			ss << "i20"; 	    break;
	case ID::I21:			ss << "i21"; 	    break;
	case ID::I22:			ss << "i22"; 	    break;
	case ID::I23:			ss << "i23"; 	    break;
	case ID::I24:			ss << "i24"; 	    break;
	case ID::I25:			ss << "i25"; 	    break;
	case ID::I26:			ss << "i26"; 	    break;
	case ID::I27:			ss << "i27"; 	    break;
	case ID::I28:			ss << "i28"; 	    break;
	case ID::I29:			ss << "i29"; 	    break;

	case ID::I30:			ss << "i30"; 	    break;
	case ID::I31:			ss << "i31"; 	    break;
	case ID::I32:			ss << "i32"; 	    break;

	case ID::I64:			ss << "i64"; 	    break;

	case ID::LIST:     	 	ss << "list";		break;

    case ID::LSTRING:		ss << "lstring";	break;
    case ID::LTSTRING:		ss << "ltstring";	break;

	case ID::MAP:			ss << "map";		break;
	case ID::MMAP:			ss << "mmap";		break;
	case ID::MSET:			ss << "mset";		break;
	case ID::MUTEX:			ss << "mutex";		break;

	case ID::N:				ss <<  "N";		break;

	case ID::N0:			ss << "n0"; 	    break;
	case ID::N1:			ss << "n1"; 	    break;
	case ID::N2:			ss << "n2"; 	    break;
	case ID::N3:			ss << "n3"; 	    break;
	case ID::N4:			ss << "n4"; 	    break;
	case ID::N5:			ss << "n5"; 	    break;
	case ID::N6:			ss << "n6"; 	    break;
	case ID::N7:			ss << "n7"; 	    break;
	case ID::N8:			ss << "n8"; 	    break;
	case ID::N9:			ss << "n9"; 	    break;

	case ID::N10:			ss << "n10"; 	    break;
	case ID::N11:			ss << "n11"; 	    break;
	case ID::N12:			ss << "n12"; 	    break;
	case ID::N13:			ss << "n13"; 	    break;
	case ID::N14:			ss << "n14"; 	    break;
	case ID::N15:			ss << "n15"; 	    break;
	case ID::N16:			ss << "n16"; 	    break;
	case ID::N17:			ss << "n17"; 	    break;
	case ID::N18:			ss << "n18"; 	    break;
	case ID::N19:			ss << "n19"; 	    break;

	case ID::N20:			ss << "n20"; 	    break;
	case ID::N21:			ss << "n21"; 	    break;
	case ID::N22:			ss << "n22"; 	    break;
	case ID::N23:			ss << "n23"; 	    break;
	case ID::N24:			ss << "n24"; 	    break;
	case ID::N25:			ss << "n25"; 	    break;
	case ID::N26:			ss << "n26"; 	    break;
	case ID::N27:			ss << "n27"; 	    break;
	case ID::N28:			ss << "n28"; 	    break;
	case ID::N29:			ss << "n29"; 	    break;

	case ID::N30:			ss << "n30"; 	    break;
	case ID::N31:			ss << "n31"; 	    break;
	case ID::N32:			ss << "n32"; 	    break;

	case ID::N64:			ss << "i64"; 	    break;

	case ID::OBJECT:		ss << "object";	break;

	case ID::Q:				ss << "Q"; 		break;
	case ID::QUEUE:			ss << "queue"; 	break;

	case ID::R:        	 	ss <<  "R";		break;
	case ID::REGEXP:    	ss <<  "regexp";	break;

    case ID::SEMAPHORE:		ss << "semaphore";	break;
	case ID::STACK:			ss << "stack"; 	break;
	case ID::STRING:		ss << "string";	break;

	case ID::U0:			ss << "u0"; 	    break;
	case ID::U1:			ss << "u1"; 	    break;
	case ID::U2:			ss << "u2"; 	    break;
	case ID::U3:			ss << "u3"; 	    break;
	case ID::U4:			ss << "u4"; 	    break;
	case ID::U5:			ss << "u5"; 	    break;
	case ID::U6:			ss << "u6"; 	    break;
	case ID::U7:			ss << "u7"; 	    break;
	case ID::U8:			ss << "u8"; 	    break;
	case ID::U9:			ss << "u9"; 	    break;

	case ID::U10:			ss << "u10"; 	    break;
	case ID::U11:			ss << "u11"; 	    break;
	case ID::U12:			ss << "u12"; 	    break;
	case ID::U13:			ss << "u13"; 	    break;
	case ID::U14:			ss << "u14"; 	    break;
	case ID::U15:			ss << "u15"; 	    break;
	case ID::U16:			ss << "u16"; 	    break;
	case ID::U17:			ss << "u17"; 	    break;
	case ID::U18:			ss << "u18"; 	    break;
	case ID::U19:			ss << "u19"; 	    break;

	case ID::U20:			ss << "u20"; 	    break;
	case ID::U21:			ss << "u21"; 	    break;
	case ID::U22:			ss << "u22"; 	    break;
	case ID::U23:			ss << "u23"; 	    break;
	case ID::U24:			ss << "u24"; 	    break;
	case ID::U25:			ss << "u25"; 	    break;
	case ID::U26:			ss << "u26"; 	    break;
	case ID::U27:			ss << "u27"; 	    break;
	case ID::U28:			ss << "u28"; 	    break;
	case ID::U29:			ss << "u29"; 	    break;

	case ID::U30:			ss << "u30"; 	    break;
	case ID::U31:			ss << "u31"; 	    break;
	case ID::U32:			ss << "u32"; 	    break;
	
	case ID::U64:			ss << "u64"; 	    break;

	case ID::SET:			ss << "set"; 		break;

	case ID::VOID:			ss << "void";		break;

	case ID::Z:				ss << "Z";			break;

	case ID::Z0:			ss << "z0"; 	    break;
	case ID::Z1:			ss << "z1"; 	    break;
	case ID::Z2:			ss << "z2"; 	    break;
	case ID::Z3:			ss << "z3"; 	    break;
	case ID::Z4:			ss << "z4"; 	    break;
	case ID::Z5:			ss << "z5"; 	    break;
	case ID::Z6:			ss << "z6"; 	    break;
	case ID::Z7:			ss << "z7"; 	    break;
	case ID::Z8:			ss << "z8"; 	    break;
	case ID::Z9:			ss << "z9"; 	    break;

	case ID::Z10:			ss << "z10"; 	    break;
	case ID::Z11:			ss << "z11"; 	    break;
	case ID::Z12:			ss << "z12"; 	    break;
	case ID::Z13:			ss << "z13"; 	    break;
	case ID::Z14:			ss << "z14"; 	    break;
	case ID::Z15:			ss << "z15"; 	    break;
	case ID::Z16:			ss << "z16"; 	    break;
	case ID::Z17:			ss << "z17"; 	    break;
	case ID::Z18:			ss << "z18"; 	    break;
	case ID::Z19:			ss << "z19"; 	    break;

	case ID::Z20:			ss << "z20"; 	    break;
	case ID::Z21:			ss << "z21"; 	    break;
	case ID::Z22:			ss << "z22"; 	    break;
	case ID::Z23:			ss << "z23"; 	    break;
	case ID::Z24:			ss << "z24"; 	    break;
	case ID::Z25:			ss << "z25"; 	    break;
	case ID::Z26:			ss << "z26"; 	    break;
	case ID::Z27:			ss << "z27"; 	    break;
	case ID::Z28:			ss << "z28"; 	    break;
	case ID::Z29:			ss << "z29"; 	    break;
	
	case ID::Z30:			ss << "z30"; 	    break;
	case ID::Z31:			ss << "z31"; 	    break;
	case ID::Z32:			ss << "z32"; 	    break;

	case ID::Z64:			ss << "z64"; 	    break;

	case ID::ATOMIC:		ss << "atomic";	break;

	case ID::FINAL:    		ss << "final";		break;
	case ID::INLINE:    	ss << "inline" ;	break;
	case ID::MUTABLE:   	ss <<  "mutable";	break;
	case ID::PRIVATE:		ss << "private";	break;
	case ID::PUBLIC:		ss << "public";	break;
    case ID::PURE:
	case ID::THREAD_LOCAL:	ss << "thread_local"; break;

	case ID::AS:        	ss << "as";		break;
	case ID::ASC:       	ss << "asc";		break;

	case ID::BY:        	ss << "by";		break;

    case ID::CLOSURE:		ss << "closure";	break;

    case ID::DISTINCT: 		ss << "distinct";	break;
	case ID::DSC:			ss << "dsc";		break;

	case ID::FOREIGN:		ss << "foreign";	break;
	case ID::FROM:			ss << "from";		break;

	case ID::GROUP:			ss << "group";		break;

	case ID::HAVING:		ss << "having";	break;

	case ID::INTO:			ss << "into"  ;	break;      

	case ID::JOIN:      	ss << "join";		break;

	case ID::LEFT:      	ss << "left";		break;

	case ID::ORDER:			ss << "order";		break;
	case ID::OUTER:			ss << "outer";		break;

    case ID::PERCENT:   	ss << "percent";	break;

	case ID::RIGHT:     	ss <<  "right";	break;

    case ID::TIES: 			ss << "ties";		break;
    case ID::TOP:  			ss << "top";		break;

    case ID::UNIQUE:		ss << "unique";	break;

    case ID::VALUES:   		ss << "values";	break;

	case ID::WHERE:			ss << "where";		break;
    case ID::WITH:       
	case ID::FINAL_FUNC:	ss << "final-func";break;
	case ID::IMPLICIT:		ss << "implicit";	break;
	case ID::OVERRIDE:		ss << "override";	break;
	case ID::NOEXCEPT:  	ss <<  "noexcept";	break;

	case ID::CLASS_NAME:	ss << "class-name:" << token.idLexium();	break;
	case ID::ENUM_NAME:		ss << "enum-name:" << token.idLexium();	break;
	case ID::INTERFACE_NAME:ss << "interface-name:" << token.idLexium();break;
	case ID::RELATION_NAME:	ss << "relation-name:"<< token.idLexium();break;
	case ID::UNION_NAME:	ss << "union-name:" 	<< token.idLexium();break;
	case ID::TYPE_NAME: 	ss << "type-name:" 	<< token.idLexium();break;

    case ID::FUN_NAME:
	case ID::FUNCTION_NAME:	ss << "func-name:" 	<< token.idLexium();break;
	case ID::NAMESPACE_NAME:ss << "ns-name:" 		<< token.idLexium();break;
	case ID::VARIABLE_NAME:	ss << "var-name:"		<< token.idLexium();break;
	case ID::ID:
	case ID::SID:				
							ss << "id:" 		    << token.idLexium();break;

	case ID::UNKOWN_NAME:	ss << "unknown-name:" << token.idLexium();break;

	case ID::_E:			ss << "_e"; 		break;
	case ID::FALSE:			ss << "false"; 		break;
    case ID::_GAMMA:     	ss << "_gamma";		break;
    case ID::_I:         	ss << "_i";			break;
    case ID::_INF:       	ss << "_inf";		break;
    case ID::_NAN:       	ss << "_nan";		break;
    case ID::_PHI:       	ss << "_phi";		break;
	case ID::_PI:			ss << "_pi"; 		break;
	case ID::TRUE:			ss << "true"; 		break;
	case ID::THIS:      	ss << "this"; 		break;
	case ID::CHAR_LIT:     	ss << "char-lit:";	break;
	case ID::DAYS_LIT:     	ss << "days-lit:";	break;
	case ID::HOURS_LIT:    	ss << "hours-lit:";	break;

	case ID::LSTRING_LIT:  	ss << "lsstring-lit:";	break;
	case ID::LSSTRING_LIT: 	ss << "lstring-lit:";	break;

	case ID::LTSTRING_LIT: 	ss << "ltstring-lit:";break;
	case ID::LTSSTRING_LIT:	ss << "ltsstring-lit:";break;

	case ID::MINS_LIT:     	ss << "mins_lit:";	break;
	case ID::SECS_LIT:     	ss << "sec-lit:";		break;
	case ID::YEARS_LIT:    	ss << "years-lit:";	break;

	case ID::DATE_LIT:		ss << "date: " 					;break;
	case ID::DATETIME_LIT:	ss << "datetime: " 				;break;

	case ID::F32_LIT: 		ss << "f32:" << token.f32();break;
	case ID::F64_LIT: 		ss << "f64:" << token.f64();break;
	case ID::F80_LIT: 		ss << "f80:" << token.f80();break;

	case ID::I32_LIT: 		ss << "i32:" << token.i32() ;break;
	case ID::I64_LIT: 		ss << "i64:" << token.i64() ;break;
	case ID::I128_LIT: 		ss << "i128:" << decimal_string(token.i128()); break;

	case ID::N_LIT:      	ss << "N-lit:";		break;
	case ID::Z_LIT:			ss << "Z:" 					  ;break;
	case ID::Q_LIT:        	ss << "Q-lit:";		break;
	case ID::R_LIT:			ss << "R:" 					  ;break;
	case ID::C_LIT:			ss << "C:" 					  ;break;

	case ID::REGEXP_LIT:	ss << "re:" 				  ;break;

	case ID::STRING_LIT:	ss << "str:"  << token.str();break;
	case ID::SSTRING_LIT:	ss << "sstr:" << token.str();break;

	case ID::TIME_LIT:		ss << "time: " 				  ;break;
	case ID::U32_LIT:		ss << "u32:" << token.u32()  ;break;
	case ID::U64_LIT:		ss << "u64:" << token.u64() ;break;
	case ID::U128_LIT:		ss << "u128:" << decimal_string(token.u128()); break;

    case ID::CLASS:			ss << "class";		break;
	case ID::ENUM:     		ss << "enum";		break;
	case ID::FUN:			ss << "fun";		break;
    case ID::INTERFACE:		ss << "interface";	break;
    case ID::RELATION:		ss << "relation";	break;
	case ID::UNION:			ss << "union";		break;

    case ID::EXTEND:		ss << "extend";	break;
    case ID::IMPLEMENT:		ss << "implement";	break;
	case ID::INDEX:			ss << "index";		break;
	case ID::KEY:       	ss << "key";		break;

    case ID::ASSERT:		ss << "assert";	break;
	case ID::BREAK:			ss << "break";		break;
	case ID::CASE:			ss << "case" ;		break;
	case ID::CATCH:     	ss << "catch";		break;
    case ID::CO_AWAIT:		ss << "co_await";	break;
	case ID::CONTINUE:		ss << "continue";	break;
    case ID::CO_RETURN:		ss << "co_return";	break;
    case ID::CO_YIELD:		ss << "co_yield";	break;
	case ID::DEFAULT:		ss << "default";	break;
	case ID::DO:        	ss << "do" ;		break;
	case ID::ELSE:			ss << "else"; 		break;
	case ID::FOR:			ss << "for"; 		break;
	case ID::IF:			ss << "if"; 		break;
    case ID::IMPORT:		ss << "import";	break;
	case ID::NAMESPACE: 	ss << "namespace";	break;
	case ID::RETURN:		ss << "return";	break;
	case ID::SWITCH:		ss << "switch";	break;
	case ID::THROW:     	ss << "throw"; 	break;
	case ID::TRY:       	ss << "try"; 		break;
	case ID::WHILE:			ss << "while";		break;

    case ID::ASYNC:			ss << "async";		break;
	case ID::ALIGNAS:		ss << "alignas";	break;
	case ID::ALIGNOF:		ss << "alignof";	break;
    case ID::DELETE:		ss << "delete";	break;
    case ID::EVAL:			ss << "eval";		break;
	case ID::IN:        	ss << "in" ;		break;
	case ID::IS_VOID: 		ss << "is_void"; 	break;
    case ID::INSERT:		ss << "insert";	break;
	case ID::NEW:			ss << "new";		break;
	case ID::SELECT:		ss << "select"; 	break;
	case ID::SIZEOF:    	ss << "sizeof";	break;
	case ID::TYPEID:    	ss << "typeid"; 	break;
    case ID::UPDATE:		ss << "update";	break;

	case ID::TIME:      	ss << "time"; 		break;
	case ID::TYPE:      	ss << "type"; 		break;

	case ID::USING:			ss << "using";		break;
	case ID::VA_ARGS:		ss << "va_args";	break;

	case ID::INVALID_NUMBER:ss << "inv num:" << token.idLexium();break;
	case ID::INVALID_STRING:ss << "inv str:" << token.idLexium();break;
	}

	printf( "%s\n", ss.str().c_str() );
	fflush(stdout);
}

#endif

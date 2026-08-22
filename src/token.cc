#include "token.h"

#include <string.h>


Keyword keyWords[] =
{
	{ id2ui(AUTO),         "auto" },
	{ id2ui(BOOL),         "bool" },
	{ id2ui(C),            "C" },
	{ id2ui(CHAR),         "char" },
	{ id2ui(DATE),         "date" },
	{ id2ui(DATETIME),     "datetime" },
	{ id2ui(DLIST),        "dlist" },
	{ id2ui(DQUEUE),       "dqueue" },
	{ id2ui(DURATION),     "duration" },
	{ id2ui(FLOAT32),      "float32" },
	{ id2ui(FLOAT64),      "float64" },
	{ id2ui(FLOAT80),      "float80" },
	{ id2ui(GRAPH),        "graph" },
	{ id2ui(HEAP),         "heap" },
	{ id2ui(I0),           "i0" },
	{ id2ui(I1),           "i1" },
	{ id2ui(I2),           "i2" },
	{ id2ui(I3),           "i3" },
	{ id2ui(I4),           "i4" },
	{ id2ui(I5),           "i5" },
	{ id2ui(I6),           "i6" },
	{ id2ui(I7),           "i7" },
	{ id2ui(I8),           "i8" },
	{ id2ui(I9),           "i9" },
	{ id2ui(I10),          "i10" },
	{ id2ui(I11),          "i11" },
	{ id2ui(I12),          "i12" },
	{ id2ui(I13),          "i13" },
	{ id2ui(I14),          "i14" },
	{ id2ui(I15),          "i15" },
	{ id2ui(I16),          "i16" },
	{ id2ui(I17),          "i17" },
	{ id2ui(I18),          "i18" },
	{ id2ui(I19),          "i19" },
	{ id2ui(I20),          "i20" },
	{ id2ui(I21),          "i21" },
	{ id2ui(I22),          "i22" },
	{ id2ui(I23),          "i23" },
	{ id2ui(I24),          "i24" },
	{ id2ui(I25),          "i25" },
	{ id2ui(I26),          "i26" },
	{ id2ui(I27),          "i27" },
	{ id2ui(I28),          "i28" },
	{ id2ui(I29),          "i29" },
	{ id2ui(I30),          "i30" },
	{ id2ui(I31),          "i31" },
	{ id2ui(I32),          "i32" },
	{ id2ui(I64),          "i64" },
	{ id2ui(LIST),         "list" },
	{ id2ui(LSTRING),      "lstring" },
	{ id2ui(LTSTRING),     "ltstring" },
	{ id2ui(MAP),          "map" },
	{ id2ui(MMAP),         "mmap" },
	{ id2ui(MSET),         "mset" },
	{ id2ui(MUTEX),        "mutex" },
	{ id2ui(N),            "N" },
	{ id2ui(N0),           "n0" },
	{ id2ui(N1),           "n1" },
	{ id2ui(N2),           "n2" },
	{ id2ui(N3),           "n3" },
	{ id2ui(N4),           "n4" },
	{ id2ui(N5),           "n5" },
	{ id2ui(N6),           "n6" },
	{ id2ui(N7),           "n7" },
	{ id2ui(N8),           "n8" },
	{ id2ui(N9),           "n9" },
	{ id2ui(N10),          "n10" },
	{ id2ui(N11),          "n11" },
	{ id2ui(N12),          "n12" },
	{ id2ui(N13),          "n13" },
	{ id2ui(N14),          "n14" },
	{ id2ui(N15),          "n15" },
	{ id2ui(N16),          "n16" },
	{ id2ui(N17),          "n17" },
	{ id2ui(N18),          "n18" },
	{ id2ui(N19),          "n19" },
	{ id2ui(N20),          "n20" },
	{ id2ui(N21),          "n21" },
	{ id2ui(N22),          "n22" },
	{ id2ui(N23),          "n23" },
	{ id2ui(N24),          "n24" },
	{ id2ui(N25),          "n25" },
	{ id2ui(N26),          "n26" },
	{ id2ui(N27),          "n27" },
	{ id2ui(N28),          "n28" },
	{ id2ui(N29),          "n29" },
	{ id2ui(N30),          "n30" },
	{ id2ui(N31),          "n31" },
	{ id2ui(N32),          "n32" },
	{ id2ui(N64),          "n64" },
	{ id2ui(OBJECT),       "object" },
	{ id2ui(Q),            "Q" },
	{ id2ui(QUEUE),        "queue" },
	{ id2ui(R),            "R" },
	{ id2ui(REGEXP),       "regexp" },
	{ id2ui(SEMAPHORE),    "semaphore" },
	{ id2ui(STACK),        "stack" },
	{ id2ui(STRING),       "string" },
	{ id2ui(U0),           "u0" },
	{ id2ui(U1),           "u1" },
	{ id2ui(U2),           "u2" },
	{ id2ui(U3),           "u3" },
	{ id2ui(U4),           "u4" },
	{ id2ui(U5),           "u5" },
	{ id2ui(U6),           "u6" },
	{ id2ui(U7),           "u7" },
	{ id2ui(U8),           "u8" },
	{ id2ui(U9),           "u9" },
	{ id2ui(U10),          "u10" },
	{ id2ui(U11),          "u11" },
	{ id2ui(U12),          "u12" },
	{ id2ui(U13),          "u13" },
	{ id2ui(U14),          "u14" },
	{ id2ui(U15),          "u15" },
	{ id2ui(U16),          "u16" },
	{ id2ui(U17),          "u17" },
	{ id2ui(U18),          "u18" },
	{ id2ui(U19),          "u19" },
	{ id2ui(U20),          "u20" },
	{ id2ui(U21),          "u21" },
	{ id2ui(U22),          "u22" },
	{ id2ui(U23),          "u23" },
	{ id2ui(U24),          "u24" },
	{ id2ui(U25),          "u25" },
	{ id2ui(U26),          "u26" },
	{ id2ui(U27),          "u27" },
	{ id2ui(U28),          "u28" },
	{ id2ui(U29),          "u29" },
	{ id2ui(U30),          "u30" },
	{ id2ui(U31),          "u31" },
	{ id2ui(U32),          "u32" },
	{ id2ui(U64),          "u64" },
	{ id2ui(SET),          "set" },
	{ id2ui(VOID),         "void" },
	{ id2ui(Z),            "Z" },
	{ id2ui(Z0),           "z0" },
	{ id2ui(Z1),           "z1" },
	{ id2ui(Z2),           "z2" },
	{ id2ui(Z3),           "z3" },
	{ id2ui(Z4),           "z4" },
	{ id2ui(Z5),           "z5" },
	{ id2ui(Z6),           "z6" },
	{ id2ui(Z7),           "z7" },
	{ id2ui(Z8),           "z8" },
	{ id2ui(Z9),           "z9" },
	{ id2ui(Z10),          "z10" },
	{ id2ui(Z11),          "z11" },
	{ id2ui(Z12),          "z12" },
	{ id2ui(Z13),          "z13" },
	{ id2ui(Z14),          "z14" },
	{ id2ui(Z15),          "z15" },
	{ id2ui(Z16),          "z16" },
	{ id2ui(Z17),          "z17" },
	{ id2ui(Z18),          "z18" },
	{ id2ui(Z19),          "z19" },
	{ id2ui(Z20),          "z20" },
	{ id2ui(Z21),          "z21" },
	{ id2ui(Z22),          "z22" },
	{ id2ui(Z23),          "z23" },
	{ id2ui(Z24),          "z24" },
	{ id2ui(Z25),          "z25" },
	{ id2ui(Z26),          "z26" },
	{ id2ui(Z27),          "z27" },
	{ id2ui(Z28),          "z28" },
	{ id2ui(Z29),          "z29" },
	{ id2ui(Z30),          "z30" },
	{ id2ui(Z31),          "z31" },
	{ id2ui(Z32),          "z32" },
	{ id2ui(Z64),          "z64" },
	{ id2ui(ATOMIC),       "atomic" },
	{ id2ui(FINAL),        "final" },
	{ id2ui(INLINE),       "inline" },
	{ id2ui(MUTABLE),      "mutable" },
	{ id2ui(PRIVATE),      "private" },
	{ id2ui(PUBLIC),       "public" },
	{ id2ui(PURE),         "pure" },
	{ id2ui(THREAD_LOCAL), "thread_local" },
	{ id2ui(CLASS),        "class" },
	{ id2ui(ENUM),         "enum" },
	{ id2ui(FUN),          "fun" },
	{ id2ui(INTERFACE),    "interface" },
	{ id2ui(RELATION),     "relation" },
	{ id2ui(UNION),        "union" },
	{ id2ui(ASSERT),       "assert" },
	{ id2ui(BREAK),        "break" },
	{ id2ui(CASE),         "case" },
	{ id2ui(CATCH),        "catch" },
	{ id2ui(CO_AWAIT),     "co_await" },
	{ id2ui(CONTINUE),     "continue" },
	{ id2ui(CO_RETURN),    "co_return" },
	{ id2ui(CO_YIELD),     "co_yield" },
	{ id2ui(DEFAULT),      "default" },
	{ id2ui(DO),           "do" },
	{ id2ui(ELSE),         "else" },
	{ id2ui(FOR),          "for" },
	{ id2ui(IF),           "if" },
	{ id2ui(IMPORT),       "import" },
	{ id2ui(NAMESPACE),    "namespace" },
	{ id2ui(RETURN),       "return" },
	{ id2ui(SWITCH),       "switch" },
	{ id2ui(THROW),        "throw" },
	{ id2ui(TRY),          "try" },
	{ id2ui(WHILE),        "while" },
	{ id2ui(APPLY),        "apply" },
	{ id2ui(ASYNC),        "async" },
	{ id2ui(ALIGNAS),      "alignas" },
	{ id2ui(ALIGNOF),      "alignof" },
	{ id2ui(DELETE),       "delete" },
	{ id2ui(EVAL),         "eval" },
	{ id2ui(FILTER),       "filter" },
	{ id2ui(IN),           "in" },
	{ id2ui(IS_VOID),      "is_void" },
	{ id2ui(INSERT),       "insert" },
	{ id2ui(NEW),          "new" },
	{ id2ui(REDUCE),       "reduce" },
	{ id2ui(SELECT),       "select" },
	{ id2ui(SIZEOF),       "sizeof" },
	{ id2ui(TYPEID),       "typeid" },
	{ id2ui(UPDATE),       "update" },
	{ id2ui(TIME),         "time" },
	{ id2ui(TYPE),         "type" },
	{ id2ui(USING),        "using" },
	{ id2ui(VA_ARGS),      "va_args" },
};

unsigned noOfKeyWords = sizeof(keyWords)/sizeof(Keyword);

Token::Token( const Token & src ):
	line(src.line),
	column(src.column),
	id(src.id)
{
	static_assert( sizeof(long double) > sizeof(Datetime) );

	if( src.id == id2ui(INTEGER_LIT) )
		value.integer = new Integer( *src.value.integer );
	else if( src.id == id2ui(STRING_LIT) || src.id == id2ui(LSTRING_LIT) || src.id == id2ui(LTSTRING_LIT) )
	{
		if( src.lexium_ != src.value.shortLex )
		{
			lexium_ = new char[strlen(src.lexium_)+1];
			strcpy( lexium_, src.lexium_ );
		}
		else
			strcpy( value.shortLex, src.value.shortLex );
	}
	else
		strncpy( value.shortLex, src.value.shortLex, valueSize );
}

void Token::add( char c )
{
	unsigned short * lptr = reinterpret_cast<unsigned short *>(lexium_);

	if( *lptr < (sizeof(__uint128_t)-sizeof(unsigned short)-1))
	{
		value.shortLex[sizeof(unsigned short) + *lptr] = c;
		++*lptr;
	}
	else
	{
		// If this is the boarder case
		if( *lptr == (sizeof(__uint128_t)-sizeof(unsigned short)-1))
		{
			// u16 holds the array length;
			lexium_ = new char[2*sizeof(__uint128_t)];

			strncpy( lexium_, value.shortLex, *lptr );
			memset( lexium_ + sizeof(__uint128_t), 0, sizeof(__uint128_t));

			lptr = reinterpret_cast<unsigned short *>(lexium_);
			*lptr = sizeof(__uint128_t)-sizeof(unsigned short);

			value.u16 = 2*sizeof(__uint128_t);
		}
		// else if the dynamic buffer is full
		else if( value.u16 == (*lptr + sizeof(unsigned short)-1))
		{
			lptr = reinterpret_cast<unsigned short *>(lexium_);

			char * newBuff = new char[value.u16 + sizeof(__uint128_t)];
			strncpy( newBuff+sizeof(unsigned short), value.shortLex, *lptr );
			memset( lexium_ + sizeof(unsigned short) + *lptr, 0, sizeof(__uint128_t));

			delete [] lexium_;

			value.u16 += sizeof(__uint128_t);

			lexium_ = newBuff;
			lptr = reinterpret_cast<unsigned short *>(lexium_);
		}
		lexium_[*lptr++] = c;
	}
printf( "%s:%d lex %s\n", __FILE__, __LINE__, lexium() );
}

void Token::lexium( char c )
{
	id = id2ui(ID);
	lexium_ = value.shortLex;
	memset( value.shortLex, 0, sizeof(__uint128_t));

	unsigned short * lptr = reinterpret_cast<unsigned short *>(lexium_);
	*lptr = 1;
	lexium_[sizeof(unsigned short)] = c;
printf( "%s:%d lex %s\n", __FILE__, __LINE__, lexium() );
}

Token::~Token()
{
	if( id == id2ui(INTEGER_LIT) )
		delete value.integer;
	else if( ( id == id2ui(STRING_LIT) || id == id2ui(LSTRING_LIT) || id == id2ui(LTSTRING_LIT) ) && 
	lexium_ != value.shortLex )
		delete lexium_;
}

#ifdef DEBUG_YYLEX

#include <sstream>

using namespace std;

void dumpToken( Token & token )
{
	std::stringstream ss;
	ss << "token=";

	switch(token.id)
	{
	case id2ui(NOT):    	ss << "!"	<< endl;	break;
	case id2ui(WEAK):    	ss << "#"	<< endl;	break;
	case id2ui(MOD):     	ss << "%"	<< endl;	break;
	case id2ui(BAND):    	ss << "&"	<< endl;	break;
	case id2ui(QUOT):    	ss << "'"	<< endl;	break;
	case id2ui(LPAREN):  	ss << "("	<< endl;	break;
	case id2ui(RPAREN):  	ss << ")"	<< endl;	break;
	case id2ui(MUL):     	ss << "*"	<< endl;	break;
	case id2ui(ADD):     	ss << "+"	<< endl;	break;
	case id2ui(COMMA):   	ss << ","	<< endl;	break;
	case id2ui(SUB):     	ss << "-"	<< endl;	break;
	case id2ui(DOT):     	ss << "."	<< endl;	break;
	case id2ui(DIV):     	ss << "/"	<< endl;	break;
	case id2ui(COLON):   	ss << ":"	<< endl;	break;
	case id2ui(SCOLON):  	ss << ";"	<< endl;	break;
	case id2ui(LT):      	ss << "<"	<< endl;	break;
	case id2ui(ASSIGN):  	ss << "="	<< endl;	break;
	case id2ui(GT):      	ss << ">"	<< endl;	break;
	case id2ui(QUEST):   	ss << "?"	<< endl;	break;
	case id2ui(LBRACK):  	ss << "["	<< endl;	break;
	case id2ui(BSLASH):  	ss << "\\"<< endl;	break;
	case id2ui(RBRACK):  	ss << "]"	<< endl;	break;
	case id2ui(XOR):     	ss << "^"	<< endl;	break;
	case id2ui(LBRACE): 	ss << "{"	<< endl;	break;
	case id2ui(BOR):    	ss << "|"	<< endl;	break;
	case id2ui(RBRACE): 	ss << "}"	<< endl;	break;
	case id2ui(BNOT):   	ss << "~"	<< endl;	break;

	case id2ui(ADD_ASS): 	ss << "+=" << endl;	break;
	case id2ui(AND):		ss << "&&" << endl;   break;
	case id2ui(AND_ASS):	ss << "&=" << endl;  	break;
    case id2ui(CP_ASS):     ss << "[*]=" << endl;	break;
    case id2ui(CRS_PROD):   ss << "[*]" << endl;	break;
	case id2ui(DEC): 		ss << "--" << endl;   break;
	case id2ui(DIV_ASS): 	ss << "/=" << endl;   break;
	case id2ui(DOT_ASK): 	ss << ".*" << endl;	break;
	case id2ui(DOT_DOT): 	ss << ".." << endl;	break;
	case id2ui(DOT_DOT_DOT):ss << "..." << endl;	break;
    case id2ui(DOT_PROD):  	ss << "[.]"  << endl;	break;
    case id2ui(DP_ASS):    	ss << "[.]=" << endl;	break;
	case id2ui(EQ): 		ss << "==" << endl;	break;
	case id2ui(EXP): 		ss << "**" << endl;	break;
	case id2ui(EXP_ASS):   	ss << "**=" << endl;	break;
	case id2ui(FACTORIAL): 	ss << ".!" << endl;	break;
	case id2ui(GE): 		ss << ">=" << endl;	break;
	case id2ui(INC): 		ss << "++" << endl;	break;
	case id2ui(LE): 		ss << "<=" << endl;	break;
    case id2ui(M_DIV):      ss << "[/]" << endl;	break;
    case id2ui(MD_ASS):     ss << "[/]=" << endl;	break;
	case id2ui(MOD_ASS): 	ss << "%=" << endl;	break;
	case id2ui(MUL_ASS): 	ss << "*=" << endl;	break;
    case id2ui(M_EXP):      ss << "[**]" << endl;	break;
    case id2ui(ME_ASS):     ss << "[**]=" << endl;break;
    case id2ui(MPTR):       ss << "->*" << endl;	break;
	case id2ui(NE): 		ss << "!=" << endl;	break;
	case id2ui(OR): 		ss << "||" << endl;	break;
	case id2ui(OR_ASS): 	ss << "|=" << endl;	break;
    case id2ui(PARAM_ASS):  ss << ":=" << endl;	break;
	case id2ui(POST_DEC): 	ss << ".--" << endl;	break;
	case id2ui(POST_INC):	ss << ".++" << endl;	break;
    case id2ui(PTR):        ss << "->" << endl;	break;
    case id2ui(QUAL):       ss << "::" << endl;	break;
	case id2ui(SLFT):		ss << "<<" << endl;	break;
	case id2ui(SLFT_ASS):	ss << "<<=" << endl;	break;
	case id2ui(SRGHT):		ss << ">>" << endl;	break;
	case id2ui(SRGHT_ASS):	ss << ">>=" << endl;	break;
    case id2ui(SS):         ss << "<=>" << endl;	break;
	case id2ui(SUB_ASS): 	ss << "-=" << endl;	break;
    case id2ui(TIL_ASS):    ss << "~=" << endl;	break;
	case id2ui(UNIARY_MINUS):ss << "-." << endl;	break;
	case id2ui(UNIARY_PLUS):ss << "+." << endl;	break;
	case id2ui(XOR_ASS):	ss << "^=" << endl;	break;

	case id2ui(AUTO):		ss << "auto" << endl;		break;

	case id2ui(BOOL):		ss << "bool" << endl;		break;

	case id2ui(C):        	ss << "C"  << endl;		break;

	case id2ui(CHAR):      	ss << "char" << endl;		break;

	case id2ui(DATE):      ss << "date" << endl;		break;
	case id2ui(DATETIME):  ss << "datetime"  << endl;break;

	case id2ui(DLIST):     ss << "dlist"  << endl;	break;
	case id2ui(DQUEUE):    ss << "dqueue"  << endl;	break;
	case id2ui(DURATION):  ss << "duration"  << endl;break;

	case id2ui(FLOAT32):   ss << "float32" << endl;	break;
	case id2ui(FLOAT64):   ss << "float64" << endl;	break;
	case id2ui(FLOAT80):   ss << "float80" << endl;	break;

    case id2ui(GRAPH):		ss << "graph" << endl;	break;
    case id2ui(HEAP):		ss << "heap" << endl;		break;

	case id2ui(I0):		ss << "i0" << endl; 	    break;
	case id2ui(I1):		ss << "i1" << endl; 	    break;
	case id2ui(I2):		ss << "i2" << endl; 	    break;
	case id2ui(I3):		ss << "i3" << endl; 	    break;
	case id2ui(I4):		ss << "i4" << endl; 	    break;
	case id2ui(I5):		ss << "i5" << endl; 	    break;
	case id2ui(I6):		ss << "i6" << endl; 	    break;
	case id2ui(I7):		ss << "i7" << endl; 	    break;
	case id2ui(I8):		ss << "i8" << endl; 	    break;
	case id2ui(I9):		ss << "i9" << endl; 	    break;

	case id2ui(I10):		ss << "i10" << endl; 	    break;
	case id2ui(I11):		ss << "i11" << endl; 	    break;
	case id2ui(I12):		ss << "i12" << endl; 	    break;
	case id2ui(I13):		ss << "i13" << endl; 	    break;
	case id2ui(I14):		ss << "i14" << endl; 	    break;
	case id2ui(I15):		ss << "i15" << endl; 	    break;
	case id2ui(I16):		ss << "i16" << endl; 	    break;
	case id2ui(I17):		ss << "i17" << endl; 	    break;
	case id2ui(I18):		ss << "i18" << endl; 	    break;
	case id2ui(I19):		ss << "i19" << endl; 	    break;

	case id2ui(I20):		ss << "i20" << endl; 	    break;
	case id2ui(I21):		ss << "i21" << endl; 	    break;
	case id2ui(I22):		ss << "i22" << endl; 	    break;
	case id2ui(I23):		ss << "i23" << endl; 	    break;
	case id2ui(I24):		ss << "i24" << endl; 	    break;
	case id2ui(I25):		ss << "i25" << endl; 	    break;
	case id2ui(I26):		ss << "i26" << endl; 	    break;
	case id2ui(I27):		ss << "i27" << endl; 	    break;
	case id2ui(I28):		ss << "i28" << endl; 	    break;
	case id2ui(I29):		ss << "i29" << endl; 	    break;

	case id2ui(I30):		ss << "i30" << endl; 	    break;
	case id2ui(I31):		ss << "i31" << endl; 	    break;
	case id2ui(I32):		ss << "i32" << endl; 	    break;

	case id2ui(I64):		ss << "i64" << endl; 	    break;

	case id2ui(LIST):      ss << "list" << endl;		break;

    case id2ui(LSTRING):		ss << "lstring" << endl;	break;
    case id2ui(LTSTRING):		ss << "ltstring" << endl;	break;

	case id2ui(MAP):		ss << "map" << endl;		break;
	case id2ui(MMAP):		ss << "mmap" << endl;		break;
	case id2ui(MSET):		ss << "mset" << endl;		break;
	case id2ui(MUTEX):		ss << "mutex" << endl;	break;

	case id2ui(N):         ss <<  "N" << endl;		break;

	case id2ui(N0):		ss << "n0" << endl; 	    break;
	case id2ui(N1):		ss << "n1" << endl; 	    break;
	case id2ui(N2):		ss << "n2" << endl; 	    break;
	case id2ui(N3):		ss << "n3" << endl; 	    break;
	case id2ui(N4):		ss << "n4" << endl; 	    break;
	case id2ui(N5):		ss << "n5" << endl; 	    break;
	case id2ui(N6):		ss << "n6" << endl; 	    break;
	case id2ui(N7):		ss << "n7" << endl; 	    break;
	case id2ui(N8):		ss << "n8" << endl; 	    break;
	case id2ui(N9):		ss << "n9" << endl; 	    break;

	case id2ui(N10):		ss << "n10" << endl; 	    break;
	case id2ui(N11):		ss << "n11" << endl; 	    break;
	case id2ui(N12):		ss << "n12" << endl; 	    break;
	case id2ui(N13):		ss << "n13" << endl; 	    break;
	case id2ui(N14):		ss << "n14" << endl; 	    break;
	case id2ui(N15):		ss << "n15" << endl; 	    break;
	case id2ui(N16):		ss << "n16" << endl; 	    break;
	case id2ui(N17):		ss << "n17" << endl; 	    break;
	case id2ui(N18):		ss << "n18" << endl; 	    break;
	case id2ui(N19):		ss << "n19" << endl; 	    break;

	case id2ui(N20):		ss << "n20" << endl; 	    break;
	case id2ui(N21):		ss << "n21" << endl; 	    break;
	case id2ui(N22):		ss << "n22" << endl; 	    break;
	case id2ui(N23):		ss << "n23" << endl; 	    break;
	case id2ui(N24):		ss << "n24" << endl; 	    break;
	case id2ui(N25):		ss << "n25" << endl; 	    break;
	case id2ui(N26):		ss << "n26" << endl; 	    break;
	case id2ui(N27):		ss << "n27" << endl; 	    break;
	case id2ui(N28):		ss << "n28" << endl; 	    break;
	case id2ui(N29):		ss << "n29" << endl; 	    break;

	case id2ui(N30):		ss << "n30" << endl; 	    break;
	case id2ui(N31):		ss << "n31" << endl; 	    break;
	case id2ui(N32):		ss << "n32" << endl; 	    break;

	case id2ui(N64):		ss << "i64" << endl; 	    break;

	case id2ui(OBJECT):	ss << "object" << endl;	break;

	case id2ui(Q):			ss << "Q" << endl; 		break;
	case id2ui(QUEUE):		ss << "queue" << endl; 	break;

	case id2ui(R):         ss <<  "R" << endl;		break;
	case id2ui(REGEXP):    ss <<  "regexp" << endl;	break;

    case id2ui(SEMAPHORE):	ss << "semaphore" << endl;break;
	case id2ui(STACK):		ss << "stack" << endl; 	break;
	case id2ui(STRING):	ss << "string" << endl;	break;

	case id2ui(U0):		ss << "u0" << endl; 	    break;
	case id2ui(U1):		ss << "u1" << endl; 	    break;
	case id2ui(U2):		ss << "u2" << endl; 	    break;
	case id2ui(U3):		ss << "u3" << endl; 	    break;
	case id2ui(U4):		ss << "u4" << endl; 	    break;
	case id2ui(U5):		ss << "u5" << endl; 	    break;
	case id2ui(U6):		ss << "u6" << endl; 	    break;
	case id2ui(U7):		ss << "u7" << endl; 	    break;
	case id2ui(U8):		ss << "u8" << endl; 	    break;
	case id2ui(U9):		ss << "u9" << endl; 	    break;

	case id2ui(U10):		ss << "u10" << endl; 	    break;
	case id2ui(U11):		ss << "u11" << endl; 	    break;
	case id2ui(U12):		ss << "u12" << endl; 	    break;
	case id2ui(U13):		ss << "u13" << endl; 	    break;
	case id2ui(U14):		ss << "u14" << endl; 	    break;
	case id2ui(U15):		ss << "u15" << endl; 	    break;
	case id2ui(U16):		ss << "u16" << endl; 	    break;
	case id2ui(U17):		ss << "u17" << endl; 	    break;
	case id2ui(U18):		ss << "u18" << endl; 	    break;
	case id2ui(U19):		ss << "u19" << endl; 	    break;

	case id2ui(U20):		ss << "u20" << endl; 	    break;
	case id2ui(U21):		ss << "u21" << endl; 	    break;
	case id2ui(U22):		ss << "u22" << endl; 	    break;
	case id2ui(U23):		ss << "u23" << endl; 	    break;
	case id2ui(U24):		ss << "u24" << endl; 	    break;
	case id2ui(U25):		ss << "u25" << endl; 	    break;
	case id2ui(U26):		ss << "u26" << endl; 	    break;
	case id2ui(U27):		ss << "u27" << endl; 	    break;
	case id2ui(U28):		ss << "u28" << endl; 	    break;
	case id2ui(U29):		ss << "u29" << endl; 	    break;

	case id2ui(U30):		ss << "u30" << endl; 	    break;
	case id2ui(U31):		ss << "u31" << endl; 	    break;
	case id2ui(U32):		ss << "u32" << endl; 	    break;

	case id2ui(U64):		ss << "u64" << endl; 	    break;

	case id2ui(SET):		ss << "set" << endl; 		break;

	case id2ui(VOID):		ss << "void" << endl;		break;

	case id2ui(Z):			ss << "Z" << endl;		break;

	case id2ui(Z0):		ss << "z0" << endl; 	    break;
	case id2ui(Z1):		ss << "z1" << endl; 	    break;
	case id2ui(Z2):		ss << "z2" << endl; 	    break;
	case id2ui(Z3):		ss << "z3" << endl; 	    break;
	case id2ui(Z4):		ss << "z4" << endl; 	    break;
	case id2ui(Z5):		ss << "z5" << endl; 	    break;
	case id2ui(Z6):		ss << "z6" << endl; 	    break;
	case id2ui(Z7):		ss << "z7" << endl; 	    break;
	case id2ui(Z8):		ss << "z8" << endl; 	    break;
	case id2ui(Z9):		ss << "z9" << endl; 	    break;

	case id2ui(Z10):		ss << "z10" << endl; 	    break;
	case id2ui(Z11):		ss << "z11" << endl; 	    break;
	case id2ui(Z12):		ss << "z12" << endl; 	    break;
	case id2ui(Z13):		ss << "z13" << endl; 	    break;
	case id2ui(Z14):		ss << "z14" << endl; 	    break;
	case id2ui(Z15):		ss << "z15" << endl; 	    break;
	case id2ui(Z16):		ss << "z16" << endl; 	    break;
	case id2ui(Z17):		ss << "z17" << endl; 	    break;
	case id2ui(Z18):		ss << "z18" << endl; 	    break;
	case id2ui(Z19):		ss << "z19" << endl; 	    break;

	case id2ui(Z20):		ss << "z20" << endl; 	    break;
	case id2ui(Z21):		ss << "z21" << endl; 	    break;
	case id2ui(Z22):		ss << "z22" << endl; 	    break;
	case id2ui(Z23):		ss << "z23" << endl; 	    break;
	case id2ui(Z24):		ss << "z24" << endl; 	    break;
	case id2ui(Z25):		ss << "z25" << endl; 	    break;
	case id2ui(Z26):		ss << "z26" << endl; 	    break;
	case id2ui(Z27):		ss << "z27" << endl; 	    break;
	case id2ui(Z28):		ss << "z28" << endl; 	    break;
	case id2ui(Z29):		ss << "z29" << endl; 	    break;

	case id2ui(Z30):		ss << "z30" << endl; 	    break;
	case id2ui(Z31):		ss << "z31" << endl; 	    break;
	case id2ui(Z32):		ss << "z32" << endl; 	    break;

	case id2ui(Z64):		ss << "z64" << endl; 	    break;

	case id2ui(ATOMIC):    ss << "atomic" << endl;	break;

	case id2ui(FINAL):     ss << "final" << endl;	break;
	case id2ui(INLINE):    ss << "inline"  << endl;	break;
	case id2ui(MUTABLE):   ss <<  "mutable" << endl;	break;
	case id2ui(PRIVATE):	ss << "private" << endl;	break;
	case id2ui(PUBLIC):	ss << "public" << endl;	break;
    case id2ui(PURE):
	case id2ui(THREAD_LOCAL):ss << "thread_local" << endl; break;

	case id2ui(AS):        ss << "as" << endl;		break;
	case id2ui(ASC):       ss << "asc" << endl;		break;

	case id2ui(BY):        ss << "by" << endl;		break;

    case id2ui(CLOSURE):	ss << "closure" << endl;	break;

    case id2ui(DISTINCT): 	ss << "distinct" << endl;	break;
	case id2ui(DSC):		ss << "dsc" << endl;		break;

	case id2ui(FOREIGN):	ss << "foreign" << endl;	break;
	case id2ui(FROM):		ss << "from" << endl;		break;

	case id2ui(GROUP):		ss << "group" << endl;	break;

	case id2ui(HAVING):	ss << "having" << endl;	break;

	case id2ui(INTO):		ss << "into"   << endl;	break;      

	case id2ui(JOIN):      ss << "join" << endl;		break;

	case id2ui(LEFT):      ss << "left" << endl;		break;

	case id2ui(ORDER):		ss << "order" << endl;	break;
	case id2ui(OUTER):		ss << "outer" << endl;	break;

    case id2ui(PERCENT):   ss << "percent" << endl;	break;

	case id2ui(RIGHT):     ss <<  "right" << endl;	break;

    case id2ui(TIES): 		ss << "ties" << endl;		break;
    case id2ui(TOP):  		ss << "top" << endl;		break;

    case id2ui(UNIQUE):	ss << "unique" << endl;	break;

    case id2ui(VALUES):   	ss << "values" << endl;	break;

	case id2ui(WHERE):		ss << "where" << endl;	break;
    case id2ui(WITH):       
	case id2ui(FINAL_FUNC):ss << "final-func" << endl;break;
	case id2ui(IMPLICIT):	ss << "implicit" << endl;	break;
	case id2ui(OVERRIDE):	ss << "override" << endl;	break;
	case id2ui(NOEXCEPT):  ss <<  "noexcept" << endl;break;

	case id2ui(CLASS_NAME):	ss << "class-name:" << token.lexium() << endl;	break;
	case id2ui(ENUM_NAME):		ss << "enum-name:" << token.lexium() << endl;	break;
	case id2ui(INTERFACE_NAME):ss << "interface-name:" << token.lexium() << endl;break;
	case id2ui(RELATION_NAME):	ss << "relation-name:"<< token.lexium() << endl;break;
	case id2ui(UNION_NAME):	ss << "union-name:" 	<< token.lexium()	<< endl;break;
	case id2ui(TYPE_NAME): 	ss << "type-name:" 	<< token.lexium() << endl;break;

    case id2ui(FUN_NAME):
	case id2ui(FUNCTION_NAME):	ss << "func-name:" 	<< token.lexium() << endl;break;
	case id2ui(NAMESPACE_NAME):ss << "ns-name:" 		<< token.lexium() << endl;break;
	case id2ui(VARIABLE_NAME):	ss << "var-name:"		<< token.lexium() << endl;break;
	case id2ui(ID):			ss << "id:" 		    << token.lexium() << endl;break;

	case id2ui(UNKOWN_NAME):	ss << "unknown-name:" << token.lexium() << endl;break;

	case id2ui(_E):			ss << ".e" << endl; 			break;
	case id2ui(FALSE):			ss << "false" << endl; 		break;
    case id2ui(_GAMMA):     	ss << ".gamma" << endl;		break;
    case id2ui(_I):         	ss << ".i" << endl;			break;
    case id2ui(_INF):       	ss << ".inf" << endl;			break;
    case id2ui(_NAN):       	ss << ".nan" << endl;			break;
    case id2ui(_PHI):       	ss << ".phi" << endl;			break;
	case id2ui(_PI):			ss << ".pi" << endl; 			break;
	case id2ui(TRUE):			ss << "true" << endl; 		break;
	case id2ui(THIS):      	ss <<   "this" << endl; 		break;
	case id2ui(CHAR_LIT):      ss << "char-lit:" << endl;	break;
	case id2ui(DAYS_LIT):      ss << "days-lit:" << endl;	break;
	case id2ui(HOURS_LIT):     ss << "hours-lit:" << endl;	break;
	case id2ui(LSTRING_LIT):   ss << "lstring-lit:" << endl;	break;
	case id2ui(LTSTRING_LIT):  ss << "ltstring-lit:" << endl;break;
	case id2ui(MINS_LIT):      ss << "mins_lit:" << endl;	break;
	case id2ui(NAT_LIT):       ss << "nat-lit:" << endl;		break;
	case id2ui(Q_LIT):         ss << "q-lit:" << endl;		break;
	case id2ui(SECS_LIT):      ss << "sec-lit:" << endl;		break;
	case id2ui(YEARS_LIT):     ss << "years-lit:" << endl;	break;

	case id2ui(DATE_LIT):		ss << "date: " 						<< endl;break;
	case id2ui(DATETIME_LIT):	ss << "datetime: " 					<< endl;break;

	case id2ui(FLOAT32_LIT): 	ss << "float32:" << token.float32() << endl;break;
	case id2ui(FLOAT64_LIT): 	ss << "float64:" << token.float64() << endl;break;
	case id2ui(FLOAT80_LIT): 	ss << "float80:" << token.float80() << endl;break;

	case id2ui(INT8_LIT):  	ss << "int8:" << (int)token.i8()<< endl;break;
	case id2ui(INT16_LIT): 	ss << "int16:" << token.i16()  << endl;break;
	case id2ui(INT32_LIT): 	ss << "int32:" << token.i32()  << endl;break;
	case id2ui(INT64_LIT): 	ss << "int64:" << token.i64()  << endl;break;
	case id2ui(INTEGER_LIT):	ss << "Z:" 					   << endl;break;
	case id2ui(REAL_LIT):		ss << "R:" 					   << endl;break;
	case id2ui(REGEXP_LIT):	ss << "re:" 				   << endl;break;
	case id2ui(STRING_LIT):	ss << "str:" << token.lexium() << endl;break;
	case id2ui(TIME_LIT):		ss << "time: " 				   << endl;break;
	case id2ui(UINT8_LIT): 	ss << "uint8:" << token.u8()   << endl;break;
	case id2ui(UINT16_LIT):	ss << "uint16:" << token.u16() << endl;break;
	case id2ui(UINT32_LIT):	ss << "uint:" << token.u32()   << endl;break;
	case id2ui(UINT64_LIT):	ss << "ulong:" << token.u64()  << endl;break;

    case id2ui(CLASS):			ss << "class" << endl;		break;
	case id2ui(ENUM):     		ss << "enum" << endl;			break;
	case id2ui(FUN):			ss << "fun" << endl;			break;
    case id2ui(INTERFACE):		ss << "interface" << endl;	break;
    case id2ui(RELATION):		ss << "relation" << endl;		break;
	case id2ui(UNION):			ss << "union" << endl;		break;

    case id2ui(EXTEND):		ss << "extend" << endl;		break;
    case id2ui(IMPLEMENT):		ss << "implement" << endl;	break;
	case id2ui(INDEX):			ss << "index" << endl;		break;
	case id2ui(KEY):       	ss << "key" << endl;			break;

    case id2ui(ASSERT):		ss << "assert" << endl;		break;
	case id2ui(BREAK):			ss << "break" << endl;		break;
	case id2ui(CASE):			ss << "case"  << endl;		break;
	case id2ui(CATCH):     	ss << "catch" << endl;		break;
    case id2ui(CO_AWAIT):		ss << "co_await" << endl;		break;
	case id2ui(CONTINUE):		ss << "continue" << endl;		break;
    case id2ui(CO_RETURN):		ss << "co_return" << endl;	break;
    case id2ui(CO_YIELD):		ss << "co_yield" << endl;		break;
	case id2ui(DEFAULT):		ss << "default" << endl;		break;
	case id2ui(DO):        	ss << "do"  << endl;			break;
	case id2ui(ELSE):			ss << "else" << endl; 		break;
	case id2ui(FOR):			ss << "for" << endl; 			break;
	case id2ui(IF):			ss << "if" << endl; 			break;
    case id2ui(IMPORT):		ss << "import" << endl;		break;
	case id2ui(NAMESPACE): 	ss << "namespace" << endl;	break;
	case id2ui(RETURN):		ss << "return" << endl;		break;
	case id2ui(SWITCH):		ss << "switch" << endl;		break;
	case id2ui(THROW):     	ss << "throw" << endl; 		break;
	case id2ui(TRY):       	ss << "try" << endl; 			break;
	case id2ui(WHILE):			ss << "while" << endl;		break;

    case id2ui(APPLY):			ss << "apply" << endl;		break;
    case id2ui(ASYNC):			ss << "async" << endl;		break;
	case id2ui(ALIGNAS):		ss << "alignas" << endl;		break;
	case id2ui(ALIGNOF):		ss << "alignof" << endl;		break;
    case id2ui(DELETE):		ss << "delete" << endl;		break;
    case id2ui(EVAL):			ss << "eval" << endl;			break;
    case id2ui(FILTER):		ss << "filter" << endl;		break;
	case id2ui(IN):        	ss << "in"  << endl;			break;
	case id2ui(IS_VOID): 		ss << "is_void" << endl; 		break;
    case id2ui(INSERT):		ss << "insert" << endl;		break;
	case id2ui(NEW):			ss << "new" << endl;			break;
    case id2ui(REDUCE):		ss << "reduce" << endl;		break;
	case id2ui(SELECT):		ss << "select" << endl; 		break;
	case id2ui(SIZEOF):    	ss << "sizeof" << endl;		break;
	case id2ui(TYPEID):    	ss << "typeid" << endl; 		break;
    case id2ui(UPDATE):		ss << "update" << endl;		break;

	case id2ui(TIME):      	ss << "time" << endl; 		break;
	case id2ui(TYPE):      	ss << "type" << endl; 		break;

	case id2ui(USING):			ss << "using" << endl;		break;
	case id2ui(VA_ARGS):		ss << "va_args" << endl;		break;

	case id2ui(INVALID_NUMBER): ss << "inv num:" << token.lexium() << endl;break;
	case id2ui(INVALID_STRING): ss << "inv str:" << token.lexium()	<< endl;break;
	}

	printf( "%s\n", ss.str().c_str() );
}

#endif

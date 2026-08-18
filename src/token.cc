#include "token.h"

Keyword keyWords[] =
{
	{ AUTO,         "auto" },
	{ BOOL,         "bool" },
	{ C,            "C" },
	{ CHAR,         "char" },
	{ DATE,         "date" },
	{ DATETIME,     "datetime" },
	{ DLIST,        "dlist" },
	{ DQUEUE,       "dqueue" },
	{ DURATION,     "duration" },
	{ FLOAT32,      "float32" },
	{ FLOAT64,      "float64" },
	{ FLOAT80,      "float80" },
	{ GRAPH,        "graph" },
	{ HEAP,         "heap" },
	{ I0,           "i0" },
	{ I1,           "i1" },
	{ I2,           "i2" },
	{ I3,           "i3" },
	{ I4,           "i4" },
	{ I5,           "i5" },
	{ I6,           "i6" },
	{ I7,           "i7" },
	{ I8,           "i8" },
	{ I9,           "i9" },
	{ I10,          "i10" },
	{ I11,          "i11" },
	{ I12,          "i12" },
	{ I13,          "i13" },
	{ I14,          "i14" },
	{ I15,          "i15" },
	{ I16,          "i16" },
	{ I17,          "i17" },
	{ I18,          "i18" },
	{ I19,          "i19" },
	{ I20,          "i20" },
	{ I21,          "i21" },
	{ I22,          "i22" },
	{ I23,          "i23" },
	{ I24,          "i24" },
	{ I25,          "i25" },
	{ I26,          "i26" },
	{ I27,          "i27" },
	{ I28,          "i28" },
	{ I29,          "i29" },
	{ I30,          "i30" },
	{ I31,          "i31" },
	{ I32,          "i32" },
	{ I64,          "i64" },
	{ LIST,         "list" },
	{ LSTRING,      "lstring" },
	{ LTSTRING,     "ltstring" },
	{ MAP,          "map" },
	{ MMAP,         "mmap" },
	{ MSET,         "mset" },
	{ MUTEX,        "mutex" },
	{ N,            "N" },
	{ N0,           "n0" },
	{ N1,           "n1" },
	{ N2,           "n2" },
	{ N3,           "n3" },
	{ N4,           "n4" },
	{ N5,           "n5" },
	{ N6,           "n6" },
	{ N7,           "n7" },
	{ N8,           "n8" },
	{ N9,           "n9" },
	{ N10,          "n10" },
	{ N11,          "n11" },
	{ N12,          "n12" },
	{ N13,          "n13" },
	{ N14,          "n14" },
	{ N15,          "n15" },
	{ N16,          "n16" },
	{ N17,          "n17" },
	{ N18,          "n18" },
	{ N19,          "n19" },
	{ N20,          "n20" },
	{ N21,          "n21" },
	{ N22,          "n22" },
	{ N23,          "n23" },
	{ N24,          "n24" },
	{ N25,          "n25" },
	{ N26,          "n26" },
	{ N27,          "n27" },
	{ N28,          "n28" },
	{ N29,          "n29" },
	{ N30,          "n30" },
	{ N31,          "n31" },
	{ N32,          "n32" },
	{ N64,          "n64" },
	{ OBJECT,       "object" },
	{ Q,            "Q" },
	{ QUEUE,        "queue" },
	{ R,            "R" },
	{ REGEXP,       "regexp" },
	{ SEMAPHORE,    "semaphore" },
	{ STACK,        "stack" },
	{ STRING,       "string" },
	{ U0,           "u0" },
	{ U1,           "u1" },
	{ U2,           "u2" },
	{ U3,           "u3" },
	{ U4,           "u4" },
	{ U5,           "u5" },
	{ U6,           "u6" },
	{ U7,           "u7" },
	{ U8,           "u8" },
	{ U9,           "u9" },
	{ U10,          "u10" },
	{ U11,          "u11" },
	{ U12,          "u12" },
	{ U13,          "u13" },
	{ U14,          "u14" },
	{ U15,          "u15" },
	{ U16,          "u16" },
	{ U17,          "u17" },
	{ U18,          "u18" },
	{ U19,          "u19" },
	{ U20,          "u20" },
	{ U21,          "u21" },
	{ U22,          "u22" },
	{ U23,          "u23" },
	{ U24,          "u24" },
	{ U25,          "u25" },
	{ U26,          "u26" },
	{ U27,          "u27" },
	{ U28,          "u28" },
	{ U29,          "u29" },
	{ U30,          "u30" },
	{ U31,          "u31" },
	{ U32,          "u32" },
	{ U64,          "u64" },
	{ SET,          "set" },
	{ VOID,         "void" },
	{ Z,            "Z" },
	{ Z0,           "z0" },
	{ Z1,           "z1" },
	{ Z2,           "z2" },
	{ Z3,           "z3" },
	{ Z4,           "z4" },
	{ Z5,           "z5" },
	{ Z6,           "z6" },
	{ Z7,           "z7" },
	{ Z8,           "z8" },
	{ Z9,           "z9" },
	{ Z10,          "z10" },
	{ Z11,          "z11" },
	{ Z12,          "z12" },
	{ Z13,          "z13" },
	{ Z14,          "z14" },
	{ Z15,          "z15" },
	{ Z16,          "z16" },
	{ Z17,          "z17" },
	{ Z18,          "z18" },
	{ Z19,          "z19" },
	{ Z20,          "z20" },
	{ Z21,          "z21" },
	{ Z22,          "z22" },
	{ Z23,          "z23" },
	{ Z24,          "z24" },
	{ Z25,          "z25" },
	{ Z26,          "z26" },
	{ Z27,          "z27" },
	{ Z28,          "z28" },
	{ Z29,          "z29" },
	{ Z30,          "z30" },
	{ Z31,          "z31" },
	{ Z32,          "z32" },
	{ Z64,          "z64" },
	{ ATOMIC,       "atomic" },
	{ FINAL,        "final" },
	{ INLINE,       "inline" },
	{ MUTABLE,      "mutable" },
	{ PRIVATE,      "private" },
	{ PUBLIC,       "public" },
	{ PURE,         "pure" },
	{ THREAD_LOCAL, "thread_local" },
	{ CLASS,        "class" },
	{ ENUM,         "enum" },
	{ FUN,          "fun" },
	{ INTERFACE,    "interface" },
	{ RELATION,     "relation" },
	{ UNION,        "union" },
	{ ASSERT,       "assert" },
	{ BREAK,        "break" },
	{ CASE,         "case" },
	{ CATCH,        "catch" },
	{ CO_AWAIT,     "co_await" },
	{ CONTINUE,     "continue" },
	{ CO_RETURN,    "co_return" },
	{ CO_YIELD,     "co_yield" },
	{ DEFAULT,      "default" },
	{ DO,           "do" },
	{ ELSE,         "else" },
	{ FOR,          "for" },
	{ IF,           "if" },
	{ IMPORT,       "import" },
	{ NAMESPACE,    "namespace" },
	{ RETURN,       "return" },
	{ SWITCH,       "switch" },
	{ THROW,        "throw" },
	{ TRY,          "try" },
	{ WHILE,        "while" },
	{ APPLY,        "apply" },
	{ ASYNC,        "async" },
	{ ALIGNAS,      "alignas" },
	{ ALIGNOF,      "alignof" },
	{ DELETE,       "delete" },
	{ EVAL,         "eval" },
	{ FILTER,       "filter" },
	{ IN,           "in" },
	{ IS_VOID,      "is_void" },
	{ INSERT,       "insert" },
	{ NEW,          "new" },
	{ REDUCE,       "reduce" },
	{ SELECT,       "select" },
	{ SIZEOF,       "sizeof" },
	{ TYPEID,       "typeid" },
	{ UPDATE,       "update" },
	{ TIME,         "time" },
	{ TYPE,         "type" },
	{ USING,        "using" },
	{ VA_ARGS,      "va_args" },
};

unsigned noOfKeyWords = sizeof(keyWords)/sizeof(Keyword);

#ifdef DEBUG_YYLEX

#include <sstream>

using namespace std;

void dumpToken( Token & token )
{
	std::stringstream ss;
	ss << "token=";

	switch(token.id)
	{
	case NOT:    	 	ss << "!"	<< endl;	break;
	case WEAK:    		ss << "#"	<< endl;	break;
	case MOD:     		ss << "%"	<< endl;	break;
	case BAND:    		ss << "&"	<< endl;	break;
	case QUOT:    		ss << "'"	<< endl;	break;
	case LPAREN:  		ss << "("	<< endl;	break;
	case RPAREN:  		ss << ")"	<< endl;	break;
	case MUL:     		ss << "*"	<< endl;	break;
	case ADD:     		ss << "+"	<< endl;	break;
	case COMMA:   		ss << ","	<< endl;	break;
	case SUB:     		ss << "-"	<< endl;	break;
	case DOT:     		ss << "."	<< endl;	break;
	case DIV:     		ss << "/"	<< endl;	break;
	case COLON:   		ss << ":"	<< endl;	break;
	case SCOLON:  		ss << ";"	<< endl;	break;
	case LT:      		ss << "<"	<< endl;	break;
	case ASSIGN:  		ss << "="	<< endl;	break;
	case GT:      		ss << ">"	<< endl;	break;
	case QUEST:   		ss << "?"	<< endl;	break;
	case LBRACK:  		ss << "["	<< endl;	break;
	case BSLASH:  		ss << "\\"<< endl;	break;
	case RBRACK:  		ss << "]"	<< endl;	break;
	case XOR:     		ss << "^"	<< endl;	break;
	case LBRACE: 		ss << "{"	<< endl;	break;
	case BOR:    		ss << "|"	<< endl;	break;
	case RBRACE: 		ss << "}"	<< endl;	break;
	case BNOT:   		ss << "~"	<< endl;	break;

	case ADD_ASS: 		ss << "+=" << endl;	break;
	case AND:			ss << "&&" << endl;   break;
	case AND_ASS:		ss << "&=" << endl;  	break;
    case CP_ASS:     	ss << "[*]=" << endl;	break;
    case CRS_PROD:   	ss << "[*]" << endl;	break;
	case DEC: 			ss << "--" << endl;   break;
	case DIV_ASS: 		ss << "/=" << endl;   break;
	case DOT_ASK: 		ss << ".*" << endl;	break;
	case DOT_DOT: 		ss << ".." << endl;	break;
	case DOT_DOT_DOT: 	ss << "..." << endl;	break;
    case DOT_PROD:   	ss << "[.]"  << endl;	break;
    case DP_ASS:     	ss << "[.]=" << endl;	break;
	case EQ: 			ss << "==" << endl;	break;
	case EXP: 			ss << "**" << endl;	break;
	case EXP_ASS:    	ss << "**=" << endl;	break;
	case FACTORIAL: 	ss << ".!" << endl;	break;
	case GE: 			ss << ">=" << endl;	break;
	case INC: 			ss << "++" << endl;	break;
	case LE: 			ss << "<=" << endl;	break;
    case M_DIV:      	ss << "[/]" << endl;	break;
    case MD_ASS:     	ss << "[/]=" << endl;	break;
	case MOD_ASS: 		ss << "%=" << endl;	break;
	case MUL_ASS: 		ss << "*=" << endl;	break;
    case M_EXP:      	ss << "[**]" << endl;	break;
    case ME_ASS:     	ss << "[**]=" << endl;break;
    case MPTR:       	ss << "->*" << endl;	break;
	case NE: 			ss << "!=" << endl;	break;
	case OR: 			ss << "||" << endl;	break;
	case OR_ASS: 		ss << "|=" << endl;	break;
    case PARAM_ASS:  	ss << ":=" << endl;	break;
	case POST_DEC: 		ss << ".--" << endl;	break;
	case POST_INC:		ss << ".++" << endl;	break;
    case PTR:        	ss << "->" << endl;	break;
    case QUAL:       	ss << "::" << endl;	break;
	case SLFT:			ss << "<<" << endl;	break;
	case SLFT_ASS:		ss << "<<=" << endl;	break;
	case SRGHT:			ss << ">>" << endl;	break;
	case SRGHT_ASS:		ss << ">>=" << endl;	break;
    case SS:         	ss << "<=>" << endl;	break;
	case SUB_ASS: 		ss << "-=" << endl;	break;
    case TIL_ASS:    	ss << "~=" << endl;	break;
	case UNIARY_MINUS:	ss << "-." << endl;	break;
	case UNIARY_PLUS:	ss << "+." << endl;	break;
	case XOR_ASS:		ss << "^=" << endl;	break;

	case AUTO:      ss << "auto" << endl;		break;

	case BOOL:		ss << "bool" << endl;		break;

	case C:        	ss << "C"  << endl;		break;

	case CHAR:      ss << "char" << endl;		break;

	case DATE:      ss << "date" << endl;		break;
	case DATETIME:  ss << "datetime"  << endl;break;

	case DLIST:     ss << "dlist"  << endl;	break;
	case DQUEUE:    ss << "dqueue"  << endl;	break;
	case DURATION:  ss << "duration"  << endl;break;

	case FLOAT32:   ss << "float32" << endl;	break;
	case FLOAT64:   ss << "float64" << endl;	break;
	case FLOAT80:   ss << "float80" << endl;	break;

    case GRAPH:		ss << "graph" << endl;	break;
    case HEAP:		ss << "heap" << endl;		break;

	case I0:		ss << "i0" << endl; 	    break;
	case I1:		ss << "i1" << endl; 	    break;
	case I2:		ss << "i2" << endl; 	    break;
	case I3:		ss << "i3" << endl; 	    break;
	case I4:		ss << "i4" << endl; 	    break;
	case I5:		ss << "i5" << endl; 	    break;
	case I6:		ss << "i6" << endl; 	    break;
	case I7:		ss << "i7" << endl; 	    break;
	case I8:		ss << "i8" << endl; 	    break;
	case I9:		ss << "i9" << endl; 	    break;

	case I10:		ss << "i10" << endl; 	    break;
	case I11:		ss << "i11" << endl; 	    break;
	case I12:		ss << "i12" << endl; 	    break;
	case I13:		ss << "i13" << endl; 	    break;
	case I14:		ss << "i14" << endl; 	    break;
	case I15:		ss << "i15" << endl; 	    break;
	case I16:		ss << "i16" << endl; 	    break;
	case I17:		ss << "i17" << endl; 	    break;
	case I18:		ss << "i18" << endl; 	    break;
	case I19:		ss << "i19" << endl; 	    break;

	case I20:		ss << "i20" << endl; 	    break;
	case I21:		ss << "i21" << endl; 	    break;
	case I22:		ss << "i22" << endl; 	    break;
	case I23:		ss << "i23" << endl; 	    break;
	case I24:		ss << "i24" << endl; 	    break;
	case I25:		ss << "i25" << endl; 	    break;
	case I26:		ss << "i26" << endl; 	    break;
	case I27:		ss << "i27" << endl; 	    break;
	case I28:		ss << "i28" << endl; 	    break;
	case I29:		ss << "i29" << endl; 	    break;

	case I30:		ss << "i30" << endl; 	    break;
	case I31:		ss << "i31" << endl; 	    break;
	case I32:		ss << "i32" << endl; 	    break;

	case I64:		ss << "i64" << endl; 	    break;

	case LIST:      ss << "list" << endl;		break;

    case LSTRING:		ss << "lstring" << endl;	break;
    case LTSTRING:		ss << "ltstring" << endl;	break;

	case MAP:		ss << "map" << endl;		break;
	case MMAP:		ss << "mmap" << endl;		break;
	case MSET:		ss << "mset" << endl;		break;
	case MUTEX:		ss << "mutex" << endl;	break;

	case N:         ss <<  "N" << endl;		break;

	case N0:		ss << "n0" << endl; 	    break;
	case N1:		ss << "n1" << endl; 	    break;
	case N2:		ss << "n2" << endl; 	    break;
	case N3:		ss << "n3" << endl; 	    break;
	case N4:		ss << "n4" << endl; 	    break;
	case N5:		ss << "n5" << endl; 	    break;
	case N6:		ss << "n6" << endl; 	    break;
	case N7:		ss << "n7" << endl; 	    break;
	case N8:		ss << "n8" << endl; 	    break;
	case N9:		ss << "n9" << endl; 	    break;

	case N10:		ss << "n10" << endl; 	    break;
	case N11:		ss << "n11" << endl; 	    break;
	case N12:		ss << "n12" << endl; 	    break;
	case N13:		ss << "n13" << endl; 	    break;
	case N14:		ss << "n14" << endl; 	    break;
	case N15:		ss << "n15" << endl; 	    break;
	case N16:		ss << "n16" << endl; 	    break;
	case N17:		ss << "n17" << endl; 	    break;
	case N18:		ss << "n18" << endl; 	    break;
	case N19:		ss << "n19" << endl; 	    break;

	case N20:		ss << "n20" << endl; 	    break;
	case N21:		ss << "n21" << endl; 	    break;
	case N22:		ss << "n22" << endl; 	    break;
	case N23:		ss << "n23" << endl; 	    break;
	case N24:		ss << "n24" << endl; 	    break;
	case N25:		ss << "n25" << endl; 	    break;
	case N26:		ss << "n26" << endl; 	    break;
	case N27:		ss << "n27" << endl; 	    break;
	case N28:		ss << "n28" << endl; 	    break;
	case N29:		ss << "n29" << endl; 	    break;

	case N30:		ss << "n30" << endl; 	    break;
	case N31:		ss << "n31" << endl; 	    break;
	case N32:		ss << "n32" << endl; 	    break;

	case N64:		ss << "i64" << endl; 	    break;

	case OBJECT:	ss << "object" << endl;	break;

	case Q:			ss << "Q" << endl; 		break;
	case QUEUE:		ss << "queue" << endl; 	break;

	case R:         ss <<  "R" << endl;		break;
	case REGEXP:    ss <<  "regexp" << endl;	break;

    case SEMAPHORE:	ss << "semaphore" << endl;break;
	case STACK:		ss << "stack" << endl; 	break;
	case STRING:	ss << "string" << endl;	break;

	case U0:		ss << "u0" << endl; 	    break;
	case U1:		ss << "u1" << endl; 	    break;
	case U2:		ss << "u2" << endl; 	    break;
	case U3:		ss << "u3" << endl; 	    break;
	case U4:		ss << "u4" << endl; 	    break;
	case U5:		ss << "u5" << endl; 	    break;
	case U6:		ss << "u6" << endl; 	    break;
	case U7:		ss << "u7" << endl; 	    break;
	case U8:		ss << "u8" << endl; 	    break;
	case U9:		ss << "u9" << endl; 	    break;

	case U10:		ss << "u10" << endl; 	    break;
	case U11:		ss << "u11" << endl; 	    break;
	case U12:		ss << "u12" << endl; 	    break;
	case U13:		ss << "u13" << endl; 	    break;
	case U14:		ss << "u14" << endl; 	    break;
	case U15:		ss << "u15" << endl; 	    break;
	case U16:		ss << "u16" << endl; 	    break;
	case U17:		ss << "u17" << endl; 	    break;
	case U18:		ss << "u18" << endl; 	    break;
	case U19:		ss << "u19" << endl; 	    break;

	case U20:		ss << "u20" << endl; 	    break;
	case U21:		ss << "u21" << endl; 	    break;
	case U22:		ss << "u22" << endl; 	    break;
	case U23:		ss << "u23" << endl; 	    break;
	case U24:		ss << "u24" << endl; 	    break;
	case U25:		ss << "u25" << endl; 	    break;
	case U26:		ss << "u26" << endl; 	    break;
	case U27:		ss << "u27" << endl; 	    break;
	case U28:		ss << "u28" << endl; 	    break;
	case U29:		ss << "u29" << endl; 	    break;

	case U30:		ss << "u30" << endl; 	    break;
	case U31:		ss << "u31" << endl; 	    break;
	case U32:		ss << "u32" << endl; 	    break;

	case U64:		ss << "u64" << endl; 	    break;

	case SET:		ss << "set" << endl; 		break;

	case VOID:		ss << "void" << endl;		break;

	case Z:			ss << "Z" << endl;		break;

	case Z0:		ss << "z0" << endl; 	    break;
	case Z1:		ss << "z1" << endl; 	    break;
	case Z2:		ss << "z2" << endl; 	    break;
	case Z3:		ss << "z3" << endl; 	    break;
	case Z4:		ss << "z4" << endl; 	    break;
	case Z5:		ss << "z5" << endl; 	    break;
	case Z6:		ss << "z6" << endl; 	    break;
	case Z7:		ss << "z7" << endl; 	    break;
	case Z8:		ss << "z8" << endl; 	    break;
	case Z9:		ss << "z9" << endl; 	    break;

	case Z10:		ss << "z10" << endl; 	    break;
	case Z11:		ss << "z11" << endl; 	    break;
	case Z12:		ss << "z12" << endl; 	    break;
	case Z13:		ss << "z13" << endl; 	    break;
	case Z14:		ss << "z14" << endl; 	    break;
	case Z15:		ss << "z15" << endl; 	    break;
	case Z16:		ss << "z16" << endl; 	    break;
	case Z17:		ss << "z17" << endl; 	    break;
	case Z18:		ss << "z18" << endl; 	    break;
	case Z19:		ss << "z19" << endl; 	    break;

	case Z20:		ss << "z20" << endl; 	    break;
	case Z21:		ss << "z21" << endl; 	    break;
	case Z22:		ss << "z22" << endl; 	    break;
	case Z23:		ss << "z23" << endl; 	    break;
	case Z24:		ss << "z24" << endl; 	    break;
	case Z25:		ss << "z25" << endl; 	    break;
	case Z26:		ss << "z26" << endl; 	    break;
	case Z27:		ss << "z27" << endl; 	    break;
	case Z28:		ss << "z28" << endl; 	    break;
	case Z29:		ss << "z29" << endl; 	    break;

	case Z30:		ss << "z30" << endl; 	    break;
	case Z31:		ss << "z31" << endl; 	    break;
	case Z32:		ss << "z32" << endl; 	    break;

	case Z64:		ss << "z64" << endl; 	    break;

	case ATOMIC:    ss << "atomic" << endl;	break;

	case FINAL:     ss << "final" << endl;	break;
	case INLINE:    ss << "inline"  << endl;	break;
	case MUTABLE:   ss <<  "mutable" << endl;	break;
	case PRIVATE:	ss << "private" << endl;	break;
	case PUBLIC:	ss << "public" << endl;	break;
    case PURE:
	case THREAD_LOCAL:ss << "thread_local" << endl; break;

	case AS:        ss << "as" << endl;		break;
	case ASC:       ss << "asc" << endl;		break;

	case BY:        ss << "by" << endl;		break;

    case CLOSURE:	ss << "closure" << endl;	break;

    case DISTINCT: 	ss << "distinct" << endl;	break;
	case DSC:		ss << "dsc" << endl;		break;

	case FOREIGN:	ss << "foreign" << endl;	break;
	case FROM:		ss << "from" << endl;		break;

	case GROUP:		ss << "group" << endl;	break;

	case HAVING:	ss << "having" << endl;	break;

	case INTO:		ss << "into"   << endl;	break;      

	case JOIN:      ss << "join" << endl;		break;

	case LEFT:      ss << "left" << endl;		break;

	case ORDER:		ss << "order" << endl;	break;
	case OUTER:		ss << "outer" << endl;	break;

    case PERCENT:   ss << "percent" << endl;	break;

	case RIGHT:     ss <<  "right" << endl;	break;

    case TIES: 		ss << "ties" << endl;		break;
    case TOP:  		ss << "top" << endl;		break;

    case UNIQUE:	ss << "unique" << endl;	break;

    case VALUES:   	ss << "values" << endl;	break;

	case WHERE:		ss << "where" << endl;	break;
    case WITH:       
	case FINAL_FUNC:ss << "final-func" << endl;break;
	case IMPLICIT:	ss << "implicit" << endl;	break;
	case OVERRIDE:	ss << "override" << endl;	break;
	case NOEXCEPT:  ss <<  "noexcept" << endl;break;

	case CLASS_NAME:	ss << "class-name:" << token.lexium << endl;	break;
	case ENUM_NAME:		ss << "enum-name:" << token.lexium << endl;	break;
	case INTERFACE_NAME:ss << "interface-name:" << token.lexium << endl;break;
	case RELATION_NAME:	ss << "relation-name:"<< token.lexium << endl;break;
	case UNION_NAME:	ss << "union-name:" 	<< token.lexium	<< endl;break;
	case TYPE_NAME: 	ss << "type-name:" 	<< token.lexium << endl;break;

    case FUN_NAME:
	case FUNCTION_NAME:	ss << "func-name:" 	<< token.lexium << endl;break;
	case NAMESPACE_NAME:ss << "ns-name:" 		<< token.lexium << endl;break;
	case VARIABLE_NAME:	ss << "var-name:"		<< token.lexium << endl;break;
	case ID:			ss << "id:" 		    << token.lexium << endl;break;

	case UNKOWN_NAME:	ss << "unknown-name:" << token.lexium << endl;break;

	case _E:			ss << ".e" << endl; 			break;
	case FALSE:			ss << "false" << endl; 		break;
    case _GAMMA:     	ss << ".gamma" << endl;		break;
    case _I:         	ss << ".i" << endl;			break;
    case _INF:       	ss << ".inf" << endl;			break;
    case _NAN:       	ss << ".nan" << endl;			break;
    case _PHI:       	ss << ".phi" << endl;			break;
	case _PI:			ss << ".pi" << endl; 			break;
	case TRUE:			ss << "true" << endl; 		break;
	case THIS:      	ss <<   "this" << endl; 		break;
	case CHAR_LIT:      ss << "char-lit:" << endl;	break;
	case DAYS_LIT:      ss << "days-lit:" << endl;	break;
	case HOURS_LIT:     ss << "hours-lit:" << endl;	break;
	case LSTRING_LIT:   ss << "lstring-lit:" << endl;	break;
	case LTSTRING_LIT:  ss << "ltstring-lit:" << endl;break;
	case MINS_LIT:      ss << "mins_lit:" << endl;	break;
	case NAT_LIT:       ss << "nat-lit:" << endl;		break;
	case Q_LIT:         ss << "q-lit:" << endl;		break;
	case SECS_LIT:      ss << "sec-lit:" << endl;		break;
	case YEARS_LIT:     ss << "years-lit:" << endl;	break;

	case DATE_LIT:		ss << "date: " 						<< endl;break;
	case DATETIME_LIT:	ss << "datetime: " 					<< endl;break;

	case FLOAT32_LIT: 	ss << "float32:" << token.value.f64 	<< endl;break;
	case FLOAT64_LIT: 	ss << "float64:" << token.value.f64 	<< endl;break;
	case FLOAT80_LIT: 	ss << "float80:" << token.value.f80 	<< endl;break;

	case INT8_LIT:  	ss << "int8:" << (int)token.value.i8 	<< endl;break;
	case INT16_LIT: 	ss << "int16:" << token.value.i16   	<< endl;break;
	case INT32_LIT: 	ss << "int32:" << token.value.i32   	<< endl;break;
	case INT64_LIT: 	ss << "int64:" << token.value.i64   	<< endl;break;
	case INTEGER_LIT:	ss << "Z:" 							<< endl;break;
	case REAL_LIT:		ss << "R:" 							<< endl;break;
	case REGEXP_LIT:	ss << "re:" 							<< endl;break;
	case STRING_LIT:	ss << "str:" << token.lexium 			<< endl;break;
	case TIME_LIT:		ss << "time: " 						<< endl;break;
	case UINT8_LIT: 	ss << "uint8:" << token.value.u8 	    << endl;break;
	case UINT16_LIT:	ss << "uint16:" << token.value.u16 	<< endl;break;
	case UINT32_LIT:	ss << "uint:" << token.value.u32 	    << endl;break;
	case UINT64_LIT:	ss << "ulong:" << token.value.u64 	<< endl;break;

    case CLASS:			ss << "class" << endl;		break;
	case ENUM:     		ss << "enum" << endl;			break;
	case FUN:			ss << "fun" << endl;			break;
    case INTERFACE:		ss << "interface" << endl;	break;
    case RELATION:		ss << "relation" << endl;		break;
	case UNION:			ss << "union" << endl;		break;

    case EXTEND:		ss << "extend" << endl;		break;
    case IMPLEMENT:		ss << "implement" << endl;	break;
	case INDEX:			ss << "index" << endl;		break;
	case KEY:       	ss << "key" << endl;			break;

    case ASSERT:		ss << "assert" << endl;		break;
	case BREAK:			ss << "break" << endl;		break;
	case CASE:			ss << "case"  << endl;		break;
	case CATCH:     	ss << "catch" << endl;		break;
    case CO_AWAIT:		ss << "co_await" << endl;		break;
	case CONTINUE:		ss << "continue" << endl;		break;
    case CO_RETURN:		ss << "co_return" << endl;	break;
    case CO_YIELD:		ss << "co_yield" << endl;		break;
	case DEFAULT:		ss << "default" << endl;		break;
	case DO:        	ss << "do"  << endl;			break;
	case ELSE:			ss << "else" << endl; 		break;
	case FOR:			ss << "for" << endl; 			break;
	case IF:			ss << "if" << endl; 			break;
    case IMPORT:		ss << "import" << endl;		break;
	case NAMESPACE: 	ss << "namespace" << endl;	break;
	case RETURN:		ss << "return" << endl;		break;
	case SWITCH:		ss << "switch" << endl;		break;
	case THROW:     	ss << "throw" << endl; 		break;
	case TRY:       	ss << "try" << endl; 			break;
	case WHILE:			ss << "while" << endl;		break;

    case APPLY:			ss << "apply" << endl;		break;
    case ASYNC:			ss << "async" << endl;		break;
	case ALIGNAS:		ss << "alignas" << endl;		break;
	case ALIGNOF:		ss << "alignof" << endl;		break;
    case DELETE:		ss << "delete" << endl;		break;
    case EVAL:			ss << "eval" << endl;			break;
    case FILTER:		ss << "filter" << endl;		break;
	case IN:        	ss << "in"  << endl;			break;
	case IS_VOID: 		ss << "is_void" << endl; 		break;
    case INSERT:		ss << "insert" << endl;		break;
	case NEW:			ss << "new" << endl;			break;
    case REDUCE:		ss << "reduce" << endl;		break;
	case SELECT:		ss << "select" << endl; 		break;
	case SIZEOF:    	ss << "sizeof" << endl;		break;
	case TYPEID:    	ss << "typeid" << endl; 		break;
    case UPDATE:		ss << "update" << endl;		break;

	case TIME:      	ss << "time" << endl; 		break;
	case TYPE:      	ss << "type" << endl; 		break;

	case USING:			ss << "using" << endl;		break;
	case VA_ARGS:		ss << "va_args" << endl;		break;

	case INVALID_NUMBER: ss << "inv num:" << token.lexium 	<< endl;break;
	case INVALID_STRING: ss << "inv str:" << token.lexium 	<< endl;break;
	}

	printf( "%s\n", ss.str().c_str() );
}

#endif

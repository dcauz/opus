
#include "parser.h"

///////////////////////////////////////////////////////////////////////
//	uniary op
//	binary op
//

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
printf( "%s:%d id %d\n", __FILE__, __LINE__, token.id );

		switch(token.id )
		{
		case COMMA:
			TODO
			break;
		case SCOLON:
printf( "%s:%d\n", __FILE__, __LINE__ );
			// *expr = new Literal();
printf( "%s:%d\n", __FILE__, __LINE__ );
			return true;

		case LBRACE:// {
			TODO
			break;
		case RBRACE:// }
			TODO
			break;

		default:
		{
			if( token.isType() )
			{
				TODO
			}
			break;
		}
		case NOT:	// !
			TODO
			break;
		case WEAK: 
			TODO
			break;
		case MOD:	// %
			TODO
			break;
		case BAND:	// &
			TODO
			break;
		case LPAREN:// (
			TODO
			break;
		case RPAREN:// )
			TODO
			break;
		case MUL:	// *
			TODO
			break;
		case ADD:	// +
			TODO
			break;
		case SUB:	// -
			TODO
			break;
		case DIV:	// /
			TODO
			break;
		case LT:	// <
			TODO
			break;
		case ASSIGN:// =
			TODO
			break;
		case GT:	// >
			TODO
			break;
		case QUEST:	// ? 
			TODO
			break;
		case XOR:	// ^
			TODO
			break;
		case BOR:	// |
			TODO
			break;
		case BNOT:	// ~ 
			TODO
			break;
		case LBRACK:// [
			TODO
			break;
		case RBRACK:// ]
			TODO
			break;

		case ADD_ASS:	// +=
			TODO
			break;

		case AND:		// &&
			TODO
			break;
		case AND_ASS:	// &=
			TODO
			break;

		case CP_ASS:	// [*]=
			TODO
			break;
		case CRS_PROD:	// [*]
			TODO
			break;

		case DEC:		// --
			TODO
			break;
		case DIV_ASS:	// /=
			TODO
			break;
		case DOT_ASK:	// .*
			TODO
			break;
		case DOT_DOT:	// ..
			TODO
			break;
		case DOT_PROD:	// [.]
			TODO
			break;
		case DP_ASS:	// [.]=
			TODO
			break;

		case EQ: 		// ==
			TODO
			break;
		case EXP:		// **
			TODO
			break;
		case EXP_ASS:	// **=
			TODO
			break;

		case GE:		// >=
			TODO
			break;

		case INC:		// ++
			TODO
			break;

		case LE:		// <=
			TODO
			break;

		case M_DIV:		// [/]
			TODO
			break;
		case MD_ASS:	// [/]=
			TODO
			break;
		case MOD_ASS:	// %=
			TODO
			break;
		case MUL_ASS:	// *=
			TODO
			break;
		case M_EXP:		// [**]
			TODO
			break;
		case ME_ASS:	// [**]=
			TODO
			break;
		case MPTR:		// ->*
			TODO
			break;

		case NE:		// !=
			TODO
			break;

		case OR:		// ||
			TODO
			break;
		case OR_ASS:	// |=
			TODO
			break;

		case PARAM_ASS:	// :=
			TODO
			break;
		case PTR:		// ->
			TODO
			break;

		case QUAL:		// ::
			TODO
			break;

		case SLFT:		// <<
			TODO
			break;
		case SLFT_ASS:	// <<=
			TODO
			break;
		case SRGHT:		// >>
			TODO
			break;
		case SRGHT_ASS:	// >>=
			TODO
			break;
		case SS:		// <=>
			TODO
			break;
		case SUB_ASS:	// -=
			TODO
			break;

		case TIL_ASS:	// ~=
			TODO
			break;

		case XOR_ASS:	// ^=
			TODO
			break;

		case FUN_NAME:
			TODO
			break;
		case FUNCTION_NAME:
			TODO
			break;
		case NAMESPACE_NAME:
			TODO
			break;
		case VARIABLE_NAME:
			TODO
			break;
		case ID:
			TODO
			break;

		case _E:		// .e
			TODO
			break;
		case FALSE:
			TODO
			break;
		case _GAMMA:	// .gamma
			TODO
			break;
		case _I:		// .i
			TODO
			break;
		case _INF:		// .inf
			TODO
			break;
		case _NAN:		// .nan
			TODO
			break;
		case _PHI:		// .phi
			TODO
			break;
		case _PI:		// .pi
			TODO
			break;
		case TRUE:		
			TODO
			break;
		case THIS:
			TODO
			break;
		case CHAR_LIT:		// 'x'
			TODO
			break;
		case DATETIME_LIT:	// d"YYYY-MM-DD:HH:MM:SS[:sssssssss]"
			TODO
			break;
		case DATE_LIT:		// d"YYYY-MM-DD"
			TODO
			break;
		case DAYS_LIT:       // 111d
			TODO
			break;
		case FLOAT32_LIT:
			TODO
			break;
		case FLOAT64_LIT:
			TODO
			break;
		case FLOAT80_LIT:
			TODO
			break;
		case HOURS_LIT:     // 111h
			TODO
			break;
		case INT8_LIT:      // 1111
			TODO
			break;
		case INT16_LIT:     // 1111
			TODO
			break;
		case INT32_LIT:     // 1111
			TODO
			break;
		case INT64_LIT:     // 1111
			TODO
			break;
		case INTEGER_LIT:   // 765 432 109 876 543 210
			TODO
			break;
		case LSTRING_LIT:   // l"sss"
			TODO
			break;
		case LTSTRING_LIT:  // t"aaa"
			TODO
			break;
		case MINS_LIT:      // 111m
			TODO
			break;
		case NAT_LIT:       // 1212u
			TODO
			break;
		case Q_LIT:         // 111q
			TODO
			break;
		case REAL_LIT:      // 123r
			TODO
			break;
		case REGEXP_LIT:    // re"s*"
			TODO
			break;
		case SECS_LIT:      // 111.123s
			TODO
			break;
		case STRING_LIT:    // "ssss"
			TODO
			break;
		case TIME_LIT:      // t"HH:MM:SS:sssssssss"
			TODO
			break;
		case UINT8_LIT:     // 111u
			TODO
			break;
		case UINT16_LIT:    // 111u
			TODO
			break;
		case UINT32_LIT:    // 111u
			TODO
			break;
		case UINT64_LIT:    // 111u
			TODO
			break;
    	case YEARS_LIT:     // 111y
			TODO
			break;

		case ALIGNAS:
			TODO
			break;
		case ALIGNOF:
			TODO
			break;
		case DELETE:
			TODO
			break;
		case EVAL:
			TODO
			break;
		case FILTER:
			TODO
			break;
		case IN:
			TODO
			break;
		case IS_VOID:
			TODO
			break;
		case INSERT:
			TODO
			break;
		case NEW:
			TODO
			break;
		case REDUCE:
			TODO
			break;
		case SELECT:
			TODO
			break;
		case SIZEOF:
			TODO
			break;
		case TYPEID:
			TODO
			break;
		case UPDATE:
			TODO
			break;
		}
		lex(token, this );	
	}

	return false;
}

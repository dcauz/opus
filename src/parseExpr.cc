
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
		case id2ui(COMMA):
			TODO
			break;
		case id2ui(SCOLON):
printf( "%s):%d\n", __FILE__, __LINE__ );
			// *expr = new Literal();
printf( "%s):%d\n", __FILE__, __LINE__ );
			return true;

		case id2ui(LBRACE):// {
			TODO
			break;
		case id2ui(RBRACE):// }
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
		case id2ui(NOT):	// !
			TODO
			break;
		case id2ui(WEAK): 
			TODO
			break;
		case id2ui(MOD):	// %
			TODO
			break;
		case id2ui(BAND):	// &
			TODO
			break;
		case id2ui(LPAREN):// (
			TODO
			break;
		case id2ui(RPAREN):// )
			TODO
			break;
		case id2ui(MUL):	// *
			TODO
			break;
		case id2ui(ADD):	// +
			TODO
			break;
		case id2ui(SUB):	// -
			TODO
			break;
		case id2ui(DIV):	// /
			TODO
			break;
		case id2ui(LT):	// <
			TODO
			break;
		case id2ui(ASSIGN):// =
			TODO
			break;
		case id2ui(GT):	// >
			TODO
			break;
		case id2ui(QUEST):	// ? 
			TODO
			break;
		case id2ui(XOR):	// ^
			TODO
			break;
		case id2ui(BOR):	// |
			TODO
			break;
		case id2ui(BNOT):	// ~ 
			TODO
			break;
		case id2ui(LBRACK):// [
			TODO
			break;
		case id2ui(RBRACK):// ]
			TODO
			break;

		case id2ui(ADD_ASS):	// +=
			TODO
			break;

		case id2ui(AND):		// &&
			TODO
			break;
		case id2ui(AND_ASS):	// &=
			TODO
			break;

		case id2ui(CP_ASS):	// [*]=
			TODO
			break;
		case id2ui(CRS_PROD):	// [*]
			TODO
			break;

		case id2ui(DEC):		// --
			TODO
			break;
		case id2ui(DIV_ASS):	// /=
			TODO
			break;
		case id2ui(DOT_ASK):	// .*
			TODO
			break;
		case id2ui(DOT_DOT):	// ..
			TODO
			break;
		case id2ui(DOT_PROD):	// [.]
			TODO
			break;
		case id2ui(DP_ASS):	// [.]=
			TODO
			break;

		case id2ui(EQ): 		// ==
			TODO
			break;
		case id2ui(EXP):		// **
			TODO
			break;
		case id2ui(EXP_ASS):	// **=
			TODO
			break;

		case id2ui(GE):		// >=
			TODO
			break;

		case id2ui(INC):		// ++
			TODO
			break;

		case id2ui(LE):		// <=
			TODO
			break;

		case id2ui(M_DIV):		// [/]
			TODO
			break;
		case id2ui(MD_ASS):	// [/]=
			TODO
			break;
		case id2ui(MOD_ASS):	// %=
			TODO
			break;
		case id2ui(MUL_ASS):	// *=
			TODO
			break;
		case id2ui(M_EXP):		// [**]
			TODO
			break;
		case id2ui(ME_ASS):	// [**]=
			TODO
			break;
		case id2ui(MPTR):		// ->*
			TODO
			break;

		case id2ui(NE):		// !=
			TODO
			break;

		case id2ui(OR):		// ||
			TODO
			break;
		case id2ui(OR_ASS):	// |=
			TODO
			break;

		case id2ui(PARAM_ASS):	// :=
			TODO
			break;
		case id2ui(PTR):		// ->
			TODO
			break;

		case id2ui(QUAL):		// ::
			TODO
			break;

		case id2ui(SLFT):		// <<
			TODO
			break;
		case id2ui(SLFT_ASS):	// <<=
			TODO
			break;
		case id2ui(SRGHT):		// >>
			TODO
			break;
		case id2ui(SRGHT_ASS):	// >>=
			TODO
			break;
		case id2ui(SS):		// <=>
			TODO
			break;
		case id2ui(SUB_ASS):	// -=
			TODO
			break;

		case id2ui(TIL_ASS):	// ~=
			TODO
			break;

		case id2ui(XOR_ASS):	// ^=
			TODO
			break;

		case id2ui(FUN_NAME):
			TODO
			break;
		case id2ui(FUNCTION_NAME):
			TODO
			break;
		case id2ui(NAMESPACE_NAME):
			TODO
			break;
		case id2ui(VARIABLE_NAME):
			TODO
			break;
		case id2ui(ID):
			TODO
			break;

		case id2ui(_E):		// .e
			TODO
			break;
		case id2ui(FALSE):
			TODO
			break;
		case id2ui(_GAMMA):	// .gamma
			TODO
			break;
		case id2ui(_I):		// .i
			TODO
			break;
		case id2ui(_INF):		// .inf
			TODO
			break;
		case id2ui(_NAN):		// .nan
			TODO
			break;
		case id2ui(_PHI):		// .phi
			TODO
			break;
		case id2ui(_PI):		// .pi
			TODO
			break;
		case id2ui(TRUE):		
			TODO
			break;
		case id2ui(THIS):
			TODO
			break;
		case id2ui(CHAR_LIT):		// 'x'
			TODO
			break;
		case id2ui(DATETIME_LIT):	// d"YYYY-MM-DD:HH:MM:SS[:sssssssss]"
			TODO
			break;
		case id2ui(DATE_LIT):		// d"YYYY-MM-DD"
			TODO
			break;
		case id2ui(DAYS_LIT):       // 111d
			TODO
			break;
		case id2ui(FLOAT32_LIT):
			TODO
			break;
		case id2ui(FLOAT64_LIT):
			TODO
			break;
		case id2ui(FLOAT80_LIT):
			TODO
			break;
		case id2ui(HOURS_LIT):     // 111h
			TODO
			break;
		case id2ui(INT8_LIT):      // 1111
			TODO
			break;
		case id2ui(INT16_LIT):     // 1111
			TODO
			break;
		case id2ui(INT32_LIT):     // 1111
			TODO
			break;
		case id2ui(INT64_LIT):     // 1111
			TODO
			break;
		case id2ui(INTEGER_LIT):   // 765 432 109 876 543 210
			TODO
			break;
		case id2ui(LSTRING_LIT):   // l"sss"
			TODO
			break;
		case id2ui(LTSTRING_LIT):  // t"aaa"
			TODO
			break;
		case id2ui(MINS_LIT):      // 111m
			TODO
			break;
		case id2ui(NAT_LIT):       // 1212u
			TODO
			break;
		case id2ui(Q_LIT):         // 111q
			TODO
			break;
		case id2ui(REAL_LIT):      // 123r
			TODO
			break;
		case id2ui(REGEXP_LIT):    // re"s*"
			TODO
			break;
		case id2ui(SECS_LIT):      // 111.123s
			TODO
			break;
		case id2ui(STRING_LIT):    // "ssss"
			TODO
			break;
		case id2ui(TIME_LIT):      // t"HH:MM:SS:sssssssss"
			TODO
			break;
		case id2ui(UINT8_LIT):     // 111u
			TODO
			break;
		case id2ui(UINT16_LIT):    // 111u
			TODO
			break;
		case id2ui(UINT32_LIT):    // 111u
			TODO
			break;
		case id2ui(UINT64_LIT):    // 111u
			TODO
			break;
    	case id2ui(YEARS_LIT):     // 111y
			TODO
			break;

		case id2ui(ALIGNAS):
			TODO
			break;
		case id2ui(ALIGNOF):
			TODO
			break;
		case id2ui(DELETE):
			TODO
			break;
		case id2ui(EVAL):
			TODO
			break;
		case id2ui(FILTER):
			TODO
			break;
		case id2ui(IN):
			TODO
			break;
		case id2ui(IS_VOID):
			TODO
			break;
		case id2ui(INSERT):
			TODO
			break;
		case id2ui(NEW):
			TODO
			break;
		case id2ui(REDUCE):
			TODO
			break;
		case id2ui(SELECT):
			TODO
			break;
		case id2ui(SIZEOF):
			TODO
			break;
		case id2ui(TYPEID):
			TODO
			break;
		case id2ui(UPDATE):
			TODO
			break;
		}
		lex(token, this );	
	}

	return false;
}

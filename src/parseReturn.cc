#include "parser.h"


/**
Syntax:

return
	: RETURN expr ';'
	| RETURN ';'
*/
bool Parser::parseReturn( Return ** r )
{
PENTER
	Token lval;

	lex( lval, this );

	if( lval.id() == ID::SCOLON )
		*r = new Return( 0, 0, nullptr );
	else
	{
		Expr * ex;
		int termTok;
		Token tt;
		bool rc = parseExpr( &ex, tt );

		if( rc )
		{
			if( termTok != ';' )
			{
				parserError( "; missing from return statement" );
				return false;
			}

			*r = new Return( 0, 0, ex );
		}
		else
			return rc;
	}

	return true;
}


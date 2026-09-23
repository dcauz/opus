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
		bool rc = parseExpr( &ex, lval );

		if( rc )
		{
			if( lval.id() != ID::SCOLON )
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


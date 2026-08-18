#include "parser.h"

/** 
Syntax:

case
	: CASE expr ':'
*/

bool Parser::parseCase( Case ** cs )
{
PENTER
	// get expr
	Expr * ex;
	Token tt;
	bool rc = parseExpr( &ex, tt );	
	int termTok = 0;

	if(rc)
	{
		// get :
		if( termTok != ':' )
		{
			parserError( ": missing from case statement" );
			return false;
		}

		*cs = new Case( 0, 0, ex );
	}

	return rc;
}


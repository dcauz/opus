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

	lex( tt, this );
	bool rc = parseExpr( &ex, ETC::COLON, STR::NONE, tt, 0, 0 );	

	if(rc)
	{
		// get :
		if( tt.id() != ID::COLON )
		{
			parserError( ": missing from case statement" );
			return false;
		}

		*cs = new Case( 0, 0, ex );
	}

	return rc;
}


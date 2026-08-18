#include "parser.h"
#include "token.h"


/**
Syntax:

do
	: DO block WHILE '(' expr ')'

*/
bool Parser::parseDo( Do ** un )
{
PENTER
	Token lval;

	// get block
	Statement * statement;
	bool rc = parseStatement( &statement );

	if(rc)
	{
		// get WHILE
		lex( lval, this );
		if( lval.id != WHILE )
		{
			parserError( "do block is not followed by while" );
			return false;
		}

		// get (
		lex( lval, this );
		if( lval.id != '(' )
		{
			parserError( "do .. while is not followed by (" );
			return false;
		}

		// get expr
		Expr * ex;
		int termTok;
		Token tt;
		rc = parseExpr( &ex,tt );

		if( rc )
		{
			if( termTok != ')' )
			{
				parserError( "do .. while statement is not terminated by )" );
				return false;
			}

			*un = new Do( 0, 0, ex, statement );
		}
		else
			return rc;
	}

	return true;
}


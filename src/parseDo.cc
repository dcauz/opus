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
		if( lval.id() != ID::WHILE )
		{
			parserError( "do block is not followed by while" );
			return false;
		}

		// get (
		lex( lval, this );
		if( lval.id() != ID::LPAREN )
		{
			parserError( "do .. while is not followed by (" );
			return false;
		}

		// get expr
		Expr * ex;
		Token tt;
		rc = parseExpr( &ex, ET::RPAREN, tt, 0, 0 );

		if( rc )
		{
			if( tt.id() != ID::RPAREN )
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


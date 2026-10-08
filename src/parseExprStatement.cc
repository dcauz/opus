#include "parser.h"

#include <iostream>

/**
Syntax:

exprStatement
	: expr ';'	
*/

bool Parser::parseExprStatement( ExprStatement ** es, Token & tok )
{
PENTER
	
	if( tok.id() == ID::NIL )
		lex( tok, this );

	Expr * ex;
	bool rc = parseExpr( &ex, ET::SCOLON, tok, 0, 0 );

	if( rc )
	{
		if( tok.id() != ID::SCOLON )
		{
			parserError( "Expression statement is not terminated by ;" );
			return false;
		}

		*es = new ExprStatement( 0, 0, ex );
	}
	else
		return rc;

	return true;
}

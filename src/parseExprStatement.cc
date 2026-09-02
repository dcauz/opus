#include "parser.h"

#include <iostream>

/**
Syntax:

exprStatement
	: expr ';'	
*/

bool Parser::parseExprStatement( ExprStatement ** es )
{
PENTER
	// get expr
	Expr * ex;
	Token termTok;
	bool rc = parseExpr( &ex, termTok );

	if( rc )
	{
		if( termTok.id() != ID::SCOLON )
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


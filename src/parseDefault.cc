#include "parser.h"

/**
Syntax:

default
	: DEFAULT  ':'

*/
bool Parser::parseDefault( Default ** df )
{
PENTER
	// get :
	Token	val;
	lex( val, this );

	if( val.id() != ID::COLON )
	{
		parserError( "default token is not followed by :" );
		return false;
	}

	*df = new Default( 0, 0 );

	return true;
}


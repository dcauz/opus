#include "parser.h"

/**
Syntax:

continue
	: CONTINUE ';'

*/
bool Parser::parseContinue( Continue ** con )
{
PENTER
	Token	lval;
	lex( lval, this );

	if( lval.id() != ID::SCOLON )
	{
		parserError( "continue was not followed by ;" );
		return false;
	}
	*con = new Continue( 0 );

	return true;
}

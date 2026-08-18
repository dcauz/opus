#include "parser.h"


/**
Syntax:

break
	: BREAK ';'
*/
bool Parser::parseBreak( Break ** br )
{
PENTER
	Token	lval;
	lex( lval, this );

	if( lval.id != ';' )
	{
		parserError( "break was not followed by ;" );
		return false;
	}
	*br = new Break( 0 );

	return true;
}

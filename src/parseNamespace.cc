#include "parser.h"
#include "token.h"


/**
Syntax:

namespace
    : NAMESPACE NAME block

*/
bool Parser::parseNamespace( Namespace ** ns )
{
PENTER
	Token lval;
	lex( lval, this );

	if( lval.id != ID )
	{
		parserError( "namespace was not followed by a name" );
		return false;
	}

	Statement * statement;
	bool rc = parseStatement( &statement );

	if(rc)
		*ns = new Namespace( 0, 0, lval.lexium, statement );

	return true;
}

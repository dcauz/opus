#include "parser.h"
#include "token.h"

/**
Syntax:

alias
    : ALIAS NAME '=' type ';'
    | ALIAS NAME '=' functionType ';'

functionType
    : type '(' args ')'
    | declarators type '(' args ')'

*/

bool Parser::parseAlias( Alias ** alias )
{
PENTER
	Token	lval1;

	lex( lval1, this );

	if( lval1.id != ID )
	{
		parserError( "ALIAS NAME expected" );
		return false;
	}

	Token	lval2;
	lex( lval2, this );

	if( lval2.id != '=' )
	{
		parserError( "ALIAS NAME = expected" );
		return false;
	}

	Type * ty;
	int termToken;
	unsigned declarators;
	bool rc = parseType( declarators, &ty );

	if( termToken != ';' )
	{
		parserError( "ALIAS statement was not terminated with ;" );
		return false;
	}
	if(rc)
		*alias = new Alias( 0, 0, lval1.lexium, ty );
	else
		return false;

	return true;
}

#include "parser.h"
#include "token.h"


/**
Syntax:

pureFunc
    : FUN type NAME '(' args ')' '=' expr

*/
bool Parser::parsePureFunction( PureFuncDef ** )
{
PENTER
	Type   * type;
	Token    token;
	unsigned declarators;

	bool rc = parseType( token, declarators, &type );
	if(!rc)
		return rc;

	if( token.id() != ID::ID )
	{
		parserError( "Pure function name is missing" );
		return false;
	}

	lex( token, this );
	if( token.id() != ID::LPAREN )
	{
		parserError( "Pure function missing ( character" );
		return false;
	}

	std::vector<Arg *> * args;
	rc = parseArgs( token, &args );

	if( rc && token.id() != ID::RPAREN )
		parserError( "Pure function missing ) character" );

	lex( token, this );
	if( token.id() != ID::ASSIGN )
	{
		parserError( "Pure function missing = character" );
		return false;
	}

	Expr * expr;
	Token tt;
	rc = parseExpr( &expr, ET::SCOLON, tt, 0, 0 );

	if( rc && token.id() != ID::SCOLON )
		parserError( "Pure function is not terminated by ; character" );

	return rc;
}


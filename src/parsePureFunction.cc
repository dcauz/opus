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
	Type	* type;
	ID termToken;
	unsigned declarators;
	bool rc = parseType( declarators, &type );
	if(!rc)
		return rc;

	if( termToken != ID::ID )
	{
		parserError( "Pure function name is missing" );
		return false;
	}

	Token	lval;
	lex( lval, this );
	if( lval.id() != ID::LPAREN )
	{
		parserError( "Pure function missing ( character" );
		return false;
	}

	std::vector<up<Arg>> * args;
	rc = parseArgs( &args );

	if( rc && termToken != ID::RPAREN )
		parserError( "Pure function missing ) character" );

	lex( lval, this );
	if( lval.id() != ID::ASSIGN )
	{
		parserError( "Pure function missing = character" );
		return false;
	}

	Expr * expr;
	Token tt;
	rc = parseExpr( &expr, tt );

	if( rc && termToken != ID::SCOLON )
		parserError( "Pure function is not terminated by ; character" );

	return rc;
}


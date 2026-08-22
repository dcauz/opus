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
	int termToken;
	unsigned declarators;
	bool rc = parseType( declarators, &type );
	if(!rc)
		return rc;

	if( termToken != id2ui(ID) )
	{
		parserError( "Pure function name is missing" );
		return false;
	}

	Token	lval;
	lex( lval, this );
	if( lval.id != '(' )
	{
		parserError( "Pure function missing ( character" );
		return false;
	}

	std::vector<up<Arg>> * args;
	rc = parseArgs( &args );

	if( rc && termToken != ')' )
		parserError( "Pure function missing ) character" );

	lex( lval, this );
	if( lval.id != '=' )
	{
		parserError( "Pure function missing = character" );
		return false;
	}

	Expr * expr;
	Token tt;
	rc = parseExpr( &expr, tt );

	if( rc && termToken != ';' )
		parserError( "Pure function is not terminated by ; character" );

	return rc;
}


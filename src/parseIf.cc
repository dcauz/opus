#include "parser.h"
#include "token.h"


/**
Syntax:

if
    : IF '(' expr ')' statement
    | IF '(' expr ')' statement ELSE statement
    | IF '(' variableDef ')' statement
    | IF '(' variableDef ')' statement ELSE statement

variableDef
    : type NAME '=' expr
    | declarators type NAME '=' expr
*/

bool Parser::parseIf( If ** i )
{
PENTER
	Token	lval;
	lex( lval, this );
	if( lval.id != '(' )
	{
		parserError( "catch is not followed by ( character" );
		return false;
	}

	// Get expr or varDef
	VarDef * varDef;
	Expr * expr;
	int termToken;
	bool rc = parseVarDefOrExpr( &varDef, &expr );

	if( !rc )
		return false;

	// ensure terminator is )
	if( termToken != ')' )
	{
		parserError( "if clause is not terminated by ) character" );
		return false;
	}
	
	// get statement
	Statement * istatement;
	rc = parseStatement( &istatement );
	if(!rc)
		return false;
	
    lex( lval, this );
	if( lval.id != ELSE )
	{
		lookahead = lval;

		if( expr )
			*i = new If( 0, 0, expr, istatement );
		else
			*i = new If( 0, 0, varDef, istatement );

		return true;
	}

	Statement * estatement = nullptr;
	rc = parseStatement( &estatement );

	if(rc)
	{
		if( expr )
			*i = new If( 0, 0, expr, 
				istatement, estatement );
		else
			*i = new If( 0, 0, varDef, 
				istatement, estatement );
	}

	return rc;
}

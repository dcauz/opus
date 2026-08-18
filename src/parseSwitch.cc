#include "parser.h"


/**
Syntax:

switch
    | SWITCH '(' expr ')' block
    | SWITCH '(' variableDef ')' block
*/
bool Parser::parseSwitch( Switch ** sw )
{
PENTER
	Token val;
	lex( val, this );

	if( val.id != '(' )
	{
		parserError( "switch must be immediately followed by (" );
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
		parserError( "switch clause is not terminated by ) character" );
		return false;
	}

	// get statement
	Statement * statement;
	rc = parseStatement( &statement );
	if(!rc)
		return false;

	if(varDef)
		*sw = new Switch( 0, 0, varDef, statement );
	else
		*sw = new Switch( 0, 0, expr, statement );

	return rc;
}

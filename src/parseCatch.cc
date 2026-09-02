#include "parser.h"
#include "token.h"


/**
Syntax:

catchBlock
    : CATCH '(' variableDef ')' block
    | CATCH '(' DOT_DOT_DOT ')' block

*/
bool Parser::parseCatch( CatchBlock ** cb )
{
PENTER
	Token	lval;
	lex( lval, this );

	if( lval.id() != ID::LPAREN )
	{
		parserError( "catch is not followed by ( character" );
		return false;
	}

	lex( lval, this );

	VarDef	* varDef = nullptr;
	if( lval.id() != ID::DOT_DOT_DOT )
	{
		lookahead = std::move(lval);

		int termToken;
		bool rc = parseVariableDef( &varDef );
		if(!rc)
			return false;
		if(termToken != ')')
		{
			parserError( "missing ) character in catch statement" );
			return false;
		}
	}
	else
	{
		Token	lval;
		lex( lval, this );
		if(lval.id() != ID::RPAREN)
		{
			parserError( "missing ) character in catch statement" );
			return false;
		}
	}

	// get statement
	Statement * statement;
    bool rc = parseStatement( &statement );

	if(rc)
		*cb = new CatchBlock( 0, 0, varDef, statement );

	return rc;
}


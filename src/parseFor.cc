#include "parser.h"


/**
Syntax:

for
	| FOR '('	  ';'	   ';'	     ')' statement				1
	| FOR '('	  ';'	   ';' expr  ')' statement				2
	| FOR '('	  ';' expr ';'	     ')' statement				3
	| FOR '('	  ';' expr ';' expr  ')' statement				4

	| FOR '(' expr ';'	    ';'	     ')' statement				5
	| FOR '(' expr ';'	    ';' expr ')' statement				6
	| FOR '(' expr ';' expr ';'	     ')' statement				7
	| FOR '(' expr ';' expr ';' expr ')' statement				8

	| FOR '(' variableDef ';'	   ';'	    ')' statement		9
	| FOR '(' variableDef ';'	   ';' expr ')' statement		10
	| FOR '(' variableDef ';' expr ';'	    ')' statement		11
	| FOR '(' variableDef ';' expr ';' expr ')' statement		12

	| FOR '(' variableDef ':' expr ')' statement				13

variableDef
	: type NAME
	| type NAME '=' expr
	| declarators type NAME
	| declarators type NAME '=' expr
*/

bool Parser::parseFor( For ** f )
{
PENTER
	Token lval;
	lex( lval, this );
	if( lval.id() != ID::LPAREN )
	{
		parserError( "catch is not followed by ( character" );
		return false;
	}
	lex( lval, this );

	Expr	* expr1  = nullptr;
	Expr	* expr2  = nullptr;
	Expr	* expr3  = nullptr;
	VarDef	* varDef = nullptr;

	bool rc = true;

	// Cases 5-13
	if( lval.id() != ID::SCOLON )
	{

		rc = parseVarDefOrExpr( lval, ETC::SCOLON, &varDef, &expr1 );
		if( !rc )
			return false;
	}

	// Cases 1-12
	if( lval.id() == ID::SCOLON )
	{
		lex( lval, this );

		// cases 3,4,7,8,11,12
		if( lval.id() != ID::SCOLON )
		{
			rc = parseExpr( &expr2, ETC::SCOLON, STR::NOT_IN_SELECT, lval, 0, 0 );

			if(!rc)
				return false;
		}

		lex( lval, this );

		// cases  2,4,6,8,10,12
		if( lval.id() != ID::RPAREN )
		{
			rc = parseExpr( &expr3, ETC::RPAREN, STR::NOT_IN_SELECT, lval, 0, 0 );

			if(!rc)
				return false;

			if( lval.id() != ID::RPAREN )
			{
				parserError( "for statement missing ) character" );
				return false;
			}
		}
	}
	else if( lval.id() == ID::COLON )	// case 13
	{
		Expr	* cExpr;
		lex( lval, this );
		rc = parseExpr( &cExpr, ETC::RPAREN, STR::NOT_IN_SELECT, lval, 0, 0 );

		if(!rc)
			return false;
		if( lval.id() != ID::RPAREN )
		{
			parserError( "for statement missing ) character" );
			return false;
		}
	}
	else
	{
		parserError( "; or : character separating for clauses" );
		return false;
	}

	Statement * statement = nullptr;
	rc = parseStatement( &statement );

	if(rc)
	{
		if( expr1 )
			*f = new For( 0, 0, expr1, expr2, expr3, statement );
		else
			*f = new For( 0, 0, varDef, expr2, expr3, statement );
	}

	return rc;
}


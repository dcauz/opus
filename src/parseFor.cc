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
printf( "%s:%d\n", __FILE__, __LINE__ );
	lex( lval, this );

	Expr	* expr1  = nullptr;
	Expr	* expr2  = nullptr;
	Expr	* expr3  = nullptr;
	VarDef	* varDef = nullptr;

	bool rc = true;

	// Cases 5-13
	if( lval.id() != ID::SCOLON )
	{
printf( "%s:%d\n", __FILE__, __LINE__ );

		rc = parseVarDefOrExpr( lval, ET::SCOLON, &varDef, &expr1 );
		if( !rc )
			return false;
	}

	// Cases 1-12
	if( lval.id() == ID::SCOLON )
	{
printf( "%s:%d\n", __FILE__, __LINE__ );
		lex( lval, this );

		// cases 3,4,7,8,11,12
		if( lval.id() != ID::SCOLON )
		{
printf( "%s:%d\n", __FILE__, __LINE__ );
			rc = parseExpr( &expr2, ET::SCOLON, lval, 0, 0 );

			if(!rc)
				return false;
		}

		lex( lval, this );

		// cases  2,4,6,8,10,12
		if( lval.id() != ID::RPAREN )
		{
printf( "%s:%d\n", __FILE__, __LINE__ );
			rc = parseExpr( &expr3, ET::RPAREN, lval, 0, 0 );

			if(!rc)
				return false;

			if( lval.id() != ID::RPAREN )
			{
printf( "%s:%d\n", __FILE__, __LINE__ );
				parserError( "for statement missing ) character" );
				return false;
			}
		}
	}
	else if( lval.id() == ID::COLON )	// case 13
	{
printf( "%s:%d\n", __FILE__, __LINE__ );
		Expr	* cExpr;
		lex( lval, this );
		rc = parseExpr( &cExpr, ET::RPAREN, lval, 0, 0 );

		if(!rc)
			return false;
		if( lval.id() != ID::RPAREN )
		{
printf( "%s:%d\n", __FILE__, __LINE__ );
			parserError( "for statement missing ) character" );
			return false;
		}
	}
	else
	{
printf( "%s:%d\n", __FILE__, __LINE__ );
		parserError( "; or : character separating for clauses" );
		return false;
	}

printf( "%s:%d\n", __FILE__, __LINE__ );
	Statement * statement = nullptr;
	rc = parseStatement( &statement );

	if(rc)
	{
printf( "%s:%d\n", __FILE__, __LINE__ );
		if( expr1 )
			*f = new For( 0, 0, expr1, expr2, expr3, statement );
		else
			*f = new For( 0, 0, varDef, expr2, expr3, statement );
	}
printf( "%s:%d\n", __FILE__, __LINE__ );

	return rc;
}


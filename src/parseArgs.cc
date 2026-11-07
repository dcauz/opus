#include "parser.h"
#include "token.h"

#include <vector>
#include <memory>


using namespace	std;


/**
Syntax:

args
	: args ',' arg
	| arg
	;

arg
	: declarators type NAME
	| type NAME
	| declarators type
	| type
	| VA_ARGS
	| declarators type NAME = expr
	| type NAME = expr
	| declarators type = expr
	| type = expr
	| VA_ARGS
	;
*/

bool Parser::parseArgs( Token & lval, vector<Arg *> ** args )
{
PENTER
	*args = new vector<Arg *>();	

	Type * type;
	Expr * expr;
	string argName;

	while(true)
	{
		// check for VA_ARGS
		lex( lval, this );

		if( lval.id() == ID::VA_ARGS )
		{
			// Use nullptr to denote VA_ARGS
			(*args)->push_back(nullptr);

			// It must be immediately followed by )
			lex( lval, this );
			if( lval.id() == ID::RPAREN )
			{
				return true;
			}
			else
			{
				parserError( "The VA_ARGS must be the last argument of a function" );
				return false;
			}
		}
		else if ( lval.id() == ID::RPAREN )
		{
			// no args ...
			return true;
		}
		else
		{
			// push it back
			lookahead = std::move(lval);
		}

		unsigned declarators;
		bool rc = parseType( lval, declarators, &type );

		if( lval.id() == ID::COMMA )
		{
			(*args)->push_back( new Arg( 0, 0, declarators, type, argName ) );
			declarators = 0;
		}
		else if( lval.id() == ID::RPAREN )
		{
			(*args)->push_back( new Arg( 0, 0, declarators, type, argName ) );
			declarators = 0;
			break;
		}
		else if( lval.id() == ID::ID )
		{
			argName = lval.idLexium();

			// if new token is =, get initializer
			lex( lval, this );
			if( lval.id() == ID::ASSIGN )
			{
				Token tt;
				rc = parseExpr( &expr, ET::COMMA_OR_RPAREN, tt, 0, 0 );

				if(!rc)
					return false;

				if( lval.id() == ID::RPAREN )
				{
					(*args)->push_back( new Arg( 0, 0, declarators, type, argName, expr ) );
					declarators = 0;
					break;
				}
				else if( lval.id() == ID::COMMA )
				{
					(*args)->push_back( new Arg( 0, 0, declarators, type, argName, expr ) );
					declarators = 0;
				}
				else
				{
					parserError( "Arg was not followed by , or )" );
					return false;
				}
			}
			else if( lval.id() == ID::RPAREN )
			{
				(*args)->push_back( new Arg( 0, 0, declarators, type, argName ) );
				declarators = 0;
				break;
			}
			else if( lval.id() == ID::COMMA )
			{
				(*args)->push_back( new Arg( 0, 0,
					declarators, type, argName ) );
				declarators = 0;
			}
			else
			{
				parserError( "Arg was not followed by , or )" );
				return false;
			}
		}
		else
		{
			parserError( "Arg was not followed by , or )" );
			return false;
		}
	}

	return false;
}

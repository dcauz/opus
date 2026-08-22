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

bool Parser::parseArgs( vector<up<Arg>> ** args )
{
PENTER
	*args = new vector<up<Arg>>();	

	Type * type;
	Expr * expr;
	string argName;
	int    termToken;

	while(true)
	{
		// check for VA_ARGS
		Token lval;
		lex( lval, this );

		if( lval.id == id2ui(VA_ARGS) )
		{
			// Use nullptr to denote VA_ARGS
			(*args)->push_back(nullptr);

			// It must be immediately followed by )
			lex( lval, this );
			if( lval.id == ')' )
			{
				termToken = lval.id;
				return true;
			}
			else
			{
				parserError( "The VA_ARGS must be the last argument of a function" );
				return false;
			}
		}
		else if ( lval.id == ')' )
		{
			// no args ...
			return true;
		}
		else
		{
			// push it back
			lookahead = lval;
		}

		unsigned declarators;
		bool rc = parseType( declarators, &type );

		if( termToken == ',' )
		{
			(*args)->push_back( std::make_unique<Arg>( 0, 0, declarators, type, argName ) );
			declarators = 0;
		}
		else if( termToken == ')' )
		{
			(*args)->push_back( std::make_unique<Arg>( 0, 0, declarators, type, argName ) );
			declarators = 0;
			break;
		}
		else if( termToken == id2ui(ID) )
		{
			argName = lval.lexium();

			// if new token is =, get initializer
			lex( lval, this );
			if( lval.id == '=' )
			{
				Token tt;
				rc = parseExpr( &expr, tt );

				if(!rc)
					return false;

				if( termToken == ')' )
				{
					(*args)->push_back( std::make_unique<Arg>( 0, 0,
						declarators, type, argName, expr ) );
					declarators = 0;
					break;
				}
				else if( termToken == ',' )
				{
					(*args)->push_back( std::make_unique<Arg>( 0, 0,
						declarators, type, argName, expr ) );
					declarators = 0;
				}
				else
				{
					parserError( "Arg was not followed by , or )" );
					return false;
				}
			}
			else if( termToken == ')' )
			{
				(*args)->push_back( std::make_unique<Arg>( 0, 0,
					declarators, type, argName ) );
				declarators = 0;
				break;
			}
			else if( termToken == ',' )
			{
				(*args)->push_back( std::make_unique<Arg>( 0, 0,
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

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
	: type NAME
	| type
	| VA_ARGS
	| type NAME = expr
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
		lex( lval );

		if( lval.id() == ID::VA_ARGS )
		{
			// Use nullptr to denote VA_ARGS
			(*args)->push_back(nullptr);

			// It must be immediately followed by )
			lex( lval );
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
			pushLookahead(lval);
		}

		bool rc = parseType( lval, &type, ETC::COMMA_RPAREN );

		if( lval.id() == ID::COMMA )
		{
			(*args)->push_back( new Arg( 0, 0, type, argName ) );
		}
		else if( lval.id() == ID::RPAREN )
		{
			(*args)->push_back( new Arg( 0, 0, type, argName ) );
			break;
		}
		else if( lval.id() == ID::ID )
		{
			argName = lval.idLexium();

			// if new token is =, get initializer
			lex( lval );
			if( lval.id() == ID::ASSIGN )
			{
				Token tt;
				rc = parseExpr( &expr, ETC::COMMA_RPAREN, STR::NONE, tt, 0, 0 );

				if(!rc)
					return false;

				if( lval.id() == ID::RPAREN )
				{
					(*args)->push_back( new Arg( 0, 0, type, argName, expr ) );
					break;
				}
				else if( lval.id() == ID::COMMA )
				{
					(*args)->push_back( new Arg( 0, 0, type, argName, expr ) );
				}
				else
				{
					parserError( "Arg was not followed by , or )" );
					return false;
				}
			}
			else if( lval.id() == ID::RPAREN )
			{
				(*args)->push_back( new Arg( 0, 0, type, argName ) );
				break;
			}
			else if( lval.id() == ID::COMMA )
			{
				(*args)->push_back( new Arg( 0, 0, type, argName ) );
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

#include "parser.h"
#include "token.h"


using namespace std;


/**
Syntax:

using
	: USING NAMESPACE NAMESPACE_NAME ';'
	| USING VARIABLE_NAME ';'
	| USING TYPE_NAME ';'
	| USING FUNCTION_NAME ';'

*/
bool Parser::parseUsing( Using ** u, UsingNamespace ** uns )
{
PENTER
	Token lval;

	lex( lval, this );

	if( lval.id == id2ui(NAMESPACE) )
	{
		vector<string>	name;

		while(true)
		{
			lex( lval, this );

			if( lval.id == id2ui(ID) )
			{
				name.push_back(lval.lexium());
				lex( lval, this );

				if( lval.id == id2ui(QUAL) )
				{
					; // no-op
				}
				else if( lval.id == ';' )
				{
					*uns = new UsingNamespace( 0, 0, move(name) );
					return true;
				}
				else
				{
					parserError( "USING NAMESPACE must be followed by NAME [::NAME];" );
					return false;
				}
			}
			else
			{
				parserError( "USING NAMESPACE must be followed by NAME [::NAME];" );
				return false;
			}
		}
	}
	else if( lval.id == id2ui(ID) )
	{
		vector<string>	name;

		while(true)
		{
			name.push_back(lval.lexium());

			lex( lval, this );

			if( lval.id == id2ui(QUAL) )
			{
				lex( lval, this );
				if( lval.id == id2ui(ID) )
				{
					name.push_back(lval.lexium());
					lex( lval, this );
				}
				else if( lval.id == ';' )
				{
					*u = new Using( 0, 0, move(name) );
					return true;
				}
				else
				{
					parserError( "USING must be followed by NAME [::NAME];" );
					return false;
				}
			}
			else
			{
				parserError( "USING must be followed by NAME [::NAME];" );
				return false;
			}
		}
	}
	else
	{
		parserError( "USING must be followed by either namespace or a NAME" );
		return false;
	}
}

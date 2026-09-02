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

	if( lval.id() == ID::NAMESPACE )
	{
		vector<string>	name;

		while(true)
		{
			lex( lval, this );

			if( lval.isId())
			{
				name.push_back(lval.idLexium());
				lex( lval, this );

				if( lval.id() == ID::QUAL )
				{
					; // no-op
				}
				else if( lval.id() == ID::SCOLON )
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
	else if( lval.isId())
	{
		vector<string>	name;

		while(true)
		{
			name.push_back(lval.idLexium());

			lex( lval, this );

			if( lval.id() == ID::QUAL )
			{
				lex( lval, this );
				if( lval.isId() )
				{
					name.push_back(lval.idLexium());
					lex( lval, this );
				}
				else if( lval.id() == ID::SCOLON )
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

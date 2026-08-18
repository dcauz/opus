#include "parser.h"
#include "token.h"


/**
Syntax:

typeParams
	: typeParams ',' typeParam
	| typeParam

typeParam
	: type NAME
	| NAME
*/

bool Parser::parseTypeParams( std::vector<up<TemplateParam>> ** typeParams )
{
PENTER
	*typeParams = new std::vector<up<TemplateParam>>();

	while( true )
	{
		std::string	name;
		Type	* type;

		Token lval;
		lex( lval, this );

		if( lval.id == ID )
		{
			std::string name = lval.lexium;

			// TODO: Check to see if it is a type-name
			
			name = lval.lexium;

			lex( lval, this );

			// If two names, assume the first one is a type name with a forward
			// declaration
			if( lval.id == ID )
			{
				std::string name2 = lval.lexium;

				// TODO: set type

				lex( lval, this );

				(*typeParams)->push_back(std::make_unique<TemplateParam>( 0, 0, type, name2 ));

				if( lval.id == ',' )
				{
					; // keep going
				}
				else if( lval.id == '>' )
				{
					return true;
				}
				else
				{
					parserError( "Invalid character followed template parameter name" );
					return false;
				}
			}
			else if( lval.id == ',' )
			{
				(*typeParams)->push_back(std::make_unique<TemplateParam>( 0, 0, name ));
			}
			else if( lval.id == '>' )
			{
				(*typeParams)->push_back(std::make_unique<TemplateParam>( 0, 0, name ));
				return true;
			}
			else
			{
				parserError( "Invalid character followed template parameter name" );
				return false;
			}
		}
		else
		{
            // push it back
            lookahead = lval;

			int termToken;

			unsigned declarators;
			bool rc = parseType( declarators, &type );

			if(!rc)
				return false;

			if( termToken == ID )
			{
				std::string name = lval.lexium;

				(*typeParams)->push_back(std::make_unique<TemplateParam>( 0, 0, type, name ));	

				lex( lval, this );

				if( lval.id == ',' )
				{
					; // keep going
				}
				else if( lval.id == '>' )
				{
					return true;
				}
				else
				{
					parserError( "Invalid character followed template parameter name" );
					return false;
				}
			}
			else
			{
				parserError( "Invalid character followed template parameter type" );
				return false;
			}
		}
	}
	
	return false;
}

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

		if( lval.isId() )
		{
			std::string name = lval.idLexium();

			// TODO: Check to see if it is a type-name
			
			name = lval.idLexium();

			lex( lval, this );

			// If two names, assume the first one is a type name with a forward
			// declaration
			if( lval.isId() )
			{
				std::string name2 = lval.idLexium();

				// TODO: set type

				lex( lval, this );

				(*typeParams)->push_back(std::make_unique<TemplateParam>( 0, 0, type, name2 ));

				if( lval.id() == ID::COMMA )
				{
					; // keep going
				}
				else if( lval.id() == ID::GT )
				{
					return true;
				}
				else
				{
					parserError( "Invalid character followed template parameter name" );
					return false;
				}
			}
			else if( lval.id() == ID::COMMA )
			{
				(*typeParams)->push_back(std::make_unique<TemplateParam>( 0, 0, name ));
			}
			else if( lval.id() == ID::GT )
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
            lookahead = std::move(lval);

			ID termToken;

			unsigned declarators;
			bool rc = parseType( declarators, &type );

			if(!rc)
				return false;

			if( termToken == ID::ID )
			{
				std::string name = lval.idLexium();

				(*typeParams)->push_back(std::make_unique<TemplateParam>( 0, 0, type, name ));	

				lex( lval, this );

				if( lval.id() == ID::COMMA )
				{
					; // keep going
				}
				else if( lval.id() == ID::GT )
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

#include "parser.h"
#include "token.h"


/**
Type parameters appear in the definition of a class, interface, union or relation

Syntax:

typeParams
	: typeParams ',' typeParam
	| typeParam

typeParam
	: NAME 
	: NAME params

params
	: < tempParams >

tempParams
	: tempParam
	| tempParams ',' tempParam

tempParam
	: typeParam
  | expr

terminated by

{
;
extend 
implement

*/

bool Parser::parseTypeParams( std::vector<TemplateParam *> ** typeParams )
{
PENTER
	*typeParams = new std::vector<TemplateParam *>();

	std::string	name;

	while( true )
	{
		Type	* type;

		Token token;
		lex( token, this );
dumpToken( __FILE__, __LINE__, token );
		if( token.isId() )
		{
			std::string name = token.idLexium();

			// TODO: Check to see if it is a type-name
			
			lex( token, this );
dumpToken( __FILE__, __LINE__, token );

			// If two names, assume the first one is a type name with a forward
			// declaration
			if( token.isId() )
			{
				std::string name2 = token.idLexium();

				// TODO: set type

				lex( token, this );
dumpToken( __FILE__, __LINE__, token );

				(*typeParams)->push_back( new TemplateParam( 0, type, name2 ));
			}
			else
			{
dumpToken( __FILE__, __LINE__, token );
				TODO
			}
		}
		else if( token.isType() )
		{
			lex( token, this );
dumpToken( __FILE__, __LINE__, token );

			if( token.isId() )
			{
			  name = token.idLexium();

				// TODO: set type
			}
			else
			{
dumpToken( __FILE__, __LINE__, token );
				TODO
			}
		}
		else if( token.id() == ID::TYPE )
		{
			lex( token, this );
dumpToken( __FILE__, __LINE__, token );

			if( token.isId() )
			{
			  name = token.idLexium();

				// TODO: set type
			}
			else
			{
dumpToken( __FILE__, __LINE__, token );
				TODO
			}
		}
		else if( token.id() == ID::COMMA )
		{
			(*typeParams)->push_back( new TemplateParam( 0, 0, name ));
		}
		else if( token.id() == ID::GT )
		{
			(*typeParams)->push_back( new TemplateParam( 0, 0, name ));
			return true;
		}
		else if( token.id() == ID::SCOLON ) // ;
		{
			lookahead = std::move(token);
			return true;
		}
		else if( token.id() == ID::LBRACE )
		{
			lookahead = std::move(token);
			return true;
		}
		else if( token.is_extend() ) // extend
		{
			lookahead = std::move(token);
			return true;
		}
		else if( token.is_implement() ) // implement
		{
			lookahead = std::move(token);
			return true;
		}
		else
		{
dumpToken( __FILE__, __LINE__, token );
			TODO
		}
	}
	
	return false;
}

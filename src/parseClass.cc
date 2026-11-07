
#include "parser.h"
#include "statement.h"


/**
Syntax:

	class ID[params][extendsOrImplements]
	{
		classBody
	}

params
		< nameList >

extendsOrImplements
	ext
	ext impl
	impl
	impl ext

ext
	extend classIdList

impl
	implement interfaceIdList

classIdList
	CLASS_NAME
	CLASS_NAME < typeList >

interfaceIdList
	INTERFACE_NAME
	INTERFACE_NAME < typeList >

*/

bool Parser::parseClass( Class ** clazz )
{
PENTER
	Token token;

	std::string name;
	int line;
	int column;
	std::vector<TemplateParam *> * tempParams;

	while(true)
	{
	  lex( token, this );
dumpToken( __FILE__, __LINE__, token );
		if( token.id() == ID::LT )
		{
dumpToken( __FILE__, __LINE__, token );
			if(!parseTypeParams( &tempParams ))
			{
				TODO
			}
		}
		else if( token.is_extend() )
		{
dumpToken( __FILE__, __LINE__, token );
			std::vector<TemplateArg *>	* bases;
			if(!parseTypeArgs( &bases, false ) )
			{
				TODO
			}
		}
		else if( token.is_implement() )
		{
dumpToken( __FILE__, __LINE__, token );
			std::vector<TemplateArg *>	* interfaces;
			if(!parseTypeArgs( &interfaces, false ) )
			{
				TODO
			}
		}
		else if( token.isId() )
		{
dumpToken( __FILE__, __LINE__, token );
			name = token.idLexium();
			line = token.line();
			column = token.column();
		}
		else if( token.id() == ID::LBRACE )
		{
dumpToken( __FILE__, __LINE__, token );
			Block * block;			
			if( parseBlock( &block ) )
			{
				*clazz = new Class( line, column, name, nullptr, nullptr, block );
				return true;
			}
			else
			{
dumpToken( __FILE__, __LINE__, token );
TODO
			}
		}
		else
		{
dumpToken( __FILE__, __LINE__, token );
TODO
		}
	}

	return false;
}


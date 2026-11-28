
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
	  lex( token );
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
			Type	* bases;
			lex(token);
			if(!parseType( token, &bases, ETC::SCOLON_RBRACE_IMPLEMENT ) )
			{
				TODO
			}
		}
		else if( token.is_implement() )
		{
dumpToken( __FILE__, __LINE__, token );
			Type	* interfaces;
			lex(token);
			if(!parseType( token, &interfaces, ETC::SCOLON_RBRACE_EXTEND ) )
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
			*clazz = new Class( line, column, name, nullptr, nullptr, nullptr );
			currSymTbl->addType( *clazz );
		}
		else if( token.id() == ID::LBRACE )
		{
dumpToken( __FILE__, __LINE__, token );
			Block * block;			
			if( parseBlock( &block ) )
			{
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


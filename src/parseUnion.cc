#include "parser.h"
#include "token.h"
#include <stdexcept>

/**
Syntax:

union
	: UNION NAME typeParams baseTypes block
	| UNION NAME typeParams block
	| UNION NAME baseTypes block
	| UNION NAME block
	| UNION NAME typeParams baseTypes ';'
	| UNION NAME typeParams ';'
	| UNION NAME baseTypes ';'
	| UNION NAME ';'

*/

using namespace	std;


bool Parser::parseUnion( UnionType ** ut )
{
PENTER
	// UNION token was already read

	// read name
	Token   lval;
	lex( lval, this );
	if( !lval.isId() )
	{
		parserError( "UNION NAME expected" );
		return false;
	}

	lex( lval, this );

	// read type params
	vector<up<TemplateParam>> * typeParams = nullptr;
	if( lval.id() == ID::LT )
	{
		// > is eaten
		if( !parseTypeParams( &typeParams ))
		{
			return false;
		}
	}

	lex( lval, this );

	vector<up<Type>> * bases = nullptr;
//	vector<up<Statement>> * sts = nullptr;

	if( lval.id() == ID::COLON )
	{
		// read base types
		while(true)
		{
			ID termToken;
			unsigned declarators;
			Type	* type;

			if(!parseType( declarators, &type ) )
				return false;
			else
			{
				if( declarators != 0 )
					throw std::runtime_error( "Base type of union definition cannot "
						"contain declarators" );
				else
				{
					if(bases == nullptr )
						bases = new vector<up<Type>>();

					bases->push_back(up<Type>(type));

					if( termToken == ID::COMMA )
						continue;
					else if( termToken == ID::LBRACE )
						goto parseBody;
					else if( termToken == ID::SCOLON )
						goto parseDeclaration;
					else
						throw std::runtime_error( "Unexpected token found in union definition");
				}
			}
		}
	}
	else if( lval.id() == ID::LBRACE )
	{
parseBody:
		// read block
TODO
	}
	else if( lval.id() == ID::SCOLON )
	{
parseDeclaration:
		*ut = new UnionType( 0, 0, lval.idLexium(), typeParams, bases);
		return true;
	}

	return false;
}


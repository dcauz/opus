#include "parser.h"
#include "token.h"

#include <stdexcept>


using namespace std;


/**
Syntax:

enum
	: ENUM NAME typeParams baseType '{' members '}'
	| ENUM NAME typeParams baseType ';'
	| ENUM NAME typeParams '{' members '}'
	| ENUM NAME typeParams ';'
    | ENUM NAME baseTypes '{' members '}'
    | ENUM NAME baseTypes ';'
    | ENUM NAME '{' members '}'
    | ENUM NAME ';'

typeParams
	: '<' typeParamList '>'

typeParamList
    : typeParamList ',' typeParam
    | typeParam

typeParam
    : type NAME
    | NAME

baseType
    : ':' type

members
    : members ',' member
    | member

member
    : NAME
    | NAME '=' expr
*/

bool Parser::parseEnum( EnumType ** et )
{	
PENTER
	// Note that ENUM was already read
	*et = nullptr;

	Token	lval;
	lex( lval, this );

	if( lval.id != ID )
		throw std::runtime_error( "Expected name after enum keyword" );

	std::string name = lval.lexium;

	lex( lval, this );

	vector<up<TemplateParam>> * typeParams = nullptr;
	if( lval.id == '<' )
	{
		// > is eaten
		if( !parseTypeParams( &typeParams ))
		{
			return false;
		}
	}

	lex( lval, this );

	vector<up<Type>> * bases = nullptr;
	std::vector<up<Statement>> * sts = nullptr;

	if( lval.id == ':' )
	{
		while(true)
		{
			int termToken;
			unsigned declarators;
			Type	* type;

			if(!parseType( declarators, &type ) )
				return false;
			else
			{
				if( declarators != 0 )
					throw std::runtime_error( "Base type of enum definition cannot "
						"contain declarators" );
				else
				{
					if(bases == nullptr )
						bases = new vector<up<Type>>();

					bases->push_back(up<Type>(type));

					if( termToken == ',' )
						continue;
					else if( termToken == '{' )
						goto parseBody;
					else if( termToken == ';' )
						goto parseDeclaration;
					else
						throw std::runtime_error( "Unexpected token found in enum definition");
				}
			}
		}
	}
	else if( lval.id == '{' )
	{
parseBody:
		/****************************
		members
		    : members ',' member
		    | member

		member
		    : NAME
		    | NAME '=' expr
		*/

		while( true );
		{
			lex( lval, this );
			// name
			if( lval.id != ID )
				throw std::runtime_error( "Expected name after enum keyword" );
			string name = lval.lexium;

			int termToken;
			Expr	* expr = nullptr;

			lex( lval, this );
			if( lval.id == '=' )
			{
				Token tt;
				if( !parseExpr( &expr, tt ) )
					return false;	
			}
			else
				termToken = lval.id;

			
			if( termToken == ',' )
			{
				if( !sts )
					sts = new std::vector<up<Statement>>();
				sts->push_back(make_unique<EnumMember>(0,0, name, expr ));
			}
			else if( termToken == '}' )
			{
				if( !sts )
					sts = new std::vector<up<Statement>>();
				sts->push_back(make_unique<EnumMember>(0,0, name, expr ));

				*et = new EnumType( 0, 0, name, typeParams, bases, sts );
				return true;
			}
			else
				throw std::runtime_error( "Expected token in enum definition" );
		}
	}
	else if( lval.id == ';' )
	{
parseDeclaration:
		*et = new EnumType( 0, 0, name, typeParams, bases);
		return true;
	}

	return false;
}

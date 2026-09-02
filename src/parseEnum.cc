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

	if( !lval.isId() )
		throw std::runtime_error( "Expected name after enum keyword" );

	std::string name = lval.idLexium();

	lex( lval, this );

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
	std::vector<up<Statement>> * sts = nullptr;

	if( lval.id() == ID::COLON )
	{
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
					throw std::runtime_error( "Base type of enum definition cannot "
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
						throw std::runtime_error( "Unexpected token found in enum definition");
				}
			}
		}
	}
	else if( lval.id() == ID::LBRACE )
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
			if( !lval.isId() )
				throw std::runtime_error( "Expected name after enum keyword" );
			string name = lval.idLexium();

			ID termToken;
			Expr	* expr = nullptr;

			lex( lval, this );
			if( lval.id() == ID::ASSIGN )
			{
				Token tt;
				if( !parseExpr( &expr, tt ) )
					return false;	
			}
			else
				termToken = lval.id();

			
			if( termToken == ID::COMMA )
			{
				if( !sts )
					sts = new std::vector<up<Statement>>();
				sts->push_back(make_unique<EnumMember>(0,0, name, expr ));
			}
			else if( termToken == ID::RBRACE )
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
	else if( lval.id() == ID::SCOLON )
	{
parseDeclaration:
		*et = new EnumType( 0, 0, name, typeParams, bases);
		return true;
	}

	return false;
}

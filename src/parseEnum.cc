#include "parser.h"
#include "token.h"

#include <stdexcept>


using namespace std;


/**
Syntax:

enum
    | ENUM NAME baseType '{' members '}'
    | ENUM NAME baseType ';'
    | ENUM NAME '{' members '}'

baseType
    : ':' type

members
    : members ',' member
    | member

member
    : NAME
    | NAME '=' expr
*/

bool Parser::parseEnum( Enum ** et )
{	
PENTER
	// Note that ENUM was already read
	*et = nullptr;

	Token	lval;
	lex( lval );

	int s = lval.line();

dumpToken( __FILE__, __LINE__, lval );
	if( !lval.isId() )
		throw std::runtime_error( "Expected name after enum keyword" );

	std::string name = lval.idLexium();

	lex( lval );
dumpToken( __FILE__, __LINE__, lval );

	Type * base = nullptr;
	std::vector<Statement *> * sts = nullptr;

	if( lval.id() == ID::COLON )
	{
		while(true)
		{
			if(!parseType( lval, &base, ETC::COMMA_RBRACE ) )
			{
dumpToken( __FILE__, __LINE__, lval );
				return false;
			}
			else
			{
printf( "%s:%d\n", __FILE__, __LINE__ ); fflush(stdout);
printf( "%s:%d\n", __FILE__, __LINE__ ); fflush(stdout);
					if( lval.id() == ID::LBRACE )
						goto parseBody;
					else if( lval.id() == ID::SCOLON )
						goto parseDeclaration;
					else
						throw std::runtime_error( "Unexpected token found in enum definition");
printf( "%s:%d\n", __FILE__, __LINE__ ); fflush(stdout);
			}
printf( "%s:%d\n", __FILE__, __LINE__ ); fflush(stdout);
		}
printf( "%s:%d\n", __FILE__, __LINE__ ); fflush(stdout);
	}

printf( "%s:%d\n", __FILE__, __LINE__ ); fflush(stdout);
dumpToken( __FILE__, __LINE__, lval );
	if( lval.id() == ID::LBRACE )
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

		while( true )
		{
			lex( lval );
dumpToken( __FILE__, __LINE__, lval );
			// name
			if( !lval.isId() )
				throw std::runtime_error( "Expected name after enum keyword" );
			string name = lval.idLexium();

			Expr	* expr = nullptr;
			lex( lval );
dumpToken( __FILE__, __LINE__, lval );
			if( lval.id() == ID::ASSIGN )
			{
			    lex( lval );
dumpToken( __FILE__, __LINE__, lval );
				if( !parseExpr( &expr, ETC::COMMA_RBRACE, STR::NONE, lval, 0, 0 ) )
					return false;	

				if( !sts )
					sts = new std::vector<Statement *>();
				sts->push_back( new EnumMember(0,0, name, expr ));

				if( lval.id() == ID::RBRACE )
				{
				  *et = new Enum( s, lval.line(), name, base, sts );
  				  return true;
				}
			}
			else if( lval.id() == ID::COMMA )
			{
				if( !sts )
					sts = new std::vector<Statement *>();
				sts->push_back(new EnumMember(0,0, name, expr ));
			}
			else if( lval.id() == ID::RBRACE )
			{
				if( !sts )
					sts = new std::vector<Statement *>();
				sts->push_back( new EnumMember(0,0, name, expr ));

				*et = new Enum( s, lval.line(), name, base, sts );
				return true;
			}
			else
				throw std::runtime_error( "Expected token in enum definition" );
		}
	}
	else if( lval.id() == ID::SCOLON )
	{
parseDeclaration:
		*et = new Enum( 0, 0, name, base, nullptr );
		return true;
	}

	return false;
}

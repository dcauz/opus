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
	lex( lval, this );

	int s = lval.line();

dumpToken( __FILE__, __LINE__, lval );
	if( !lval.isId() )
		throw std::runtime_error( "Expected name after enum keyword" );

	std::string name = lval.idLexium();

	lex( lval, this );
dumpToken( __FILE__, __LINE__, lval );

	Type * base = nullptr;
	std::vector<Statement *> * sts = nullptr;

	int e;
	if( lval.id() == ID::COLON )
	{
		while(true)
		{
			unsigned declarators;

			if(!parseType( lval, declarators, &base ) )
			{
dumpToken( __FILE__, __LINE__, lval );
				return false;
			}
			else
			{
printf( "%s:%d\n", __FILE__, __LINE__ ); fflush(stdout);
				if( declarators != 0 )
					throw std::runtime_error( "Base type of enum definition cannot "
						"contain declarators" );
				else
				{
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
			lex( lval, this );
dumpToken( __FILE__, __LINE__, lval );
			// name
			if( !lval.isId() )
				throw std::runtime_error( "Expected name after enum keyword" );
			string name = lval.idLexium();

			Expr	* expr = nullptr;
			lex( lval, this );
dumpToken( __FILE__, __LINE__, lval );
			if( lval.id() == ID::ASSIGN )
			{
			    lex( lval, this );
dumpToken( __FILE__, __LINE__, lval );
				if( !parseExpr( &expr, ET::COMMA_OR_RBRACE, lval, 0, 0 ) )
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

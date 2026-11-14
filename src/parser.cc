#include "parser.h"
#include "void.h"
#include "lex.h"
#include "token.h"


using namespace std;


void Parser::populateGlobalSymTbl()
{
	vector<Arg *> * args = new vector<Arg *>();

	auto fd = new FunctionDef( 0, 0, 0, new VoidType(), "puts", args, nullptr );

	globalSymTbl_.addFunction( fd );
}


bool Parser::parse()
{
PENTER
	bool rc = true;

	while(rc)
	{
		Statement * statement;
		rc &= parseStatement( &statement );
		program_.statements().push_back(statement);
	}

	return rc;
}

#define AND(a,b)	(int)a & (int)b

bool Parser::isTerminateChar( ID id, ETC etc )
{
	switch( id )
	{
	default:	
			return false;
	case ID::SCOLON:
			return AND(etc, ETC::SCOLON);
	case ID::COMMA:
			return AND(etc, ETC::COMMA);
	case ID::RPAREN:
		return AND(etc, ETC::RPAREN);
	case ID::RBRACE:
		return AND(etc, ETC::RBRACE);
	case ID::COLON:
		return AND(etc, ETC::COLON);
	case ID::RBRACKET:
		return AND(etc, ETC::RBRACKET);
	case ID::BOR:
		return AND(etc, ETC::BOR);
	case ID::GT:
		return AND(etc, ETC::GT);
	}
}

bool Parser::isTerminateWord( const char * word, STR str )
{
	if( str == STR::NONE )
		return false;

	switch(*word)
	{
	default:	return 	false;
	case 'a': return	AND(str, STR::ASC ) 	&& strncmp( word, "asc", 3 ) == 0;
	case 'd': return 	AND(str, STR::DSC ) 	&& strncmp( word, "dsc", 3 ) == 0;
	case 'f': return (AND(str, STR::FROM ) 	&& strncmp( word, "from", 4 ) == 0 ) ||
									 (AND(str, STR::FETCH )	&& strncmp( word, "fetch", 5 ) == 0 );
	case 'w':	return	AND(str, STR::WHERE ) && strncmp( word, "where", 5 ) == 0;
	case 'g': return	AND(str, STR::GROUP ) && strncmp( word, "group", 5 ) == 0;
	case 'h':	return 	AND(str, STR::HAVING )&& strncmp( word, "having", 6 ) == 0;
	case 'o':	return (AND(str, STR::ORDER )	&& strncmp( word, "order", 5 ) == 0) ||
									 (AND(str, STR::OFFSET )&& strncmp( word, "offset", 6 ) == 0);
	case 'r': return	AND(str, STR::ROWS ) 	&& strncmp( word, "rows", 4 ) == 0;
	}
}

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

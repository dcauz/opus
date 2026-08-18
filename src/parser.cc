#include "parser.h"
#include "void.h"
#include "lex.h"
#include "token.h"


using namespace std;


void Parser::populateGlobalSymTbl()
{
	vector<up<Arg>> * args = new vector<up<Arg>>();

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

		program_.statements().push_back(up<Statement>(statement));
	}

	return rc;
}

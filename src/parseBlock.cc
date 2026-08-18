#include "parser.h"
#include <vector>


using namespace std;


/**
Syntax:

block
    : '{' '}'
    | '{' statements '}'

statements
	: statements statement
	| statement

*/
bool Parser::parseBlock( Block ** block )
{
PENTER
	// The { character is already read

    bool rc = true;

	vector<up<Statement>> * statements = new vector<up<Statement>>();

    while(rc)
    {
		Statement * statement;
		rc = parseStatement( &statement );

		// add it to the block statement
		if(rc)
		{
			// If we have reached the end of the block 
			if( statement == nullptr )
				break;

			statements->push_back(up<Statement>(statement));
		}	
	}

	if(rc)
		*block = new Block( 0, 0, statements );
	
	return rc;
}

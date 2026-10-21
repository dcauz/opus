#include "parser.h"

/**
Syntax:

try
	: TRY statement catchBlocks

catchBlocks
    : catchBlocks catchBlock
    | catchBlock

catchBlock
    : CATCH '(' variableDef ')' statement
    | CATCH '(' DOT_DOT_DOT ')' statement

*/
bool Parser::parseTry( Try ** t )
{
PENTER
	Statement * statement;
	bool rc = parseStatement( &statement );
	if(rc)
		*t = new Try( 0, 0, statement );

	return rc;
}


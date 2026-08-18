#include "parser.h"

/**
Syntax:

try
	: TRY block catchBlocks

catchBlocks
    : catchBlocks catchBlock
    | catchBlock

catchBlock
    : CATCH '(' variableDef ')' block
    | CATCH '(' DOT_DOT_DOT ')' block

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


#include "parser.h"

void Parser::parserError( const char * msg )
{
	fprintf( stderr, "ERROR: %s\n", msg );	
}

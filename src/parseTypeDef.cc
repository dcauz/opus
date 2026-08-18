#include "parser.h"

/**
Syntax:

typeDef
    : TYPE NAME typeParams baseTypes block
    | TYPE NAME typeParams block
    | TYPE NAME baseTypes block
    | TYPE NAME block
    | TYPE NAME typeParams baseTypes ';'
    | TYPE NAME typeParams ';'
    | TYPE NAME baseTypes ';'
    | TYPE NAME ';'
*/

bool Parser::parseTypeDef( TypeType ** )
{
PENTER
	TODO
	return false;
}


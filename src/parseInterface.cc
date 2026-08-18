#include "parser.h"

/**
Syntax:

interface
	: INTERFACE NAME typeParams baseTypes interfaceMembers
	: INTERFACE NAME typeParams interfaceMembers
	: INTERFACE NAME baseTypes interfaceMembers
	: INTERFACE NAME interfaceMembers
    | INTERFACE NAME typeParams baseTypes ';'
    | INTERFACE NAME typeParams ';'
    | INTERFACE NAME baseTypes ';'
    | INTERFACE NAME ';'

interfaceMembers
	: interfaceMembers interfaceMember
	| interfaceMember
	;

interfaceMember
	: functionDecl
	| constVariable
	;

functionDecl
    : type NAME '(' args ')' ';'
    | declarators type NAME '(' args ')' ';'
    | type NAME '(' ')' ';'
    | declarators type NAME '(' ')' ';'

args
    : args ',' arg
    | arg

arg
    : declarators type NAME
    | type NAME
    | declarators type
    | type
    | VA_ARGS

constVariable
	: variable with const declarator

*/
bool Parser::parseInterface( InterfaceType ** )
{
PENTER
	TODO
	return false;
}


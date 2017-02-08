#pragma once

#include "lex_context.h"
#include "program.h"
#include "symtbl.h"


struct ParseContext: public LexContext
{
	ParseContext( const char * file ):program(file) {}

	Program		program;
	SymbolTable	symtbl;
	int	start;
	int end;
};


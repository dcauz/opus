#pragma once

#include <stack>
#include "statement.h"



class SymbolTable;


struct SemCheckContext
{
	std::stack<Block>	blocks;
	SymbolTable 	  * symtbl;
};

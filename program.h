#pragma once

#include <vector>
#include <string>
#include "il.h"


class Definition;


class Program
{
public:
	Program( const char * srcFile );

	std::vector<Definition * > & definitions() { return definitions_; }

	std::vector<ILentity * > & ilEntities() { return ilEntities_; }

	bool semCheck();
	bool genCode();
	bool outputIL();

	std::vector<FunctionDeclaration::FuncAttrs>	& funcAttrs() 
	{ 
		return funcAttrs_;
	}

private:

	std::vector<Definition * > definitions_;
	std::string	srcFile_;

	std::vector<ILentity *>	ilEntities_;
	std::vector<FunctionDeclaration::FuncAttrs>	funcAttrs_;
};

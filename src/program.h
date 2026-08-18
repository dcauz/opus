#pragma once

#include "il.h"
#include "opus.h"
#include "statement.h"

#include <vector>
#include <string>


class Statement;
class Type;


class Program
{
public:
	Program( const char * srcFile );

	void statements( std::vector<up<Statement>> * defs );

	std::vector<up<Statement>> & statements();
	std::vector<up<ILentity>>  & ilEntities();

	bool semCheck() const;
	bool genCode();
	bool outputIL() const;

	std::vector<FunctionDeclaration::FuncAttrs>	& funcAttrs() 
	{ 
		return funcAttrs_;
	}

private:

	up<std::vector<up<Statement>>> statements_;

	std::string	srcFile_;

	std::vector<up<ILentity>>	ilEntities_;
	std::vector<FunctionDeclaration::FuncAttrs>	funcAttrs_;
};

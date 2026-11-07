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

//	void statements( std::vector<Statement *> * defs );

	std::vector<Statement *> & statements();
	std::vector<ILentity *>  & ilEntities();

	bool semCheck() const;
	bool genCode();
	bool outputIL() const;

	std::vector<FunctionDeclaration::FuncAttrs>	& funcAttrs() 
	{ 
		return funcAttrs_;
	}

private:

	std::vector<Statement *> statements_;

	std::string	srcFile_;

	std::vector<ILentity *>	ilEntities_;
	std::vector<FunctionDeclaration::FuncAttrs>	funcAttrs_;
};

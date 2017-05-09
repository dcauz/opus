#pragma once

#include <vector>
#include <string>
#include "il.h"
#include "opus.h"
#include "symtbl.h"



class Statement;
class Type;


class Program
{
public:
	Program( const char * srcFile );

	void imports( std::vector<std::string> * imp );
	void statements( std::vector<up<Statement>> * defs );

	std::vector<std::string>   & imports();
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

	up<std::vector<std::string>>   imports_;
	up<std::vector<up<Statement>>> statements_;
	std::string	srcFile_;

	up<std::vector<up<ILentity>>>	ilEntities_;
	std::vector<FunctionDeclaration::FuncAttrs>	funcAttrs_;

	up<SymbolTable> globalSymTbl_;
};

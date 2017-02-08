#pragma once

#include <map>
#include <string>


class Type;
class Variable;
class Function;


class SymbolTable
{
public:

	Type	* findType( const char * );

	SymbolTable	* parent()	{ return parent_; }

private:

	SymbolTable	* parent_;
	
	std::map<std::string, Type * > 		types_;
	std::map<std::string, Variable * >	variables_;
	std::map<std::string, Function * >	functions_;
};

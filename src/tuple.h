#pragma once

#include "opus.h"
#include "value.h"
#include "symtbl.h"

#include <string>
#include <vector>
#include <utility>



class Tuple: public Value
{
public:
	Tuple( std::vector<std::pair<std::string,Value *> *> * );
	~Tuple();

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

	SymbolTable & symbolTable() { return symbolTable_; }

private:
	std::vector<std::pair<std::string,Value *> *> * value_;
	SymbolTable symbolTable_;
};

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
	Tuple( std::vector<up<std::pair<std::string,up<Value>>>> * );
	~Tuple();

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

	SymbolTable & symbolTable() { return symbolTable_; }

private:
	up<std::vector<up<std::pair<std::string,up<Value>>>>> value_;
	SymbolTable symbolTable_;
};

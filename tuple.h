#pragma once

#include <string>
#include <vector>
#include <utility>
#include "opus.h"
#include "collection.h"
#include "value.h"
#include "expr.h"
#include "symtbl.h"



class Tuple: public Value
{
public:
	Tuple( std::vector<up<std::pair<std::string,up<Expr>>>> * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

	SymbolTable & symbolTable() { return symbolTable_; }

private:
	up<std::vector<up<std::pair<std::string,up<Expr>>>>> value_;
	SymbolTable symbolTable_;
};

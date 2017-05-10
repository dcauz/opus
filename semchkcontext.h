#pragma once

#include <stack>
#include "statement.h"



class SymbolTable;

enum class BlockOwner
{
	None       = 0,

	Atomic     = 1 << 0,
	Catch      = 1 << 1,
	Class      = 1 << 2,
	Ctor       = 1 << 3,
	Else       = 1 << 4,
	For        = 1 << 5,
	If         = 1 << 6,
	Interface  = 1 << 7,
	Namespace  = 1 << 8,
	Operator   = 1 << 9,
	Routine    = 1 << 10,
	Switch     = 1 << 11,
	Try        = 1 << 12,
	Tuple      = 1 << 13,
	Union      = 1 << 14,
	Until      = 1 << 15,
	While      = 1 << 16,
};

class SemCheckContext
{
public:

	void pushBlockOwner(BlockOwner ob );
	void popBlockOwner();

	bool canBreak();
	bool canContinue();

	SymbolTable * topSymTbl() { return symtbl_; }

private:

	std::vector<BlockOwner> blockOwners_;

	SymbolTable * symtbl_;
};

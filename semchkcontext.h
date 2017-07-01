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
	Dtor       = 1 << 17,
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

	bool canBreak() const;
	bool canCase() const;
	bool canContinue() const;
	bool canDefault() const;
	bool canReturn() const;

	bool validBlockNesting() const;

	bool inTypeDef() const;

	SymbolTable * topSymTbl() { return symtbl_.get(); }

	void pushSwitchCondType( sp<Type> ct ){ switchCondType_.push(ct); }
	void popSwitchCondType()			  { switchCondType_.pop(); }
	const sp<Type> switchCondType() const { return switchCondType_.top(); }

private:

	std::vector<BlockOwner> blockOwners_;

	up<SymbolTable> symtbl_;
	std::stack<sp<Type>> switchCondType_;
};

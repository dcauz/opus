#pragma once

#include "collection.h"
#include "value.h"


class StackType: public CollectionType
{
public:
	StackType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};


class Stack: public Value
{
public:
	Stack( Type * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;
};

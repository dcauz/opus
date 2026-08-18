#pragma once

#include "collection.h"
#include "value.h"


class HeapType: public CollectionType
{
public:
	HeapType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};


class Heap : public Value
{
public:
	Heap( Type * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

};

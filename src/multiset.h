#pragma once

#include "collection.h"
#include "value.h"


class MultisetType: public CollectionType
{
public:
	MultisetType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

class Multiset: public Value
{
public:
	Multiset( std::vector<Value * > * );

    bool genCode( GenCodeContext & gcc ) const override;
    Type * semCheck( SemCheckContext & scc ) const override;

private:
	std::vector<Value *> * values_;
	MultisetType *	type_;
};

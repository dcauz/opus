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
	Multiset( std::vector<up<Value>> * );

    bool genCode( GenCodeContext & gcc ) const override;
    sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	up<std::vector<up<Value>>> values_;
	sp<MultisetType>	type_;
};

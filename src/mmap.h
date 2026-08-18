#pragma once

#include "collection.h"
#include "value.h"


class MultiMapType: public CollectionType
{
public:
	MultiMapType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

class MultiMap: public Value
{
public:
	MultiMap( std::vector<up<Value>> * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	up<std::vector<up<Value>>> values_;
	sp<MultiMapType> type_;
};

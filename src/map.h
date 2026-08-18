#pragma once

#include "collection.h"
#include "value.h"


class MapType: public CollectionType
{
public:
	MapType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

class Map: public Value
{
public:
	Map( std::vector<up<Value>> * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	up<std::vector<up<Value>>> values_;
	sp<MapType> type_;
};

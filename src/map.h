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
	Map( std::vector<Value *> * );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	std::vector<Value *> * values_;
	MapType	* type_;
};

#pragma once

#include "collection.h"
#include "value.h"


class SetType: public CollectionType
{
public:
	SetType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

class Set: public Value
{
public:
	Set( std::vector<Value *> * );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	std::vector<Value *> * values_;
	SetType * type_;
};

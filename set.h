#pragma once

#include "collection.h"
#include "value.h"


class Set: public Value
{
public:
	Set( std::vector<up<Expr>> * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	up<std::vector<up<Expr>>> values_;
};

class SetType: public CollectionType
{
public:
	SetType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

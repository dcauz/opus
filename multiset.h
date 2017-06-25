#pragma once

#include "collection.h"
#include "value.h"


class Multiset: public Value
{
public:
	Multiset( std::vector<up<Expr>> * );

    bool genCode( GenCodeContext & gcc ) const override;
    Type * semCheck( SemCheckContext & scc ) const override;

private:
	up<std::vector<up<Expr>>> values_;
};

class MultisetType: public CollectionType
{
public:
	MultisetType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

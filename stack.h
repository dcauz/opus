#pragma once

#include "collection.h"


class StackType: public CollectionType
{
public:
	StackType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

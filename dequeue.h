#pragma once

#include "collection.h"


class DEQueueType: public CollectionType
{
public:
	DEQueueType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

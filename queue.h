#pragma once

#include "collection.h"


class QueueType: public CollectionType
{
public:
	QueueType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

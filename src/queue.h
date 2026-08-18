#pragma once

#include "collection.h"
#include "value.h"


class QueueType: public CollectionType
{
public:
	QueueType( Type * ele ):CollectionType(ele) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};


class Queue : public Value
{
public:
	Queue( Type * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

};

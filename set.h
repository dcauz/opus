#pragma once

#include "collection.h"
#include "value.h"


class Set: public Value
{
};

class SetType: public CollectionType
{
public:
	SetType( Type * ele ):CollectionType(ele) {}

};

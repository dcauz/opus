#pragma once

#include "collection.h"
#include "value.h"


class Multiset: public Value
{
};

class MultisetType: public CollectionType
{
public:
	MultisetType( Type * ele ):CollectionType(ele) {}

};

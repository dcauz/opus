#pragma once

#include "type.h"


class CollectionType: public Type
{
public:
	CollectionType( Type * ele ):ele_(ele) {}

protected:
	Type	* ele_;
};

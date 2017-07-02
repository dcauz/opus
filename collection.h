#pragma once

#include "type.h"


class CollectionType: public Type
{
public:
	CollectionType( Type * ele ):ele_(ele) {}

	sp<Type> ele() const { return ele_; }

protected:
	sp<Type> ele_;
};

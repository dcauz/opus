#pragma once

#include "opus.h"
#include "type.h"


class CollectionType: public Type
{
public:
	CollectionType( Type * ele ):ele_(ele) {}

	Type * ele() const { return ele_; }

protected:
	Type * ele_;
};

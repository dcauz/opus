#pragma once

#include "collection.h"
#include "value.h"


class Vector: public Value
{
};



class VectorType: public CollectionType
{
public:
	VectorType( Type * ele, int d ):CollectionType(ele), dim_(d) {}

private:
	int dim_;
};

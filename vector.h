#pragma once

#include "collection.h"




class VectorType: public CollectionType
{
public:
	VectorType( Type * ele, int d ):CollectionType(ele), dim_(d) {}

private:
	int dim_;
};

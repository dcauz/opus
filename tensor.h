#pragma once

#include "collection.h"


class TensorType: public CollectionType
{
public:
	TensorType( Type * ele, std::vector<int> * ds ):CollectionType(ele), 
		dims_(ds) {}

private:
	std::vector<int> * dims_;
};

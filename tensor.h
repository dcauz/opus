#pragma once

#include "collection.h"
#include "value.h"


class Tensor:public Value
{
};

class TensorType: public CollectionType
{
public:
	TensorType( Type * ele, std::vector<int> * ds ):CollectionType(ele), 
		dims_(ds) {}

private:
	std::vector<int> * dims_;
};

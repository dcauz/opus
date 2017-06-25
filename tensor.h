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

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
private:
	std::vector<int> * dims_;
};

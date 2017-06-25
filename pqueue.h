#pragma once

#include "collection.h"



class PQueueType: public CollectionType
{
public:
	PQueueType( Type * ele, const char * fname ):CollectionType(ele), 
		compFunc_(fname) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

private:
	std::string compFunc_;
};

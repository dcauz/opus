#pragma once

#include "collection.h"



class PQueueType: public CollectionType
{
public:
	PQueueType( Type * ele, const char * fname ):CollectionType(ele), 
		compFunc_(fname) {}

private:
	std::string compFunc_;
};

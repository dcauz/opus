#include "tuple.h"


Tuple::Tuple( std::vector<up<std::pair<std::string,up<Value>>>> * t ):
	value_(t)
{
}

Tuple::~Tuple()
{
}

bool Tuple::genCode( GenCodeContext & ) const
{
TODO // genCode
	return false;
}

sp<Type> Tuple::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return errorType;
}


#include "tuple.h"


Tuple::Tuple( std::vector<std::pair<std::string,Value *> *> * t ):
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

Type * Tuple::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return errorType;
}


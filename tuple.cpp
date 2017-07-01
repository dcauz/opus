#include "tuple.h"


Tuple::Tuple( std::vector<up<std::pair<std::string,up<Expr>>>> * t ):
	value_(t)
{
}

bool Tuple::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Tuple::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return errorType;
}


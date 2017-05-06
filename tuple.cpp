#include "tuple.h"


Tuple::Tuple( std::vector<up<std::pair<std::string,up<Expr>>>> * )
{
TODO
}

bool Tuple::genCode( GenCodeContext & gcc ) const
{
TODO
	return false;
}

Type * Tuple::semCheck( SemCheckContext & scc ) const
{
TODO
	return nullptr;
}


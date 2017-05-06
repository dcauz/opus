#include "vector.h"


Vector::Vector( std::vector<up<Expr>> * v ):values_(v)
{
}

bool Vector::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

Type * Vector::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return nullptr;
}


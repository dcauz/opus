#include "vector.h"


Vector::Vector( std::vector<up<Expr>> * v ):values_(v)
{
}

bool Vector::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Vector::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return errorType;
}

bool VectorType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool VectorType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool VectorType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

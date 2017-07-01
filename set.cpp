#include "set.h"


Set::Set( std::vector<up<Expr>> * v ):values_(v)
{
}

bool Set::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Set::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return nullptr;
}

bool SetType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool SetType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool SetType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

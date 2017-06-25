#include "multiset.h"


Multiset::Multiset( std::vector<up<Expr>> * v ):values_(v)
{
}

bool Multiset::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

Type * Multiset::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return nullptr;
}

bool MultisetType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool MultisetType::compareTo( Type * )  const
{
	TODO
	return false;
}

bool MultisetType::assignableTo( Type * ) const
{
	TODO
	return false;
}

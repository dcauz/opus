#include "set.h"


Set::Set( std::vector<up<Expr>> * v ):values_(v)
{
}

bool Set::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

Type * Set::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return nullptr;
}


#include "opus.h"
#include "real.h"

RealType	realType;


/////////////////////////////////////////////////////////

Real::Real():form_(INT), i_(0)
{
}

Real::Real(int i):form_(INT), i_(i)
{
}

Real::Real(int64_t l):form_(LONG), l_(l)
{
}

Real::Real(double d):form_(RATIONAL),d_(d)
{
}

bool Real::genCode( GenCodeContext & gcc ) const
{
 TODO // genCode
	return false;
}

sp<Type> Real::semCheck( SemCheckContext & scc ) const
{
 TODO // semCheck
	return errorType;
}

bool RealType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool RealType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool RealType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

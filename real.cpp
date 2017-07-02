
#include "opus.h"
#include "complex.h"
#include "float.h"
#include "integer.h"
#include "rational.h"
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

bool RealType::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool RealType::compareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool RealType::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}


#include "opus.h"
#include "complex.h"
#include "float.h"
#include "integer.h"
#include "rational.h"
#include "real.h"
#include <stdexcept>


Complex::Complex( Value * r, Value * i): re_(r), im_(i)
{
}

bool Complex::genCode( GenCodeContext & ) const
{
	TODO // genCode
	return false;
}

sp<Type> Complex::semCheck( SemCheckContext & ) const
{
	TODO // semCheck
	return errorType;
}

bool ComplexType::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool ComplexType::compareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool ComplexType::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

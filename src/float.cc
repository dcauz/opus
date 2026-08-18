
#include "opus.h"
#include "complex.h"
#include "float.h"
#include "integer.h"
#include "rational.h"
#include "real.h"


sp<Float64Type>	float64Type(new Float64Type);
sp<Float32Type>	float32Type(new Float32Type);

////////////////////////////////////////////

bool Float32::genCode( GenCodeContext & ) const
{
	TODO // genCode
	return false;
}

sp<Type> Float32::semCheck( SemCheckContext & ) const
{
	return float32Type;
}

bool Float32Type::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float32Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool Float32Type::compareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float32Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool Float32Type::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float32Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

////////////////////////////////////////////

bool Float64::genCode( GenCodeContext & ) const
{
	TODO // genCode
	return false;
}

sp<Type> Float64::semCheck( SemCheckContext & ) const
{
	return float64Type;
}

bool Float64Type::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool Float64Type::compareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool Float64Type::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

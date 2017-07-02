
#include "opus.h"
#include "complex.h"
#include "float.h"
#include "integer.h"
#include "rational.h"
#include "real.h"


sp<IntegerType>	integerType( new IntegerType);
sp<IntegerType>	naturalType( new IntegerType);


IntegerType::IntegerType()
{
}

////////////////////////////////////////////

Integer::Integer():form_(INT), i_(0)
{
}

Integer::Integer(int i):form_(INT), i_(i)
{
}

Integer::Integer(int64_t l):form_(LONG), l_(l)
{
}

Integer::Integer(const char * i):form_(BIG), value_(i)
{
}

Integer::~Integer()
{
	if(form_ == BIG)
		delete [] value_;
}

bool Integer::genCode( GenCodeContext & gcc ) const
{
	TODO // genCode
	return false;
}

sp<Type> Integer::semCheck( SemCheckContext & scc ) const
{
	TODO // semCheck
	return errorType;
}

bool IntegerType::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool IntegerType::compareTo( Type * t )  const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool IntegerType::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

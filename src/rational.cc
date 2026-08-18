
#include <cstring>
#include "opus.h"
#include "complex.h"
#include "float.h"
#include "integer.h"
#include "rational.h"
#include "real.h"


RationalType	rationalType;


Rational::Rational()
{
}

Rational::Rational( char * r )
{
	char * d = strchr(r, '.' );

	if( d )
	{
		size_t len = strlen(d+1);
		memmove( d, d+1, len );
		num_ = Integer(r,d);

		d = new char[len+2];
		d[0] = '1';
		memset( d+1, '0', len );
		d[len+1] = 0;

		den_ = Integer(d,d+strlen(d));

		TODO // num / GCD, den / GCD
	}
	else
	{
		num_ = Integer(r, r+strlen(r));
		den_ = Integer(1);
	}
}

bool Rational::genCode( GenCodeContext & ) const
{
TODO // genCode
	return false;
}

sp<Type> Rational::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return errorType;
}

bool RationalType::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool RationalType::compareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool RationalType::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

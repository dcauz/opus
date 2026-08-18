
#include "opus.h"
#include "complex.h"
#include "float.h"
#include "integer.h"
#include "rational.h"
#include "real.h"


sp<IntegerType>	integerType( new IntegerType);
sp<NaturalType>	naturalType( new NaturalType);


////////////////////////////////////////////

// The value is stored in a int64_t and 0 or more uint64_t values. 
//
// Each uint64_t value will hold whose value is between 
// 0 to 9,999,999,999,999,999,999
//
// The int64_t value is unconstrained.
//
Integer::Integer()
{
}

Integer::Integer(int i): isNeg_(false)
{
	values_.resize(1);
	values_[0] = i;
}

Integer::Integer(int64_t l): isNeg_(false)
{
	values_.resize(1);
	values_[0] = l;
}

Integer::Integer(const char * s, const char * e): isNeg_(false)
{
	// Pull off chunks of 19 digits, from right to left
	// The number of chunks is approximately (e-s)/19.
	//
	size_t len = e - s;

	size_t	vLen = len / 19;
	size_t	rLen = len % 19;
	if(rLen)
		++vLen;
	values_.resize(vLen);
	
	int ele = 0;

	// The first rLen digits go to the first element
	if(rLen)
	{
		values_[0] = 0;
		while(rLen > 0 )
		{
			values_[0] = (*s - '0') + values_[0]*10;
			++s;
		}
		++ele;
	}

	while( s < e )
	{
		++ele;
		for( int i = 0; i < 19; ++i )
		{
			values_[ele] = (*s - '0') + values_[ele]*10;
			++s;
		}
	}
}

Integer::~Integer()
{
}

bool Integer::genCode( GenCodeContext & ) const
{
	TODO // genCode
	return false;
}

sp<Type> Integer::semCheck( SemCheckContext & ) const
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Int8::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

sp<Type> Int8::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Int16::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

sp<Type> Int16::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Int32::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

sp<Type> Int32::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Int64::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

sp<Type> Int64::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Uint8::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

sp<Type> Uint8::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Uint16::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

sp<Type> Uint16::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Uint32::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

sp<Type> Uint32::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Uint64::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

sp<Type> Uint64::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

///////////////////////////////////////////////////////////////////

bool Int8Type::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Int8Type::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Int8Type::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Int16Type::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Int16Type::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Int16Type::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Int32Type::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Int32Type::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Int32Type::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Int64Type::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Int64Type::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Int64Type::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Uint8Type::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint8Type::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint8Type::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Uint16Type::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint16Type::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint16Type::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Uint32Type::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint32Type::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint32Type::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Uint64Type::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint64Type::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint64Type::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Int8CType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Int8CType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Int8CType::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Int16CType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Int16CType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Int16CType::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Int32CType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Int32CType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Int32CType::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Int64CType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Int64CType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Int64CType::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Uint8CType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint8CType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint8CType::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Uint16CType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint16CType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint16CType::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Uint32CType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint32CType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint32CType::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool Uint64CType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint64CType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool Uint64CType::assignableTo( Type * ) const
{
	TODO
	return false;
}

///////////////////////////////////////////////////////////////////

bool IntegerType::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool IntegerType::compareTo( Type * t )  const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool IntegerType::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

///////////////////////////////////////////////////////////////////

bool NaturalType::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool NaturalType::compareTo( Type * t )  const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool NaturalType::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<Float64Type *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

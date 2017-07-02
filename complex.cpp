
#include "opus.h"
#include "complex.h"
#include "float.h"
#include "integer.h"
#include "rational.h"
#include "real.h"
#include <stdexcept>


Complex::Complex(std::pair<std::string, up<Expr>> * a,
				 std::pair<std::string, up<Expr>> * b)
{
	if( a->first == "re" )
	{
		if( b->first == "im" )
		{
			re_.reset(a->second.release());
			im_.reset(b->second.release());
			return;
		}
	}
	else if( a->first == "im" )
	{
		if( b->first == "re" )
		{
			re_.reset(b->second.release());
			im_.reset(a->second.release());
			return;
		}
	}

	throw std::runtime_error( "Invalid complex number literal" );
}

Complex::Complex(int r, int i): 
	re_(new Real(r)), 
	im_(new Real(i))
{
}

bool Complex::genCode( GenCodeContext & gcc ) const
{
	TODO // genCode
	return false;
}

sp<Type> Complex::semCheck( SemCheckContext & scc ) const
{
	TODO // semCheck
	return errorType;
}

bool ComplexType::eqCompareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool ComplexType::compareTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

bool ComplexType::assignableTo( Type * t ) const
{
	return (nullptr != dynamic_cast<ComplexType *>(t) ) ||
		(nullptr != dynamic_cast<FloatType *>(t) ) ||
		(nullptr != dynamic_cast<IntegerType *>(t) ) ||
		(nullptr != dynamic_cast<RationalType *>(t) ) ||
		(nullptr != dynamic_cast<RealType *>(t) );
}

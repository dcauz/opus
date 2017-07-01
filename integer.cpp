
#include "opus.h"
#include "integer.h"


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

bool IntegerType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool IntegerType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool IntegerType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

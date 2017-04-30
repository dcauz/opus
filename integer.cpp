
#include "opus.h"
#include "integer.h"


IntegerType	integerType;
IntegerType	naturalType;


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

Type * Integer::semCheck( SemCheckContext & scc ) const
{
	TODO // semCheck
	return &errorType;
}

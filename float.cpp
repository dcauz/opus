
#include "opus.h"
#include "float.h"

FloatType	floatType;

////////////////////////////////////////////

Float::Float(double d):value_(d)
{
}

bool Float::genCode( GenCodeContext & gcc ) const
{
	TODO // genCode
	return false;
}

bool Float::semCheck( SemCheckContext & scc ) const
{
	TODO // semCheck
	return false;
}

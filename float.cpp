
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

Type * Float::semCheck( SemCheckContext & scc ) const
{
	return &floatType;
}

bool FloatType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool FloatType::compareTo( Type * )  const
{
	TODO
	return false;
}

bool FloatType::assignableTo( Type * ) const
{
	TODO
	return false;
}

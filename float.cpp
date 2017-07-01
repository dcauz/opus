
#include "opus.h"
#include "float.h"

sp<FloatType>	floatType(new FloatType);

////////////////////////////////////////////

Float::Float(double d):value_(d)
{
}

bool Float::genCode( GenCodeContext & gcc ) const
{
	TODO // genCode
	return false;
}

sp<Type> Float::semCheck( SemCheckContext & scc ) const
{
	return floatType;
}

bool FloatType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool FloatType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool FloatType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

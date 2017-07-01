
#include "opus.h"
#include "bool.h"


sp<BoolType> boolType(new BoolType);

//////////////////////////////////////////

bool Bool::genCode( GenCodeContext & gcc ) const
{
	TODO	// genCode
	return false;
}

sp<Type> Bool::semCheck( SemCheckContext & scc ) const
{
	return boolType;
}

bool BoolType::eqCompareTo( Type * t ) const
{
	return t == this;
}

bool BoolType::compareTo( Type * )  const
{
	return false;
}

bool BoolType::assignableTo( Type * t ) const
{
	return t == this;
}

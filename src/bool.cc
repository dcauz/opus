
#include "opus.h"
#include "bool.h"


BoolType * boolType(new BoolType);

//////////////////////////////////////////

bool Bool::genCode( GenCodeContext & ) const
{
	TODO	// genCode
	return false;
}

Type * Bool::semCheck( SemCheckContext & ) const
{
	return boolType;
}

bool BoolType::eqCompareTo( Type * t ) const
{
	return dynamic_cast<BoolType *>(t) != nullptr;
}

bool BoolType::compareTo( Type * )  const
{
	return false;
}

bool BoolType::assignableTo( Type * t ) const
{
	return dynamic_cast<BoolType *>(t) != nullptr;
}

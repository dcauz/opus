
#include "opus.h"
#include "bool.h"


BoolType	boolType;

//////////////////////////////////////////

bool Bool::genCode( GenCodeContext & gcc ) const
{
	TODO	// genCode
	return false;
}

Type * Bool::semCheck( SemCheckContext & scc ) const
{
	return &boolType;
}

bool BoolType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool BoolType::compareTo( Type * )  const
{
	TODO
	return false;
}

bool BoolType::assignableTo( Type * ) const
{
	TODO
	return false;
}


#include "opus.h"
#include "void.h"


VoidType	voidType;

//////////////////////////////////////////////////


bool Void::genCode( GenCodeContext & gcc ) const
{
 TODO // genCode
	return false;
}

Type * Void::semCheck( SemCheckContext & scc ) const
{
	return &voidType;
}

bool VoidType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool VoidType::compareTo( Type * )  const
{
	TODO
	return false;
}

bool VoidType::assignableTo( Type * ) const
{
	TODO
	return false;
}

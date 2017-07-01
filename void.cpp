
#include "opus.h"
#include "void.h"


sp<VoidType> voidType( new VoidType );

//////////////////////////////////////////////////


bool Void::genCode( GenCodeContext & gcc ) const
{
 TODO // genCode
	return false;
}

sp<Type> Void::semCheck( SemCheckContext & scc ) const
{
	return voidType;
}

bool VoidType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool VoidType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool VoidType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

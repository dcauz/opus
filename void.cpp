
#include "opus.h"
#include "void.h"


sp<VoidType> voidType( new VoidType );

//////////////////////////////////////////////////


bool Void::genCode( GenCodeContext & gcc ) const
{
// TODO: genCode
	return true;
}

sp<Type> Void::semCheck( SemCheckContext & scc ) const
{
	return voidType;
}

bool VoidType::eqCompareTo( Type * ) const
{
	return false;
}

bool VoidType::compareTo( Type * )  const
{
	return false;
}

bool VoidType::assignableTo( Type * ) const
{
	return false;
}

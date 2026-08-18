
#include "opus.h"
#include "void.h"


sp<VoidType> voidType( new VoidType );

//////////////////////////////////////////////////


bool Null::genCode( GenCodeContext & ) const
{
// TODO: genCode
	return true;
}

sp<Type> Null::semCheck( SemCheckContext & ) const
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

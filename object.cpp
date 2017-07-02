#include "object.h"


ObjectType	objectType;

bool ObjectType::eqCompareTo( Type * ) const
{
	return true;
}

bool ObjectType::compareTo( Type * )  const
{
	return true;
}

bool ObjectType::assignableTo( Type * ) const
{
	return true;
}

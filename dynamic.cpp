#include "dynamic.h"


DynamicType	dynamicType;


bool DynamicType::eqCompareTo( Type * ) const
{
	return true;
}

bool DynamicType::compareTo( Type * )  const
{
	return true;
}

bool DynamicType::assignableTo( Type * ) const
{
	return true;
}

#include "auto.h"


AutoType	autoType;

bool AutoType::eqCompareTo( Type * ) const
{
	return true;
}

bool AutoType::compareTo( Type * )  const
{
	return true;
}

bool AutoType::assignableTo( Type * ) const
{
	return true;
}

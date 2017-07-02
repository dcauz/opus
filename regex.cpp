#include "regex.h"


sp<RegExType>	regexType(new RegExType);

bool RegExType::eqCompareTo( Type * t ) const
{
	RegExType * re = dynamic_cast<RegExType *>(t);

	return nullptr != re;
}

bool RegExType::compareTo( Type * t )  const
{
	RegExType * re = dynamic_cast<RegExType *>(t);

	return nullptr != re;
}

bool RegExType::assignableTo( Type * t ) const
{
	RegExType * re = dynamic_cast<RegExType *>(t);

	return nullptr != re;
}

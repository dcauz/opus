#include "regex.h"


sp<RegExpType>	regexType(new RegExpType);

bool RegExpType::eqCompareTo( Type * t ) const
{
	RegExpType * re = dynamic_cast<RegExpType *>(t);

	return nullptr != re;
}

bool RegExpType::compareTo( Type * t )  const
{
	RegExpType * re = dynamic_cast<RegExpType *>(t);

	return nullptr != re;
}

bool RegExpType::assignableTo( Type * t ) const
{
	RegExpType * re = dynamic_cast<RegExpType *>(t);

	return nullptr != re;
}

///////////////////////////////////////////////////////////////////////////////


bool RegExp::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> RegExp::semCheck( SemCheckContext & ) const
{
	TODO
	 return errorType;
}

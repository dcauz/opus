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


bool RegExp::genCode( GenCodeContext & gcc ) const
{
	TODO
	return false;
}

sp<Type> RegExp::semCheck( SemCheckContext & scc ) const
{
	TODO
	 return errorType;
}

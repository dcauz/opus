
#include "opus.h"
#include "String.h"

StringType	stringType;

///////////////////////////////////


bool String::genCode( GenCodeContext & ) const
{
 TODO // genCode
	return false;
}

sp<Type> String::semCheck( SemCheckContext & ) const
{
 TODO // semCheck
	return errorType;
}

bool StringType::eqCompareTo( Type * t ) const
{
	return dynamic_cast<StringType *>(t) != nullptr;
}

bool StringType::compareTo( Type * t )  const
{
	return dynamic_cast<StringType *>(t) != nullptr;
}

bool StringType::assignableTo( Type * t ) const
{
	return dynamic_cast<StringType *>(t) != nullptr;
}

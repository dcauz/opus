
#include "opus.h"
#include "string.h"

StringType	stringType;

///////////////////////////////////


String::String( const char * s ):value_(s)
{
}

bool String::genCode( GenCodeContext & gcc ) const
{
 TODO // genCode
	return false;
}

sp<Type> String::semCheck( SemCheckContext & scc ) const
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

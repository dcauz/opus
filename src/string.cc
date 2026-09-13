
#include "opus.h"
#include "String.h"
#include <cstring>


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

///////////////////////////////////

LString::LString( const char * cp ):len_(strlen(cp))
{
	value_ = new char[len_];
	strncpy( value_, cp, len_ );
}

bool LString::genCode( GenCodeContext & ) const
{
 TODO // genCode
	return false;
}

sp<Type> LString::semCheck( SemCheckContext & ) const
{
 TODO // semCheck
	return errorType;
}

///////////////////////////////////

LTString::LTString( const char * cp ):len_(strlen(cp)), value_(cp)
{
}

bool LTString::genCode( GenCodeContext & ) const
{
 TODO // genCode
	return false;
}

sp<Type> LTString::semCheck( SemCheckContext & ) const
{
 TODO // semCheck
	return errorType;
}


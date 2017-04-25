
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

Type * String::semCheck( SemCheckContext & scc ) const
{
 TODO // semCheck
	return &errorType;
}

#include "datetime.h"
#include "date.h"


Datetime::Datetime( int y, int m, int d, int h, int mn, int s, int ms ) :
	date_(y,m,d), 
	time_(h,mn,s,ms)
{
}

bool Datetime::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Datetime::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}


#include "time.h"

Time::Time( int h, int m, int s, int ms ):h_(h), m_(m), s_(s), ms_(ms)
{
}

bool Time::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Time::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Hour::Hour( int h ):h_(h)
{
}

bool Hour::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Hour::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Minute::Minute( int m ):m_(m)
{
}

bool Minute::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Minute::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Second::Second( double s ):s_(s)
{
}

bool Second::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Second::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}


#include "time.h"

Time::Time( int h, int m, int s, int ms ):h_(h), m_(m), s_(s), ms_(ms)
{
}

bool Time::genCode( GenCodeContext & gcc ) const
{
	TODO
	return false;
}

sp<Type> Time::semCheck( SemCheckContext & scc ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Hour::Hour( int h ):h_(h)
{
}

bool Hour::genCode( GenCodeContext & gcc ) const
{
	TODO
	return false;
}

sp<Type> Hour::semCheck( SemCheckContext & scc ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Minute::Minute( int m ):m_(m)
{
}

bool Minute::genCode( GenCodeContext & gcc ) const
{
	TODO
	return false;
}

sp<Type> Minute::semCheck( SemCheckContext & scc ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Second::Second( double s ):s_(s)
{
}

bool Second::genCode( GenCodeContext & gcc ) const
{
	TODO
	return false;
}

sp<Type> Second::semCheck( SemCheckContext & scc ) const
{
	TODO
	return errorType;
}


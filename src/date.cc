#include "date.h"


Date::Date( int y, int m, int d ):y_(y), m_(m), d_(d)
{
}

bool Date::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Date::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Year::Year( int y ):y_(y)
{
}

bool Year::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Year::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Month::Month( int m ):m_(m)
{
}

bool Month::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Month::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

Day::Day( int d ):d_(d)
{
}

bool Day::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Day::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}


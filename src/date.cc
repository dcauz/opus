#include "date.h"


Date::Date( int y, int m, int d ):y_(y), m_(m), d_(d)
{
}

bool Date::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

Type * Date::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}

///////////////////////////////////////////////////////////

bool DateType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool DateType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool DateType::assignableTo( Type * ) const
{
	TODO
	return false;
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

Type * Year::semCheck( SemCheckContext & ) const
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

Type * Month::semCheck( SemCheckContext & ) const
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

Type * Day::semCheck( SemCheckContext & ) const
{
	TODO
	return errorType;
}


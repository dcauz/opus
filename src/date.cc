#include "date.h"


Date::Date( int y, int m, int d ):y_(y), m_(m), d_(d)
{
}

uint32_t Date::toUint32() const
{
	// TODO
	return 0;
}

Year::Year( int y ):y_(y)
{
}

Month::Month( int m ):m_(m)
{
}

Day::Day( int d ):d_(d)
{
}

#include "time.h"

Time::Time( int h, int m, int s, int ms ):h_(h), m_(m), s_(s), ms_(ms)
{
}

unsigned Time::toUint32() const
{
	return ms_ + 1000000*(s_ + 60*(m_ + 60*h_));
}

Hour::Hour( int h ):h_(h)
{
}

Minute::Minute( int m ):m_(m)
{
}

Second::Second( int s ):s_(s)
{
}

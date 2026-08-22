#include "time.h"

Time::Time( int h, int m, int s, int ms ):h_(h), m_(m), s_(s), ms_(ms)
{
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

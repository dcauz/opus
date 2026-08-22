#include "datetime.h"
#include "date.h"


Datetime::Datetime( int y, int m, int d, int h, int mn, int s, int ms ) :
	date_(y,m,d), 
	time_(h,mn,s,ms)
{
}

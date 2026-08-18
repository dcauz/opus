#include "datetime.h"
#include "date.h"


Datetime::Datetime( int y, int m, int d, int h, int mn, int s, int ms ) :
	y_(y),
	m_(y),
	d_(y),
	h_(y),
	mn_(y),
	s_(y),
	ms_(y)
{
}

uint64_t Datetime::toUint64() const
{
	return 1000000*(
		Date(y_, m_, d_ ).toUint32()*3600*24 +
		h_*3600 +
		m_*60 +
		s_*60 +
		ms_);
}

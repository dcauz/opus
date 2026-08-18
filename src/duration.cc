#include "duration.h"


Duration::Duration( int d, int h, int m, int s, int ms ):
		d_(d),
		h_(h),
		m_(m),
		s_(s),
		ms_(ms)
{
}

uint64_t Duration::toUint64() const
{
	return (((d_*24 + h_)*60 + m_)*60 + s_)*1000000 + ms_;
}

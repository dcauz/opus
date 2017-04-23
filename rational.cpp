
#include <cstring>
#include "opus.h"
#include "rational.h"


RationalType	rationalType;


Rational::Rational()
{
}

Rational::Rational( char * r )
{
	char * d = strchr(r, '.' );

	if( d )
	{
		size_t len = strlen(d+1);
		memmove( d, d+1, len );
		num_ = Integer(r);

		d = new char[len+2];
		d[0] = '1';
		memset( d+1, '0', len );
		d[len+1] = 0;

		den_ = Integer(d);

		TODO // num / GCD, den / GCD
	}
	else
	{
		num_ = Integer(r);
		den_ = Integer(1);
	}
}

bool Rational::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

bool Rational::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return false;
}

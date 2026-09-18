#pragma once

#include "date.h"
#include "time.h"

#include <cstdint>


class Datetime : public Value
{
public:
	Datetime( int y, int m, int d, int h, int mn, int s, int ms );

	__uint128_t toUint128() const { return (((__uint128_t)date_.toUint32()) << 64 ) + time_.toUint64(); }

	Datetime( __uint128_t value ):date_(value >> 64 ), time_(value & 0xffffffff)
	{ }

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

private:

	Date	date_;	
	Time	time_;
};




#pragma once

#include <cstdint>


class Time
{
public:
	Time( int h, int m, int s, int ms );
	Time( uint64_t u64 )
	{
		ms_ = u64 >> 32;
		h_ = ( u64 & 0x0000fff0 ) >> 24;
		m_ = ( u64 & 0x00000ff0 ) >> 16;
		s_ = ( u64 & 0x000000f0 ) >> 8;
	}

	uint64_t toUint64() const
	{
		return ((uint64_t)ms_ << 32) + (h_ << 24) + (m_ << 16) + (s_ << 8);
	}

private:
	unsigned int  ms_;
	unsigned char h_;
	unsigned char m_;
	unsigned char s_;
};

class Hour
{
public:
	Hour( int h );

private:
	int h_;
};

class Minute
{
public:
	Minute( int m );

private:
	int m_;
};

class Second
{
public:
	Second( int s );

private:
	int s_;
};

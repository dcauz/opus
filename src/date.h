#pragma once

#include <cstdint>


class Date
{
public:
	Date() {}
	Date( int y, int m, int d );
	Date( uint32_t u32 )
	{
		y_ = u32 >> 16;
		m_ = (u32 & 0x00ff) >> 8;
		d_ = u32 & 0x000f;
	}

	uint32_t	toUint32() const
	{
		return (y_ << 16) + (m_ << 8) + d_;
	}

private:
	unsigned short y_;
	unsigned char m_;
	unsigned char d_;
};

class Year
{
public:
	Year( int y );

private:
	int y_;
};

class Month
{
public:
	Month( int m );

private:
	int m_;
};

class Day
{
public:
	Day( int d );

private:
	int d_;
};

#pragma once

#include <cstdint>


class Date
{
public:
	Date( int y, int m, int d );

	uint32_t	toUint32() const;

private:
	unsigned short y_;
	unsigned short m_;
	unsigned short d_;
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

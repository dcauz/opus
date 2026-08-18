#pragma once

#include <cstdint>


class Datetime
{
public:
	Datetime( int y, int m, int d, int h, int mn, int s, int ms );
	uint64_t toUint64() const;

private:
	unsigned short y_;
	unsigned char  m_;
	unsigned char  d_;
	unsigned char  h_;
	unsigned char  mn_;
	unsigned char  s_;
	unsigned int   ms_;
};

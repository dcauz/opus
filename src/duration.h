#pragma once

#include <cstdint>


class Duration
{
public:
	Duration( int d, int h, int m, int s, int ms );

	uint64_t	toUint64() const;

private:
	int d_;
	int h_;
	int m_;
	int s_;
	int ms_;
};

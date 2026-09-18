#pragma once

#include "value.h"

#include <cstdint>


class Time : public Value
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

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

private:
	unsigned int  ms_;
	unsigned char h_;
	unsigned char m_;
	unsigned char s_;
};

class Hour : public Value
{
public:
	Hour( int h );

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

	int toInt() const { return h_; }

private:
	int h_;
};

class Minute : public Value
{
public:
	Minute( int m );

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

	int toInt() const { return m_; }

private:
	int m_;
};

class Second : public Value
{
public:
	Second( double s );

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

	double toDouble() const { return s_; }

private:
	double s_;
};

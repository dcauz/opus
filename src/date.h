#pragma once

#include "value.h"

#include <cstdint>


class Date : public Value
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

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

private:
	unsigned short y_;
	unsigned char m_;
	unsigned char d_;
};

class Year : public Value
{
public:
	Year( int y );

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

	int toInt() const { return y_; }

private:
	int y_;
};

class Month : public Value
{
public:
	Month( int m );

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

	int toInt() const { return m_; }

private:
	int m_;
};

class Day : public Value
{
public:
	Day( int d );

	bool genCode( GenCodeContext & gcc ) const;
    sp<Type> semCheck( SemCheckContext & scc ) const;

	int toInt() const { return d_; }

private:
	int d_;
};

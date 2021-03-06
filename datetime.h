#pragma once

#include "type.h"
#include "expr.h"


class DateType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
private:
	uint32_t value_;
};

class TimeType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
private:
	uint32_t value_;
};

class DatetimeType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
private:
};

class DurationType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern sp<DateType>		dateType;
extern sp<TimeType>		timeType;
extern sp<DatetimeType>	datetimeType;
extern sp<DurationType>	durationType;


class Date: public Expr
{
public:
	Date( int y, int m, int d ):
		value_(y << 9 + m << 5 + d )
	{
	}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	uint32_t value_;
};

class Time: public Expr
{
public:
	Time( int hr, int mn, int sc, int ms ):
		secs_((hr*60+mn)*60+sc), ms_(ms)
	{
	}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	uint32_t secs_;
	uint32_t ms_;
};

class Datetime: public Expr
{
public:
	Datetime( int y, int m, int d, int hr, int mn, int sc, int ms ):
		date_(y,m,d), time_(hr,mn,sc,ms)
	{
	}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	Date date_;
	Time time_;
};

class Duration: public Expr
{
public:
	Duration( int d, int hr, int mn, int sc, int ms ): value_( ((d*24 + hr)*60+mn)*60+sc)
	{
		value_ = value_ * 1000000 + ms;
	}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	uint64_t value_;
};

#pragma once

#include "type.h"
#include "expr.h"


class DateType: public Type
{
public:

private:
	uint32_t value_;
};

class TimeType: public Type
{
public:

private:
	uint32_t value_;
};

class DatetimeType: public Type
{
public:

};

class PeriodType: public Type
{
};

extern DateType		dateType;
extern TimeType		timeType;
extern DatetimeType	datetimeType;
extern PeriodType	periodType;


class Date: public Expr
{
public:

private:
	uint32_t value_;
};

class Time: public Expr
{
public:

private:
	uint32_t value_;
};

class Datetime: public Date, public Time
{
public:

};

class Period: public Expr
{
public:

};

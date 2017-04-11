#pragma once

#include "type.h"
#include "integer.h"


class Rational
{
public:
	Rational();

private:
	Int num_;
	Int den_;
};


class RationalType: public Type
{
public:

};


extern RationalType rationalType;

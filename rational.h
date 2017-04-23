#pragma once

#include "type.h"
#include "integer.h"


class Rational: public Value
{
public:
	Rational();
	Rational( char * );

	bool genCode( GenCodeContext & gcc ) const override;
	bool semCheck( SemCheckContext & scc ) const override;

private:
	Integer num_;
	Integer den_;
};


class RationalType: public Type
{
public:

};


extern RationalType rationalType;

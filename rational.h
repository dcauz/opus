#pragma once

#include "type.h"
#include "integer.h"


class Rational: public Value
{
public:
	Rational();
	Rational( char * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	Integer num_;
	Integer den_;
};


class RationalType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};


extern RationalType rationalType;

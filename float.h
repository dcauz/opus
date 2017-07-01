#pragma once

#include "type.h"
#include "value.h"


class Float: public Value
{
public:
	Float( double );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	double value_;
};


class FloatType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern sp<FloatType> floatType;

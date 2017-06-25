#pragma once

#include "type.h"
#include "value.h"


class Float: public Value
{
public:
	Float( double );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

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

extern FloatType			floatType;

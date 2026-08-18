#pragma once

#include "type.h"
#include "value.h"


class Float32: public Value
{
public:
	Float32( float f ): value_(f) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	float value_;
};

class Float64: public Value
{
public:
	Float64( double d ): value_(d) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	double value_;
};


class Float32Type: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern sp<Float32Type> float32Type;

class Float64Type: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern sp<Float64Type> float64Type;

// TODO: Float80
// TODO: Float128
// TODO: Float256

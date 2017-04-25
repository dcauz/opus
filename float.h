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

};

extern FloatType			floatType;

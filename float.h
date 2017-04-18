#pragma once

#include "type.h"
#include "value.h"


class Float: public Value
{
public:
	Float( double );

	bool genCode( GenCodeContext & gcc ) const override;
	bool semCheck( SemCheckContext & scc ) const override;
};


class FloatType: public Type
{
public:

};

extern FloatType			floatType;

#pragma once

#include "type.h"
#include "value.h"


class Bool: public Value
{
public:
	Bool( bool b ): value_(b) {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	bool value_;
};


class BoolType: public Type
{
public:

};

extern BoolType	boolType;

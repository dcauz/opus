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

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern BoolType	boolType;

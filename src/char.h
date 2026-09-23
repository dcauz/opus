#pragma once

#include "type.h"
#include "value.h"


class Char : public Value
{
public:
	Char( char c ): c_(c) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	char c_;
};

class CharType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern CharType   charType;

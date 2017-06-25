#pragma once

#include "type.h"
#include "value.h"


class Void: public Value
{
public:

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;
};

class VoidType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};


extern VoidType	voidType;

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

};


extern VoidType	voidType;

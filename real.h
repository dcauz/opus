#pragma once

#include "type.h"
#include "value.h"



class Real: public Value
{
public:

	Real();

	bool genCode( GenCodeContext & gcc ) const override;
	bool semCheck( SemCheckContext & scc ) const override;
};


class E: public Real
{
public:

};

class PI: public Real
{
public:

};

class RealType: public Type
{
public:

private:
	Expr * value_;	
};


extern RealType	realType;


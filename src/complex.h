#pragma once

#include <memory>
#include "opus.h"
#include "type.h"
#include "value.h"


class Real;


class Complex: public Value
{
public:
	Complex(Value * r, Value * i );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	Value	* re_;
	Value	* im_;
};

class ComplexType: public Type
{
public:

	ComplexType( Type * base ): base_(base) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

private:
	Type	*	base_;
};

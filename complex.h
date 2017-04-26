#pragma once

#include <memory>
#include "opus.h"
#include "type.h"
#include "value.h"


class Real;


class Complex: public Value
{
public:
	Complex( int r, int i );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	up<Real> real_;
	up<Real> imaginary_;
};


class ComplexType: public Type
{
public:

};


extern ComplexType	complexType;

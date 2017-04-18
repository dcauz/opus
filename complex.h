#pragma once

#include "type.h"
#include "value.h"


class Real;


class Complex: public Value
{
public:
	Complex( int r, int i );

	bool genCode( GenCodeContext & gcc ) const override;
	bool semCheck( SemCheckContext & scc ) const override;

private:
	Real * real_;
	Real * imaginary_;
};


class ComplexType: public Type
{
public:

};


extern ComplexType	complexType;

#pragma once

#include <memory>
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
	std::unique_ptr<Real> real_;
	std::unique_ptr<Real> imaginary_;
};


class ComplexType: public Type
{
public:

};


extern ComplexType	complexType;

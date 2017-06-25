#pragma once

#include <memory>
#include "opus.h"
#include "type.h"
#include "value.h"


class Real;


class Complex: public Value
{
public:
	Complex(std::pair<std::string,up<Expr>> *, 
			std::pair<std::string,up<Expr>> * );
	Complex( int r, int i );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	up<Expr> re_;
	up<Expr> im_;
};


class ComplexType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};


extern ComplexType	complexType;

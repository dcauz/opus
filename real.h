#pragma once

#include "type.h"
#include "value.h"



class Real: public Value
{
public:

	Real( );
	Real( int i );
	Real( int64_t l );
	Real( double d );

	bool genCode( GenCodeContext & gcc ) const override;
	bool semCheck( SemCheckContext & scc ) const override;

private:

	enum Form
	{	
		INT,
		LONG,
		INTEGER,
		RATIONAL,
		MULTI_TERM
	};	
	
	Form form_;
	union
	{
		int i_;
		int64_t l_;
	};
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


#pragma once

#include <vector>
#include <string>
#include "expr.h"


class Type
{
public:
	virtual ~Type() {}

	virtual bool eqCompareTo( Type * ) const = 0;
	virtual bool compareTo( Type * ) const = 0;
	virtual bool assignableTo( Type * ) const = 0;

private:
	std::string name_;
};


class Nullable: public Type
{
public:
	Nullable( Type * b ):base_(b) 
	{
	}

	bool eqCompareTo( Type * ) const override;
	bool compareTo( Type * ) const override;
	bool assignableTo( Type * ) const override;

private:
	Type	* base_;
};


class UnknownType: public Type
{
public:

	bool eqCompareTo( Type * ) const override;
	bool compareTo( Type * ) const override;
	bool assignableTo( Type * ) const override;
};

extern UnknownType unknownType;

class ErrorType: public Type
{
public:

	bool eqCompareTo( Type * ) const override;
	bool compareTo( Type * ) const override;
	bool assignableTo( Type * ) const override;
};

extern ErrorType errorType;


class TypeArg
{
public:
	TypeArg( Expr * e ):expr_(e) {}
	TypeArg( Type * t ):type_(t) {}

private:
	up<Expr> expr_;
	up<Type> type_;
};

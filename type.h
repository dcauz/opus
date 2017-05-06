#pragma once

#include <vector>
#include <string>
#include "expr.h"


class Type
{
public:
	virtual ~Type() {}

private:
	std::string name_;
};


class Nullable: public Type
{
public:
	Nullable( Type * b ):base_(b) 
	{
	}

private:
	Type	* base_;
};


class UnknownType: public Type
{
public:

};

extern UnknownType unknownType;

class ErrorType: public Type
{
public:

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

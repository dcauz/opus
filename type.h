#pragma once

#include <vector>
#include <string>


class Expr;


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


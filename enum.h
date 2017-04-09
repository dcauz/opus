#pragma once

#include "type.h"

class Expr;


class EnumMember
{
public:
	EnumMember( const char * n, Expr * v = nullptr ):name_(n),
		value_(v)
	{
	}

private:
	std::string	name_;
	Expr		* value_;
};


class Enum : public Type
{
public:

};

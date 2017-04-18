#pragma once

#include <vector>
#include "type.h"
#include "value.h"

class Expr;


class Enum: public Value
{
public:

};


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


class EnumType : public Type
{
public:

private:
	std::vector<EnumMember>	members_;
};

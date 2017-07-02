#pragma once

#include <vector>
#include "type.h"
#include "value.h"

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
	Expr * value_;
};

class EnumType : public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

private:
	std::vector<EnumMember>	members_;
};

class Enum: public Value
{
public:

private:
	sp<EnumType> type_;
};


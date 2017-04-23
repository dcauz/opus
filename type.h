#pragma once

#include <vector>
#include <string>


class Expr;


class Type
{
public:

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

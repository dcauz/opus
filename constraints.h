#pragma once

#include <memory>
#include <vector>
#include <string>

#include "opus.h"
#include "statement.h"
#include "expr.h"


class ConstraintDef
{
public:
	ConstraintDef( 
		const char * n, 
		std::vector<std::string> * args,
		std::vector<up<Expr>> * ops ):
	name_(n),
	args_(args),
	ops_(ops)
	{}

private:
	std::string	name_;
	up<std::vector<std::string>>args_;
	up<std::vector<up<Expr>>>	ops_;
};


class Constraints: public Definition
{
public:
	Constraints( 
		int s, int e,
		const char * n, 
		std::vector<up<ConstraintDef>> * c ):
	Definition(s,e),
	name_(n),
	constraints_(c)
	{
	}

	bool genCode( GenCodeContext & ) const override;
	sp<Type> semCheck( SemCheckContext & ) const override;

private:
	std::string	name_;
	up<std::vector<up<ConstraintDef>>> constraints_;
};

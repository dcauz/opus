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
		std::vector<std::unique_ptr<Expr>> * ops ):
	name_(n),
	args_(args),
	ops_(ops)
	{}

private:
	std::string	name_;
	std::unique_ptr<std::vector<std::string>>	args_;
	std::unique_ptr<std::vector<std::unique_ptr<Expr>>> ops_;
};


class Constraints: public Definition
{
public:
	Constraints( 
		int s, int e,
		const char * n, 
		std::vector<std::unique_ptr<ConstraintDef>> * c ):
	Definition(s,e),
	name_(n),
	constraints_(c)
	{
	}

	bool genCode( GenCodeContext & ) const override;
	Type * semCheck( SemCheckContext & ) const override;

private:
	std::string	name_;
	std::unique_ptr<std::vector<std::unique_ptr<ConstraintDef>>>
		constraints_;
};

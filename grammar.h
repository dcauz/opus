#pragma once

#include <memory>
#include <string>
#include <vector>
#include "statement.h"


class GrammarDef
{
public:
	virtual ~GrammarDef() {}
};


class TokenDef: public GrammarDef
{
public:
	~TokenDef() override {}

};

class RuleDef: public GrammarDef
{
public:
	~RuleDef() override {}

};

class Grammar: public Definition
{
public:
	Grammar( 
		const char * n, 
		std::vector<std::unique_ptr<GrammarDef>> * gd ):
		Definition(0,0), // TODO
		name_(n), defs_(gd)
	{}

	bool genCode( GenCodeContext & ) const override;
	bool semCheck( SemCheckContext & ) const override;

private:
	std::string name_;
	std::unique_ptr<std::vector<std::unique_ptr<GrammarDef>>> defs_;
};

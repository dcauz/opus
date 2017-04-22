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
	TokenDef( const char * n, const char * v):name_(n), value_(v) {}
	~TokenDef() override {}

private:
	std::string name_;
	std::string value_;
};

class RuleDef: public GrammarDef
{
public:
	RuleDef( const char * n, std::vector<std::string> * tokens ):
		name_(n), tokens_(tokens)
	{}

	~RuleDef() override {}

private:
	std::string name_;
	std::unique_ptr<std::vector<std::string>> tokens_;
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

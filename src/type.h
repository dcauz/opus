#pragma once

#include <vector>
#include <string>

#include "opus.h"
#include "symbol.h"


class Type: public Symbol
{
public:
	Type(const char * n = nullptr ):Symbol(n)
	{	
	}
	Type(const std::string & n ):Symbol(n)
	{	
	}
	virtual ~Type() {}

	virtual bool eqCompareTo( Type * ) const = 0;
	virtual bool compareTo( Type * ) const = 0;
	virtual bool assignableTo( Type * ) const = 0;
};


class Nullable: public Type
{
public:
	Nullable( Type * b ):base_(b) 
	{
	}

	bool eqCompareTo( Type * ) const override;
	bool compareTo( Type * ) const override;
	bool assignableTo( Type * ) const override;

private:
	Type	* base_;
};

class UnknownType: public Type
{
public:

	bool eqCompareTo( Type * ) const override;
	bool compareTo( Type * ) const override;
	bool assignableTo( Type * ) const override;
};

extern sp<UnknownType> unknownType;

class ErrorType: public Type
{
public:

	bool eqCompareTo( Type * ) const override;
	bool compareTo( Type * ) const override;
	bool assignableTo( Type * ) const override;
};

extern sp<ErrorType> errorType;

class Arg;

class FunctionType : public Type
{
public:
	FunctionType( int decls, const char * name, Type * rt, std::vector<up<Arg>> * args );
	~FunctionType();

	bool eqCompareTo( Type * ) const final;
	bool compareTo( Type * ) const final;
	bool assignableTo( Type * ) const final;

private:
	up<Type> return_;
	up<std::vector<up<Arg>>> args_;
};

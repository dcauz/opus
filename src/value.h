#pragma once

#include "type.h"


class GenCodeContext;
class SemCheckContext; 

class Value
{
public:
	virtual ~Value() {}

    virtual bool genCode( GenCodeContext & gcc ) const = 0;
    virtual sp<Type> semCheck( SemCheckContext & scc ) const = 0;
};

class FunctionType;

class FunctionRef: public Value
{
public:
	FunctionRef( const char * ): ftype_(nullptr) {}
	FunctionRef( FunctionType * ft ): ftype_(ft) {}

    bool genCode( GenCodeContext & gcc ) const final;
    sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	FunctionType	* ftype_;
};


class Variable;

class VariableRef : public Value
{
public:
	VariableRef( const char * ): variable_(nullptr) {}
	VariableRef( Variable * v ): variable_(v) {}

    bool genCode( GenCodeContext & gcc ) const final;
    sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	Variable	* variable_;
};


class Expr;

class Vector : public Value
{
public:
	Vector( std::vector<Expr *> && vals );
	~Vector();

    virtual bool genCode( GenCodeContext & gcc ) const final;
    virtual sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	std::vector<Expr * > values_;
};

class MSet : public Value
{
public:
	MSet( std::vector<Expr *> && vals );
	~MSet();

    virtual bool genCode( GenCodeContext & gcc ) const final;
    virtual sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	std::vector<Expr * > values_;
};

#include "value.h"


bool FunctionRef::genCode( GenCodeContext & ) const 
{
	TODO
	return false;
}

sp<Type> FunctionRef::semCheck( SemCheckContext & ) const
{
	TODO
	return nullptr;
}

///////////////////////////////////////////////////////////////////////////////

bool VariableRef::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> VariableRef::semCheck( SemCheckContext & ) const
{
	TODO
	return nullptr;
}

///////////////////////////////////////////////////////////////////////////////

Vector::Vector( std::vector<Expr *> && vals ): values_(vals) {}

Vector::~Vector()
{
	for( Expr * e : values_ )
		delete e;
}

bool Vector::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> Vector::semCheck( SemCheckContext & ) const
{
	TODO
	return nullptr;
}

///////////////////////////////////////////////////////////////////////////////

MSet::MSet( std::vector<Expr *> && vals ): values_(vals) {}

MSet::~MSet()
{
	for( Expr * e : values_ )
		delete e;
}

bool MSet::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> MSet::semCheck( SemCheckContext & ) const
{
	TODO
	return nullptr;
}



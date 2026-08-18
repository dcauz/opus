#include "list.h"


bool ListType::eqCompareTo( Type * ) const 
{
	TODO
	return false;
}

bool ListType::compareTo( Type * ) const
{
	TODO
	return false;
}

bool ListType::assignableTo( Type * ) const
{
	TODO
	return false;
}


List::List( Type *, std::vector<up<Value>> * )
{
	TODO
}

bool List::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

sp<Type> List::semCheck( SemCheckContext & ) const
{
	TODO
	return nullptr;
}

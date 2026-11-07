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


List::List( Type *, std::vector<Value *> * )
{
	TODO
}

bool List::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

Type * List::semCheck( SemCheckContext & ) const
{
	TODO
	return nullptr;
}

#include "mmap.h"
#include "multiset.h"


MultiMap::MultiMap( std::vector<Value *> * v ):values_(v)
{
}

bool MultiMap::genCode( GenCodeContext & ) const
{
TODO // genCode
	return false;
}

Type * MultiMap::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return nullptr;
}

bool MultiMapType::eqCompareTo( Type * t ) const
{
	MultiMapType * st = dynamic_cast<MultiMapType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->eqCompareTo( ele );
}

bool MultiMapType::compareTo( Type * t )  const
{
	MultiMapType * st = dynamic_cast<MultiMapType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->compareTo( ele );
}

bool MultiMapType::assignableTo( Type * t ) const
{
	MultiMapType * st = dynamic_cast<MultiMapType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->assignableTo( ele );
}

#include "set.h"
#include "multiset.h"


Set::Set( std::vector<Value *> * v ):values_(v)
{
}

bool Set::genCode( GenCodeContext & ) const
{
TODO // genCode
	return false;
}

Type * Set::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return nullptr;
}

bool SetType::eqCompareTo( Type * t ) const
{
	SetType * st = dynamic_cast<SetType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->eqCompareTo( ele );
}

bool SetType::compareTo( Type * t )  const
{
	SetType * st = dynamic_cast<SetType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->compareTo( ele );
}

bool SetType::assignableTo( Type * t ) const
{
	SetType * st = dynamic_cast<SetType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->assignableTo( ele );
}

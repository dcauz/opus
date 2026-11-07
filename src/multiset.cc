#include "multiset.h"
#include "set.h"


Multiset::Multiset( std::vector<Value *> * v ):values_(v)
{
}

bool Multiset::genCode( GenCodeContext & ) const
{
TODO // genCode
	return false;
}

Type * Multiset::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return errorType;
}

bool MultisetType::eqCompareTo( Type * t ) const
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

bool MultisetType::compareTo( Type * t )  const
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

bool MultisetType::assignableTo( Type * t ) const
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

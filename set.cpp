#include "set.h"
#include "multiset.h"


Set::Set( std::vector<up<Expr>> * v ):values_(v)
{
}

bool Set::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Set::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return nullptr;
}

bool SetType::eqCompareTo( Type * t ) const
{
	SetType * st = dynamic_cast<SetType *>(t);
	sp<Type> ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->eqCompareTo( ele.get() );
}

bool SetType::compareTo( Type * t )  const
{
	SetType * st = dynamic_cast<SetType *>(t);
	sp<Type> ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->compareTo( ele.get() );
}

bool SetType::assignableTo( Type * t ) const
{
	SetType * st = dynamic_cast<SetType *>(t);
	sp<Type> ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->assignableTo( ele.get() );
}

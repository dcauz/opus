#include "multiset.h"
#include "set.h"


Multiset::Multiset( std::vector<up<Expr>> * v ):values_(v)
{
}

bool Multiset::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Multiset::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return errorType;
}

bool MultisetType::eqCompareTo( Type * t ) const
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

bool MultisetType::compareTo( Type * t )  const
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

bool MultisetType::assignableTo( Type * t ) const
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

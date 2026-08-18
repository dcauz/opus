#include "map.h"
#include "multiset.h"


Map::Map( std::vector<up<Value>> * v ):values_(v)
{
}

bool Map::genCode( GenCodeContext & ) const
{
TODO // genCode
	return false;
}

sp<Type> Map::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return nullptr;
}

bool MapType::eqCompareTo( Type * t ) const
{
	MapType * st = dynamic_cast<MapType *>(t);
	sp<Type> ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->eqCompareTo( ele.get() );
}

bool MapType::compareTo( Type * t )  const
{
	MapType * st = dynamic_cast<MapType *>(t);
	sp<Type> ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->compareTo( ele.get() );
}

bool MapType::assignableTo( Type * t ) const
{
	MapType * st = dynamic_cast<MapType *>(t);
	sp<Type> ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->assignableTo( ele.get() );
}

#include "map.h"
#include "multiset.h"


Map::Map( std::vector<Value *> * v ):values_(v)
{
}

bool Map::genCode( GenCodeContext & ) const
{
TODO // genCode
	return false;
}

Type * Map::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return nullptr;
}

bool MapType::eqCompareTo( Type * t ) const
{
	MapType * st = dynamic_cast<MapType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->eqCompareTo( ele );
}

bool MapType::compareTo( Type * t )  const
{
	MapType * st = dynamic_cast<MapType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->compareTo( ele );
}

bool MapType::assignableTo( Type * t ) const
{
	MapType * st = dynamic_cast<MapType *>(t);
	Type * ele;
	
	if( st != nullptr )
		ele = st->ele();
	else if( MultisetType * mt = dynamic_cast<MultisetType *>(t))
		ele = mt->ele();
	else
		return false;

	return ele_->assignableTo( ele );
}

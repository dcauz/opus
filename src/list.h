#pragma once

#include <list>
#include "opus.h"
#include "collection.h"
#include "value.h"


class ListType: public CollectionType
{
public:
	ListType( Type * ele, bool isD ):
		CollectionType(ele), isD_(isD) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

	sp<Type> ele() const { return ele_; }

private:
	bool	isD_;
};

class List: public Value
{
public:
	List( Type *, std::vector<up<Value>> * = nullptr );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	up<std::list<up<Value>>> values_;
	sp<ListType>	type_;
};

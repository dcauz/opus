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

	Type * ele() const { return ele_; }

private:
	bool	isD_;
};

class List: public Value
{
public:
	List( Type *, std::vector<Value *> * = nullptr );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	std::list<Value *> * values_;
	ListType	*	type_;
};

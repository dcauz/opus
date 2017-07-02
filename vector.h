#pragma once

#include <vector>
#include "opus.h"
#include "collection.h"
#include "value.h"


class VectorType: public CollectionType
{
public:
	VectorType( Type * ele, int d ):
		CollectionType(ele), dim_(d) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

	sp<Type> ele() const { return ele_; }
	int      dim() const { return dim_; }

private:
	int dim_;
};

class Vector: public Value
{
public:
	Vector( std::vector<up<Expr>> * );

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	up<std::vector<up<Expr>>> values_;
	sp<VectorType>	type_;
};

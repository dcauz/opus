#pragma once

#include <vector>
#include "opus.h"
#include "collection.h"
#include "value.h"


class Vector: public Value
{
public:
	Vector( std::vector<up<Expr>> * );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	up<std::vector<up<Expr>>> values_;
};

class VectorType: public CollectionType
{
public:
	VectorType( Type * ele, int d ):CollectionType(ele), dim_(d) {}

private:
	int dim_;
};

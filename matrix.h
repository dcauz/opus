#pragma once

#include "collection.h"
#include "value.h"


class Expr;


class Matrix: public Value
{
public:

	bool genCode( GenCodeContext & gcc ) const override;
	bool semCheck( SemCheckContext & scc ) const override;
};


class MatrixType: public CollectionType
{
public:
	MatrixType( Type * ele, int r, int c ):CollectionType(ele), 
		rows_(r), cols_(c) {}

private:
	int rows_;
	int cols_;
};

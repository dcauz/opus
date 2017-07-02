#pragma once

#include "collection.h"
#include "value.h"


class Expr;


class MatrixType: public CollectionType
{
public:
	MatrixType( Type * ele, int r, int c ):CollectionType(ele), 
		rows_(r), cols_(c) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

	int rows() const { return rows_; }
	int cols() const { return cols_; }

private:
	int rows_;
	int cols_;
};

class Matrix: public Value
{
public:

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	sp<MatrixType> type_;
};


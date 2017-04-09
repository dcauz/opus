#pragma once

#include "collection.h"

class Expr;


class MatrixType: public CollectionType
{
public:
	MatrixType( Type * ele, int r, int c ):CollectionType(ele), 
		rows_(r), cols_(c) {}

private:
	int rows_;
	int cols_;
};

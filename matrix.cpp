#include "matrix.h"

bool MatrixType::eqCompareTo( Type * t ) const
{
	MatrixType * mt = dynamic_cast<MatrixType *>(t);

	if( mt == nullptr )
		return false;

	TODO // comp/assign
	return false;
}

bool MatrixType::compareTo( Type * t )  const
{
	MatrixType * mt = dynamic_cast<MatrixType *>(t);

	if( mt == nullptr )
		return false;

	TODO // comp/assign
	return false;
}

bool MatrixType::assignableTo( Type * t ) const
{
	MatrixType * mt = dynamic_cast<MatrixType *>(t);

	if( mt == nullptr )
		return false;

	TODO // comp/assign
	return false;
}

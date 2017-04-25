
#include "opus.h"
#include "complex.h"
#include "real.h"


Complex::Complex(int r, int i): 
	real_(new Real(r)), 
	imaginary_(new Real(i))
{
}

bool Complex::genCode( GenCodeContext & gcc ) const
{
	TODO // genCode
	return false;
}

Type * Complex::semCheck( SemCheckContext & scc ) const
{
	TODO // semCheck
	return &errorType;
}

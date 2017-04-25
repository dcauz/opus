
#include "opus.h"
#include "bool.h"


BoolType	boolType;

//////////////////////////////////////////

bool Bool::genCode( GenCodeContext & gcc ) const
{
	TODO	// genCode
	return false;
}

Type * Bool::semCheck( SemCheckContext & scc ) const
{
	TODO // semCheck
	return &errorType;
}

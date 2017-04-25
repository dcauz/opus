
#include "opus.h"
#include "type.h"
#include "constraints.h"


bool Constraints::genCode( GenCodeContext & ) const
{
TODO // genCode
	return false;
}

Type * Constraints::semCheck( SemCheckContext & ) const
{
TODO // semCheck
	return &errorType;
}



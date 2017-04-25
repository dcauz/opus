
#include "opus.h"
#include "void.h"


VoidType	voidType;

//////////////////////////////////////////////////


bool Void::genCode( GenCodeContext & gcc ) const
{
 TODO // genCode
	return false;
}

Type * Void::semCheck( SemCheckContext & scc ) const
{
	return &voidType;
}

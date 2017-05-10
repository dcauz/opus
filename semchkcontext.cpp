#include "semchkcontext.h"


void SemCheckContext::pushBlockOwner(BlockOwner ob )
{
	blockOwners_.push_back(ob);
}

void SemCheckContext::popBlockOwner()
{
	blockOwners_.pop_back();
}

bool SemCheckContext::canBreak()
{
	for( int i = blockOwners_.size() - 1; i >= 0; --i )
	{
		BlockOwner bo = blockOwners_[i];

		if(( bo == BlockOwner::Class ) ||
		( bo == BlockOwner::Ctor ) ||
		( bo == BlockOwner::Tuple ) ||
		( bo == BlockOwner::Union ) ||
		( bo == BlockOwner::Namespace ) ||
		( bo == BlockOwner::Operator ) ||
		( bo == BlockOwner::Routine ) ||
		( bo == BlockOwner::Interface ))
			return false;

		if(( bo == BlockOwner::For ) || ( bo == BlockOwner::Switch ) ||
		( bo == BlockOwner::Until ) || ( bo == BlockOwner::While ))
			return true;
	}
	
	return false;
}

bool SemCheckContext::canContinue()
{
	for( int i = blockOwners_.size() - 1; i >= 0; --i )
	{
		BlockOwner bo = blockOwners_[i];

		if(( bo == BlockOwner::Class ) ||
		( bo == BlockOwner::Ctor ) ||
		( bo == BlockOwner::Tuple ) ||
		( bo == BlockOwner::Union ) ||
		( bo == BlockOwner::Namespace ) ||
		( bo == BlockOwner::Operator ) ||
		( bo == BlockOwner::Routine ) ||
		( bo == BlockOwner::Interface ))
			return false;

		if(( bo == BlockOwner::For ) || ( bo == BlockOwner::Until ) || 
		( bo == BlockOwner::While ))
			return true;
	}
	

	return false;
}

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

///////////////////////////////////////////////////////
//
//  Block Construct Parent Constructs
//
//	Namespace 		Root
//					Namsepace
//	Class      		Root
//					Namespace
//					Class
//					Union
//	Union      		Root
//					Namespace
//					Class
//					Union
//	Interface  		Root
//					Namespace
//					Interface
//					Class
//	Operator   		Class
//					Interface
//	Routine    		Root
//					Namespace
//					Class
//	Ctor       		Class
//	None       		ALL
//	Atomic     		ALL
//	Try - Catch     ALL
//	If - Else       ALL
//	For        		ALL
//	Switch     		ALL
//	Until      		ALL
//	While      		ALL
//	Tuple      		ALL
//

bool SemCheckContext::validBlockNesting()
{
	size_t top = blockOwners_.size();

	if(top == 0 )
		return true;

	--top;	// 0 based index

	BlockOwner bo = blockOwners_[top];

	if( (bo == BlockOwner::None) || (bo == BlockOwner::Atomic) || 
	(bo == BlockOwner::Try) || (bo == BlockOwner::Catch) ||
	(bo == BlockOwner::If) || (bo == BlockOwner::Else) ||
	(bo == BlockOwner::For) || (bo == BlockOwner::Switch) ||
	(bo == BlockOwner::Until) || (bo == BlockOwner::While) ||
	(bo == BlockOwner::Tuple))
		return true;

	// Blocks nested within the root
	if( top == 1 )
	{
		if( (bo == BlockOwner::Namespace) || (bo == BlockOwner::Class) ||
			(bo == BlockOwner::Union) || (bo == BlockOwner::Interface) ||
			(bo == BlockOwner::Routine) || (bo == BlockOwner::None) ||
			(bo == BlockOwner::Atomic) || (bo == BlockOwner::Try ) ||
			(bo == BlockOwner::Catch) || (bo == BlockOwner::If) ||
			(bo == BlockOwner::Else) || (bo == BlockOwner::For) ||
			(bo == BlockOwner::Switch) || (bo == BlockOwner::Until) ||
			(bo == BlockOwner::While) || (bo == BlockOwner::Tuple) )
			return true;
	}
	else
	{
		BlockOwner ebo = blockOwners_[top-1];

		switch(bo)
		{
		case BlockOwner::Namespace:
			if(ebo == BlockOwner::Namespace)
				return true;
			break;
		case BlockOwner::Class:
			if((ebo == BlockOwner::Namespace) ||
			   (ebo == BlockOwner::Class) ||
			   (ebo == BlockOwner::Union))
				return true;
			break;
		case BlockOwner::Union:
			if((ebo == BlockOwner::Namespace) ||
			   (ebo == BlockOwner::Class) ||
			   (ebo == BlockOwner::Union))
				return true;
			break;
		case BlockOwner::Interface:
			if((ebo == BlockOwner::Namespace) ||
			   (ebo == BlockOwner::Interface) ||
			   (ebo == BlockOwner::Class))
				return true;
			break;
		case BlockOwner::Operator:
			if((ebo == BlockOwner::Class) ||
			   (ebo == BlockOwner::Interface))
				return true;
			break;
		case BlockOwner::Routine:
			if((ebo == BlockOwner::Namespace) || (ebo == BlockOwner::Class))
				return true;
			break;
		case BlockOwner::Ctor:
			if(ebo == BlockOwner::Class)
				return true;
			break;
		}
		return true;
	}
	return false;
}


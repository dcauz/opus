#include "semchkcontext.h"


void SemCheckContext::pushBlockOwner(BlockOwner ob )
{
	blockOwners_.push_back(ob);
}

void SemCheckContext::popBlockOwner()
{
	blockOwners_.pop_back();
}

bool SemCheckContext::canBreak() const
{
	for( int i = blockOwners_.size() - 1; i >= 0; --i )
	{
		BlockOwner bo = blockOwners_[i];

		if(( bo == BlockOwner::Class ) ||
		( bo == BlockOwner::Ctor ) ||
		( bo == BlockOwner::Dtor ) ||
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

bool SemCheckContext::inTypeDef() const
{
	if( blockOwners_.size() > 0 )
	{
		BlockOwner bo = blockOwners_[blockOwners_.size()-1];

		return ((bo == BlockOwner::Class ) ||
				(bo == BlockOwner::Interface ) ||
				(bo == BlockOwner::Union ) );
	}
	return false;
}

bool SemCheckContext::canDefault() const
{
	if( blockOwners_.size() > 0 )
		return blockOwners_[blockOwners_.size()-1] == BlockOwner::Switch;

	return false;
}

bool SemCheckContext::canContinue() const
{
	for( int i = blockOwners_.size() - 1; i >= 0; --i )
	{
		BlockOwner bo = blockOwners_[i];

		if(( bo == BlockOwner::Class ) ||
		( bo == BlockOwner::Ctor ) ||
		( bo == BlockOwner::Dtor ) ||
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

// A Routine, Operator, Dtor or Ctor must be seen before 
// Namespace, Class, Union, Interface
//
bool SemCheckContext::canReturn() const
{
	for( int i = blockOwners_.size() - 1; i >= 0; --i )
	{
		BlockOwner bo = blockOwners_[i];

		if(( bo == BlockOwner::Routine ) ||
		( bo == BlockOwner::Operator ) ||
		( bo == BlockOwner::Ctor ) ||
		( bo == BlockOwner::Dtor ))
			return false;

		if(( bo == BlockOwner::Namespace ) || 
		   ( bo == BlockOwner::Class ) || 
		   ( bo == BlockOwner::Union ) ||
		   ( bo == BlockOwner::Tuple ) )
			return true;
	}
	

	return false;
}

bool SemCheckContext::canCase() const
{
	if( blockOwners_.size() < 2 )
	{
		return false;
	}

	size_t blocks = blockOwners_.size();

	BlockOwner bo  = blockOwners_[blocks-1];

	if( bo != BlockOwner::Switch )
		return false;

	return true;
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
//	Dtor       		Class
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

bool SemCheckContext::validBlockNesting() const
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
		case BlockOwner::Dtor:
			if(ebo == BlockOwner::Class)
				return true;
		case BlockOwner::Ctor:
			if(ebo == BlockOwner::Class)
				return true;
			break;
		}
		return true;
	}
	return false;
}

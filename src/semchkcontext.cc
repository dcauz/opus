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
		   ( bo == BlockOwner::Union ) )
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
//  Symbol Table usage
//
//	Construct			Named	Parent Constructs
//  ---------------------------------------------------
//	Global namespace	No		None
//
//	atomic     			No		ALL - Global
//	block				No		ALL - Global
//	ctor       			No		Class
//	do         			No		ALL - Global
//	dtor       			No		Class
//	enum   	   			Yes		ALL
//	for        			No		ALL - Global
//	function   			No		ALL
//	if - else			No		ALL - Global
//	interface  			Yes		ALL
//	namespace 			Yes		Global namespace
//								Namespace
//	operator   			No		ALL
//	pure function		No		ALL
//	select				No		ALL
//	switch     			No		ALL - Global
//	try - catch			No		ALL - Global
//	type   	   			Yes		ALL
//	union  	   			Yes		ALL
//	where				No		ALL
//	while      			No		ALL - Global

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
	(bo == BlockOwner::Until) || (bo == BlockOwner::While) )
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
			(bo == BlockOwner::While))
			return true;
	}
	else
	{
		BlockOwner ebo = blockOwners_[top-1];

		switch(bo)
		{
		case BlockOwner::Atomic:
		case BlockOwner::Catch:
		case BlockOwner::Else:
		case BlockOwner::For:
		case BlockOwner::If:
		case BlockOwner::None:
		case BlockOwner::Switch:
		case BlockOwner::Try:
		case BlockOwner::Until:
		case BlockOwner::While:
				// TODO
				return false;

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

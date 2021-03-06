#include <cassert>
#include "statement.h"
#include "opus.h"
#include "gencodecontext.h"
#include "program.h"
#include "il.h"
#include "type.h"
#include "void.h"
#include "expr.h"
#include "bool.h"
#include "semchkcontext.h"
#include "log.h"



EnumDef::EnumDef(
	int s,
	int e,
	const char * n,
	std::vector<up<EnumMember>> * moe ):
	TypeDef(s,e), 
	name_(n), 
	moe_(moe) 
{
}

/////////////////////////////////////////////////////////////////

sp<Type> Empty::semCheck( SemCheckContext & scc ) const 
{
	return voidType;
}

sp<Type> AtomicBlock::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Atomic);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = block_->begin();
	auto e = block_->end();

	while( i != e )
	{
		if( i->get()->semCheck( scc ) == errorType )
			return errorType;
		++i;
	}

	scc.popBlockOwner();

	return voidType;
}

sp<Type> Block::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::None);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = statements_->begin();
	auto e = statements_->end();

	while( i != e )
	{
		if( i->get()->semCheck( scc ) == errorType )
			return errorType;
		++i;
	}

	scc.popBlockOwner();

	return voidType;
}

sp<Type> CatchBlock::semCheck( SemCheckContext & scc ) const 
{
	if( errorType == var_->semCheck( scc ) )
		return errorType;
	
	scc.pushBlockOwner(BlockOwner::Catch);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = block_->begin();
	auto e = block_->end();

	while( i != e )
	{
		Statement * s = (*i).get();

		if( s->semCheck( scc ) == errorType )
			return errorType;

		++i;
	}
	scc.popBlockOwner();

	return voidType;
}

sp<Type> Try::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Try);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = block_->begin();
	auto e = block_->end();

	while( i != e )
	{
		if( i->get()->semCheck( scc ) == errorType )
			return errorType;
		++i;
	}

	scc.popBlockOwner();

	auto ci = catchBlocks_->begin();
	auto ce = catchBlocks_->end();

	while( ci != ce )
	{
		CatchBlock * cb = (*ci).get();

		if( cb->semCheck( scc ) == errorType )
			return errorType;
		++ci;
	}

	return voidType;
}

sp<Type> Delete::semCheck( SemCheckContext & scc ) const 
{
TODO // semCheck
	return voidType;
}

sp<Type> Insert::semCheck( SemCheckContext & scc ) const 
{
TODO // semCheck
	return voidType;
}

sp<Type> Update::semCheck( SemCheckContext & scc ) const 
{
TODO // semCheck
	return voidType;
}

sp<Type> ExprStatement::semCheck( SemCheckContext & scc ) const 
{
	return expr_->semCheck( scc );
}

sp<Type> EnumDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> ClassDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Class);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck

	scc.popBlockOwner();

	return errorType;
}

sp<Type> InterfaceDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Interface);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck

	scc.popBlockOwner();

	return errorType;
}

// Must be contained directly in class, interface or union definition
//
sp<Type> Private::semCheck( SemCheckContext & scc ) const 
{
	if( !scc.inTypeDef() )
	{
		LOG( INV_PRIVATE );
		return errorType;
	}
	return voidType;
}

sp<Type> Namespace::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Namespace);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = block_->begin();
	auto e = block_->end();

	while( i != e )
	{
		if( i->get()->semCheck( scc ) == errorType )
			return errorType;
		++i;
	}

	scc.popBlockOwner();

	return errorType;
}

sp<Type> TupleDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Tuple);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

sp<Type> UnionDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Union);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

sp<Type> OperatorDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Operator);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

sp<Type> RoutineDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Routine);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

sp<Type> CtorDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Ctor);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

sp<Type> DtorDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Dtor);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

sp<Type> VarDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> AliasDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> If::semCheck( SemCheckContext & scc ) const 
{
	if( cond_->semCheck( scc ) != boolType )
	{
		return errorType;
	}

	Block * block = dynamic_cast<Block *>(if_.get());
	if(block)
	{
		scc.pushBlockOwner(BlockOwner::If);

		if( scc.validBlockNesting() )
			return errorType;

		TODO // semCheck

		scc.popBlockOwner();
	}
	else
	{
		TODO // semCheck
	}

	if(else_)
	{
		block = dynamic_cast<Block *>(else_.get());
		if(block)
		{
			scc.pushBlockOwner(BlockOwner::Else);

			if( scc.validBlockNesting() )
				return errorType;

			TODO // semCheck

			scc.popBlockOwner();
		}
		else
		{
			TODO // semCheck
		}
	}

	return errorType;
}

sp<Type> For::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::For);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck

	scc.popBlockOwner();
	return errorType;
}

sp<Type> While::semCheck( SemCheckContext & scc ) const 
{
	Block * block = dynamic_cast<Block *>(statement_.get());

	if( block )
	{
		scc.pushBlockOwner(BlockOwner::While);

		if( scc.validBlockNesting() )
			return errorType;

		TODO // semCheck

		scc.popBlockOwner();
	}
	else
	{
		TODO // semCheck
	}

	return errorType;
}

sp<Type> Until::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Until);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck

	scc.popBlockOwner();

	return errorType;
}

sp<Type> Default::semCheck( SemCheckContext & scc ) const 
{
	if( !scc.canDefault() )
	{
		LOG( INV_DEFAULT );
		return errorType;
	}
	
	return statement_->semCheck( scc );
}

sp<Type> Continue::semCheck( SemCheckContext & scc ) const 
{
	if( !scc.canContinue())
	{
		LOG( INV_CONTINUE );
		return errorType;
	}
	return voidType;
}

sp<Type> Break::semCheck( SemCheckContext & scc ) const 
{
	if( !scc.canBreak())
	{
		LOG( INV_BREAK );
		return errorType;
	}
	return voidType;
}

sp<Type> Return::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Case::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Switch::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Switch);

	if( scc.validBlockNesting() )
		return errorType;

	if( cond_ )
	{
		auto ct = cond_->semCheck( scc );
		if( ct != errorType )
		{
			scc.pushSwitchCondType( ct );
		}
		else
			return errorType;
	}
	else
	{
		assert( varDef_ );

		auto ct = varDef_->semCheck( scc );
		if( ct != errorType )
		{
			ct = varDef_->type();
			scc.pushSwitchCondType( ct );
		}
		else
			return errorType;
	}

	auto rc = statement_->semCheck( scc );

	scc.popSwitchCondType();
	scc.popBlockOwner();

	return rc;
}

sp<Type> FunDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return errorType;
}

/////////////////////////////////////////////////////////////////////////////

bool Empty::genCode( GenCodeContext & gcc ) const 
{
	return true;
}

bool AtomicBlock::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Block::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool CatchBlock::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Try::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Delete::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Insert::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Update::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool ExprStatement::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool EnumDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Private::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Namespace::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool ClassDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool InterfaceDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool TupleDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool UnionDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool VarDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool RoutineDef::genCode( GenCodeContext & gcc ) const 
{
	FunctionDefinition * fd = new FunctionDefinition( name_ );

	gcc.addFuncAttrs( fd->funcAttrs() );

	if( body_ )
	{
		BasicBlock * bb = new BasicBlock();

//		auto bi = body_->begin();
//		auto be = body_->end();

		TODO // genCode
	}

//	gcc.program()->ilEntities().push_back( up<Definition>(fd) );

	return true;
}

bool OperatorDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool CtorDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool DtorDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool AliasDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool If::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool For::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool While::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Until::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode

	return false;
}

bool Default::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Continue::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Break::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Return::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Case::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Switch::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool FunDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

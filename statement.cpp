#include "statement.h"
#include "opus.h"
#include "gencodecontext.h"
#include "program.h"
#include "il.h"


Variables::Variables( int s, int e, std::vector<std::string> * ):
	Definition(e,s)
{
}

/////////////////////////////////////////////////////////////////

bool Variables::semCheck( SemCheckContext & scc ) const
{
	TODO // semCheck
	return false;
}

bool Empty::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool AtomicBlock::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Block::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool ExprStatement::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool EnumDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool ClassDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool TupleDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool VarDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool RoutineDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool AliasDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool If::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool For::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Default::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Continue::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Break::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Return::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Case::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Switch::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool FunDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

/////////////////////////////////////////////////////////////////////////////

bool Variables::genCode( GenCodeContext & gcc ) const
{
	TODO // genCode
	return false;
}

bool Empty::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
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

bool ClassDef::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool TupleDef::genCode( GenCodeContext & gcc ) const 
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

	gcc.program()->ilEntities().push_back( fd );

	return true;
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

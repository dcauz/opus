#include "statement.h"
#include "opus.h"
#include "gencodecontext.h"
#include "program.h"
#include "il.h"


Variables::Variables( std::vector<std::string> * ):Definition(0,0)
{
	TODO
}

/////////////////////////////////////////////////////////////////

bool Variables::semCheck( SemCheckContext & scc ) const
{
	TODO
	return false;
}

bool Empty::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool Block::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool ExprStatement::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool EnumDef::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool ClassDef::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool TupleDef::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool VarDef::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool RoutineDef::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool AliasDef::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool If::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool For::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool Default::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool Continue::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool Break::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool Return::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool Case::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool Switch::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

bool FunDef::semCheck( SemCheckContext & scc ) const 
{
	TODO
	return false;
}

/////////////////////////////////////////////////////////////////////////////

bool Variables::genCode( GenCodeContext & gcc ) const
{
	TODO
	return false;
}

bool Empty::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool Block::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool ExprStatement::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool EnumDef::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool ClassDef::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool TupleDef::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool VarDef::genCode( GenCodeContext & gcc ) const 
{
	TODO
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

		TODO
	}

	gcc.program()->ilEntities().push_back( fd );

	return true;
}

bool AliasDef::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool If::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool For::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool Default::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool Continue::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool Break::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool Return::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool Case::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool Switch::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

bool FunDef::genCode( GenCodeContext & gcc ) const 
{
	TODO
	return false;
}

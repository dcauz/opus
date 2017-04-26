#include "statement.h"
#include "opus.h"
#include "gencodecontext.h"
#include "program.h"
#include "il.h"
#include "type.h"
#include "void.h"
#include "expr.h"


EnumDef::EnumDef(
	int s,
	int e,
	const char * n,
	std::vector<std::unique_ptr<EnumMember>> * moe ):
	TypeDef(s,e), 
	name_(n), 
	moe_(moe) 
{
}

Variables::Variables( int s, int e, std::vector<std::string> * ):
	Definition(e,s)
{
}

/////////////////////////////////////////////////////////////////

Type * Variables::semCheck( SemCheckContext & scc ) const
{
	return &voidType;
}

Type * Empty::semCheck( SemCheckContext & scc ) const 
{
	return &voidType;
}

Type * AtomicBlock::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Block::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * ExprStatement::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * EnumDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * ClassDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * TupleDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * VarDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * RoutineDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * AliasDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * If::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * For::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Default::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Continue::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Break::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Return::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Case::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Switch::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * FunDef::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
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

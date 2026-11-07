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
#include "lex.h"
#include "token.h"


/////////////////////////////////////////////////////////////////

Type * Using::semCheck( SemCheckContext & ) const 
{
	return voidType;
}

Type * UsingNamespace::semCheck( SemCheckContext & ) const 
{
	return voidType;
}

Type * Empty::semCheck( SemCheckContext & ) const 
{
	return voidType;
}

Type * AtomicBlock::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Atomic);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = block_->begin();
	auto e = block_->end();

	while( i != e )
	{
		if( (*i)->semCheck( scc ) == errorType )
			return errorType;
		++i;
	}

	scc.popBlockOwner();

	return voidType;
}

Type * Block::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::None);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = statements_->begin();
	auto e = statements_->end();

	while( i != e )
	{
		if( (*i)->semCheck( scc ) == errorType )
			return errorType;
		++i;
	}

	scc.popBlockOwner();

	return voidType;
}

Type * CatchBlock::semCheck( SemCheckContext & scc ) const 
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
		Statement * s = *i;

		if( s->semCheck( scc ) == errorType )
			return errorType;

		++i;
	}
	scc.popBlockOwner();

	return voidType;
}

Type * Try::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Try);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = block_->begin();
	auto e = block_->end();

	while( i != e )
	{
		if( (*i)->semCheck( scc ) == errorType )
			return errorType;
		++i;
	}

	scc.popBlockOwner();

	auto ci = catchBlocks_->begin();
	auto ce = catchBlocks_->end();

	while( ci != ce )
	{
		CatchBlock * cb = *ci;

		if( cb->semCheck( scc ) == errorType )
			return errorType;
		++ci;
	}

	return voidType;
}

Type * EnumMember::semCheck( SemCheckContext & ) const 
{
TODO // semCheck
	return voidType;
}

Type * ExprStatement::semCheck( SemCheckContext & scc ) const 
{
	return expr_->semCheck( scc );
}

Type * Enum::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

/*
Type * Type::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Class);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck

	scc.popBlockOwner();

	return errorType;
}
*/

Type * Class::semCheck( SemCheckContext & scc ) const 
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
Type * Private::semCheck( SemCheckContext & scc ) const 
{
	if( !scc.inTypeDef() )
	{
		LOG( INV_PRIVATE );
		return errorType;
	}
	return voidType;
}

Type * Namespace::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Namespace);

	if( scc.validBlockNesting() )
		return errorType;

	auto i = block_->begin();
	auto e = block_->end();

	while( i != e )
	{
		if( (*i)->semCheck( scc ) == errorType )
			return errorType;
		++i;
	}

	scc.popBlockOwner();

	return errorType;
}

Type * OperatorDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Operator);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

FunctionDef::~FunctionDef()
{
}

Type * FunctionDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Routine);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

Type * PureFuncDef::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

Type * CtorDef::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Ctor);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck
	scc.popBlockOwner();
	return errorType;
}

Type * VarDef::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

Type * Alias::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

Type * If::semCheck( SemCheckContext & scc ) const 
{
	if( cond_->semCheck( scc ) != boolType )
	{
		return errorType;
	}

	Block * block = dynamic_cast<Block *>(if_);
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
		block = dynamic_cast<Block *>(else_);
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

Type * For::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::For);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck

	scc.popBlockOwner();
	return errorType;
}

Type * While::semCheck( SemCheckContext & scc ) const 
{
	Block * block = dynamic_cast<Block *>(statement_);

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

Type * Do::semCheck( SemCheckContext & scc ) const 
{
	scc.pushBlockOwner(BlockOwner::Until);

	if( scc.validBlockNesting() )
		return errorType;

	TODO // semCheck

	scc.popBlockOwner();

	return errorType;
}

Type * Default::semCheck( SemCheckContext & scc ) const 
{
	if( !scc.canDefault() )
	{
		LOG( INV_DEFAULT );
		return errorType;
	}
	
	return voidType;
}

Type * Continue::semCheck( SemCheckContext & scc ) const 
{
	if( !scc.canContinue())
	{
		LOG( INV_CONTINUE );
		return errorType;
	}
	return voidType;
}

Type * Break::semCheck( SemCheckContext & scc ) const 
{
	if( !scc.canBreak())
	{
		LOG( INV_BREAK );
		return errorType;
	}
	return voidType;
}

Type * Return::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

Type * Case::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

Type * Switch::semCheck( SemCheckContext & scc ) const 
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

/////////////////////////////////////////////////////////////////////////////

bool Using::genCode( GenCodeContext & ) const 
{
	return true;
}

bool UsingNamespace::genCode( GenCodeContext & ) const 
{
	return true;
}

bool Empty::genCode( GenCodeContext & ) const 
{
	return true;
}

bool AtomicBlock::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Block::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool CatchBlock::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Try::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool ExprStatement::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Enum::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Private::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Namespace::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

/*
bool Type::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}
*/

bool Class::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool VarDef::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool FunctionDef::genCode( GenCodeContext & ) const 
{
/*
	FunctionDefinition * fd = new FunctionDefinition( name() );

	gcc.addFuncAttrs( fd->funcAttrs() );

	Block * body = dynamic_cast<Block *>(body_);
	assert( body );

	BasicBlock * bb = new BasicBlock();

	auto bi = body->begin();
	auto be = body->end();

	while( bi != be )
	{
		Statement * s = *bi;

		TODO // genCode
		++bi;
	}


	gcc.program()->ilEntities().push_back( fd );
*/
	TODO
	return true;
}

bool PureFuncDef::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return true;
}

bool OperatorDef::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool CtorDef::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Alias::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool If::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool For::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool While::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Do::genCode( GenCodeContext & ) const 
{
	TODO // genCode

	return false;
}

bool Default::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Continue::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Break::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Return::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Case::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Switch::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool EnumMember::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Class::eqCompareTo(Type*) const
{
	TODO
	return false;
}

bool Class::compareTo(Type*) const
{
	TODO
	return false;
}

bool Class::assignableTo(Type*) const
{
	TODO
	return false;
}

bool Type::eqCompareTo(Type*) const
{
	TODO
	return false;
}

bool Type::compareTo(Type*) const
{
	TODO
	return false;
}

bool Type::assignableTo(Type*) const
{
	TODO
	return false;
}

bool Enum::eqCompareTo(Type*) const
{
	TODO
	return false;
}

bool Enum::compareTo(Type*) const
{
	TODO
	return false;
}

bool Enum::assignableTo(Type*) const
{
	TODO
	return false;
}

bool Arg::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

Type * Arg::semCheck( SemCheckContext & ) const
{
	TODO
	return nullptr;
}

bool TemplateParam::genCode( GenCodeContext & ) const
{
	TODO
	return false;
}

Type * TemplateParam::semCheck( SemCheckContext & ) const
{
	TODO
	return nullptr;
}

const char * OperatorDef::opName( ID op )
{
	switch(op)
	{
	default:	return "ERROR";

	case ID::ADD:	return "+";
	case ID::SUB:	return "-";
	case ID::BAND:	return "&";
	case ID::DIV:	return "/";
	case ID::MUL:	return "*";
	case ID::BOR:	return "|";
	case ID::AND:	return "&&";
	case ID::OR:	return "||";
	case ID::BXOR:	return "^";
	case ID::XOR:	return "^^";
	case ID::MOD:	return "%";
	case ID::ASSIGN:return "=";
	case ID::GT:	return ">";
	case ID::LT:	return "<";

	case ID::EQ:	return "==";
	case ID::GE:	return ">=";
	case ID::LE:	return "<=";
	case ID::NE:	return "!=";

	case ID::BAND_ASS:	return "&=";
	case ID::AND_ASS:	return "&&=";
	case ID::DIV_ASS:	return "/=";
	case ID::MUL_ASS:	return "*=";

	case ID::BOR_ASS:	return "|=";
	case ID::OR_ASS:	return "|=";
	case ID::ADD_ASS:	return "+=";
	case ID::SUB_ASS:	return "-=";
	case ID::XOR_ASS:	return "^^=";
	case ID::BXOR_ASS:	return "^=";
	case ID::MOD_ASS:	return "%=";

	case ID::DEC:	return "++";
	case ID::INC:	return "--";
	}
}

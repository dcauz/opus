#include "program.h"
#include "opus.h"
#include "semchkcontext.h"
#include "gencodecontext.h"
#include "statement.h"
#include "type.h"


Program * program;


void Program::imports( std::vector<std::string> * imp ) 
{ 
	imports_.reset(imp); 
}

void Program::statements( std::vector<up<Statement>> * defs ) 
{ 
	statements_.reset(defs); 
}

std::vector<std::string>    & Program::imports()
{ 
	return *imports_; 
}

std::vector<up<Statement>> & Program::statements() 
{ 
	return *statements_; 
}

std::vector<up<ILentity>>   & Program::ilEntities()  
{ 
	return *ilEntities_; 
}

Program::Program( const char * srcFile ):srcFile_(srcFile)
{
	ilEntities_->push_back( up<ILentity>(new TargetDefinition( false, 
		"e-m:e-i64:64-f80:128-n8:16:32:64-S128")));
	ilEntities_->push_back( up<ILentity>(new TargetDefinition( true, 
		"x86_64-pc-linux-gnu")));
}

bool Program::semCheck() const
{
	auto i = statements_->begin();
	auto e = statements_->end();
	
	SemCheckContext	context;

	while( i != e )
	{
		up<Statement>& def = *i;

		Type * type = def->semCheck( context );
		if( type == &errorType )
			return false;

		++i;
	}

	return true;
}

bool Program::genCode()
{
	auto i = statements_->begin();
	auto e = statements_->end();

	GenCodeContext	context(this);

	while( i != e )
	{
		up<Statement>& def = *i;

		def->genCode( context );

		++i;
	}

	return false;
}

bool Program::outputIL() const
{
	auto p = srcFile_.find('.');
	std::string objFile;
	if( p > 0 )
	{
 		objFile = srcFile_.substr( 0, p );
		objFile += ".ll";
	}
	else
		objFile = srcFile_ + ".ll";

	FILE * fh = fopen( objFile.c_str(), "w" );
	fprintf( fh, "; ModuleID = '%s'\n", srcFile_.c_str() );

	auto i = ilEntities_->begin();
	auto e = ilEntities_->end();

	while( i != e )
	{
		up<ILentity> & entity = *i;

		entity->output( fh );

		++i;
	}

	fprintf( fh, "\n" );

	for( int n = 0; n < funcAttrs_.size(); ++n )
	{
		const FunctionDeclaration::FuncAttrs & fa = funcAttrs_[n];

		fprintf( fh, "attributes #%d = { ", n );
		fprintf( fh, "%s ", fa.nounwind?"nounwind":"unwind" );
		fprintf( fh, "%s ", fa.uwtable?"uwtable":"nouwtable" );

		fprintf( fh, "}\n" );
	}

	fprintf( fh, "\n!llvm.ident = !{!0}\n" );
	fprintf( fh, "\n!0 = !{!\"Ubuntu opus version 1.0.0-2ubuntu1~trusty1 (tags/RELEASE_360/final) (based on OPUS 1.0.0)\"}\n" );


	fclose( fh );

	return false;
}
/*
	struct FuncAttrs
	{
		unsigned alignstack;
		unsigned ssp;

		unsigned alwaysinline:1;
		unsigned builtin:1;
		unsigned cold:1;
		unsigned inlinehint:1;
		unsigned jumptable:1;
		unsigned minsize:1;
		unsigned naked:1;
		unsigned nobuiltin:1;
		unsigned noduplicate:1;
		unsigned noimplicitfloat:1;
		unsigned noinline:1;
		unsigned nonlazybind:1;
		unsigned noredzone:1;
		unsigned noreturn:1;
		unsigned optnone:1;
		unsigned optsize:1;
		unsigned readnone:1;
		unsigned readonly:1;
		unsigned returns_twice:1;
		unsigned sanitize_address:1;
		unsigned sanitize_memory:1;
		unsigned sanitize_thread:1;
		unsigned sspreq:1;
		unsigned sspstrong:1;
	};
*/

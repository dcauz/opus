#include "symtbl.h"
#include "type.h"
#include "statement.h"

using namespace std;

SymbolTable::~SymbolTable()
{
	for( auto & p : alias_ )
		delete p.second;

    for( auto & p : namespaces_ )
		delete p.second;
	
    for( auto & p : enumMembers_ )
		delete p.second;
}

void SymbolTable::addType( Type * t )
{
	if( t->name().length() > 0 )
	{
printf( "%s:%d symtbl %p: add %s\n", __FILE__, __LINE__, this, t->name().c_str() );
		types_.insert( make_pair( t->name(), t ));
	}
}

void SymbolTable::addVariable( Variable * v )
{
	if( v->name().length() > 0 )
	{
printf( "%s:%d symtbl %p: add %s\n", __FILE__, __LINE__, this, v->name().c_str() );
		variables_.insert( make_pair( v->name(), v ));
	}
}

void SymbolTable::addFunction( FunctionType  * ft )
{
	if( ft->name().length() > 0 )
	{
printf( "%s:%d symtbl %p: add %s\n", __FILE__, __LINE__, this, ft->name().c_str() );
		functions_.insert( make_pair( ft->name(), ft ));
	}
}

void SymbolTable::addAlias( Alias * a )
{
	if( a->name().length() > 0 )
	{
printf( "%s:%d symtbl %p: add %s\n", __FILE__, __LINE__, this, a->name().c_str() );
		alias_.insert( make_pair( a->name(), a ));
	}
}

void SymbolTable::addNamespace( Namespace * ns )
{
	if( ns->name().length() > 0 )
	{
printf( "%s:%d symtbl %p: add %s\n", __FILE__, __LINE__, this, ns->name().c_str() );
		namespaces_.insert( make_pair( ns->name(), ns ));
	}
}

void SymbolTable::addEnumMember( EnumMember * em )
{
	if( em->name().length() > 0 )
	{
printf( "%s:%d symtbl %p: add %s\n", __FILE__, __LINE__, this, em->name().c_str() );
		enumMembers_.insert( make_pair( em->name(), em ));
	}
}

Symbol * SymbolTable::find( const std::string & n )
{
printf( "%s:%d st %p find [%s]\n", __FILE__, __LINE__, this, n.c_str() ); fflush(stdout);
	auto it = types_.find(n);
	if( it != types_.end())
		return it->second.get();

	auto iv = variables_.find(n);
	if( iv != variables_.end())
		return iv->second.get();

	auto ift = functions_.find(n);
	if( ift != functions_.end())
		return ift->second.get();

	auto ia = alias_.find(n);
	if( ia != alias_.end())
		return ia->second;

	auto na = namespaces_.find(n);
	if( na != namespaces_.end())
		return na->second;

	auto em = enumMembers_.find(n);
	if( em != enumMembers_.end())
		return em->second;

	if( parent_ != nullptr )
		return parent_->find( n );

	return nullptr;
}

Type * SymbolTable::findType( const char * n )
{
	auto it = types_.find(n);

	return ( it != types_.end())? it->second.get():nullptr;
}

Variable * SymbolTable::findVariable( const char * n )
{
	auto iv = variables_.find(n);
	return ( iv != variables_.end())?iv->second.get():nullptr;
}

FunctionType * SymbolTable::findFunction( const char * n )
{
	auto ift = functions_.find(n);
	return ( ift != functions_.end())?ift->second.get():nullptr;
}

Alias * SymbolTable::findAlias( const char * n )
{
	auto ia = alias_.find(n);
	
	return ( ia != alias_.end())? ia->second: nullptr;
}

Namespace * SymbolTable::findNamespace( const char * n )
{
	auto in = namespaces_.find(n);
	
	return ( in != namespaces_.end())? in->second: nullptr;
}

EnumMember * SymbolTable::findEnumMember( const char * n )
{
	auto ie = enumMembers_.find(n);
	
	return ( ie != enumMembers_.end())? ie->second: nullptr;
}

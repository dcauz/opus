#pragma once

#include <map>
#include <string>

#include "opus.h"
#include "symbol.h"


class Type;			// builtin types, UDT (type, interface, union, enum)
class Variable;		// variables, arguments, template parameters
class FunctionType;	// functions, pure functions, operators, ctors, dtors
class Alias;		// alias type, alias func type
class Namespace;	// namespace
class EnumMember;	// enum member

///////////////////////////////////////////////////////
//
//  Symbol Table usage
//
//  Construct           Named   Parent Constructs
//  ---------------------------------------------------
//  Global namespace    No      None
//
//  atomic              No      ALL - Global
//	block				No		ALL - Global
//  ctor                No      Class
//  do                  No      ALL - Global
//  dtor                No      Class
//  enum                Yes     ALL
//  for                 No      ALL - Global
//  function            No      ALL
//  if - else           No      ALL - Global
//  interface           Yes     ALL
//  namespace           Yes     Global namespace
//                              Namespace
//  operator            No      ALL
//  pure function       No      ALL
//  select              No      ALL
//  switch              No      ALL - Global
//  try - catch         No      ALL - Global
//  type                Yes     ALL
//  union               Yes     ALL
//	where				No		ALL
//  while               No      ALL - Global

class SymbolTable
{
public:
	SymbolTable( SymbolTable * p = nullptr, const std::string & n  = "" ):parent_(p),scopeName_(n)
	{
printf( "%s:%d this %p parent %p\n", __FILE__, __LINE__, this, p ); fflush(stdout);
	}
	~SymbolTable();

	void	addType( Type * );
	void	addVariable( Variable * );
	void	addFunction( FunctionType  * );
	void	addAlias( Alias * );
	void	addNamespace( Namespace * );
	void	addEnumMember( EnumMember * );

	Symbol	* find( const std::string & );

	Type		* findType( const char * );
	Variable	* findVariable( const char * );
	FunctionType* findFunction( const char * );
	Alias		* findAlias( const char * );
	Namespace	* findNamespace( const char * );
	EnumMember	* findEnumMember( const char * );

	SymbolTable	* parent()	{ return parent_; }

private:

	SymbolTable	* parent_;
	
	std::map<std::string, up<Type>> 		types_;
	std::map<std::string, up<Variable>>		variables_;
	std::map<std::string, up<FunctionType>>	functions_;	
	std::map<std::string, Alias *>			alias_;
	std::map<std::string, Namespace *>		namespaces_;
	std::map<std::string, EnumMember *>		enumMembers_;

	std::string	scopeName_;	// namespace / type name
};

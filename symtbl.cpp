#include "symtbl.h"


Type * SymbolTable::findType( const char * n )
{
	auto i = types_.find(n);

	if( i != types_.end())
		return i->second;
	else
		return nullptr;
}

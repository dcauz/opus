#pragma once

#include <memory>
#include <elf.h>


class Symbol
{
public:
	Symbol();

};


class SymbolTable
{
public:
	SymbolTable( const char *, unsigned, unsigned, bool, const std::unique_ptr<char> & strings );

private:
};

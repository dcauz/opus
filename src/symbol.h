#pragma once

// Base class of all entries in a SymbolTable
class Symbol
{
public:
	Symbol( const char * n )
	{
		if( n != nullptr )
			name_ = n;
	}
	Symbol( const std::string & n ):name_(n) {}
	virtual ~Symbol() {}

	std::string & name() { return name_; }

private:
	std::string name_;
};

class Variable: public Symbol
{
public:
	Variable( const char * n ):Symbol(n) {}
	Variable( const std::string & n ):Symbol(n) {}

	virtual ~Variable() {}
};


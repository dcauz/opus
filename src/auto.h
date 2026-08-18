#pragma once

#include "type.h"

class AutoType : public Type
{
public:
	AutoType( const char * n = "" ): name_(n) {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

private:
	std::string name_;
};

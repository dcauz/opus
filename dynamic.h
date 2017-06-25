#pragma once

#include "type.h"



class DynamicType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};


extern DynamicType	dynamicType;

#pragma once

#include "type.h"



class ObjectType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};


extern ObjectType	objectType;

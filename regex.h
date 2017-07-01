#pragma once

#include "type.h"


class RegExType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};


extern sp<RegExType>	regexType;

#pragma once

#include "opus.h"
#include "type.h"
#include "value.h"


class RegExp : public Value
{
public:
    RegExp( const char * cp ): value_(cp) {}

    bool genCode( GenCodeContext & gcc ) const override;
    sp<Type> semCheck( SemCheckContext & scc ) const override;

    friend bool operator < ( const RegExp &, const RegExp & );
    friend bool operator > ( const RegExp &, const RegExp & );
    friend bool operator == ( const RegExp &, const RegExp & );

    friend bool operator >= ( const RegExp & a, const RegExp & b )
    {
        return !(a<b);
    }
    friend bool operator <= ( const RegExp & a, const RegExp & b )
    {
        return !(a>b);
    }
    friend bool operator != ( const RegExp & a, const RegExp & b )
    {
        return !(a==b);
    }

private:
    std::string value_;
};


class RegExpType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};


extern sp<RegExpType>	regexpType;

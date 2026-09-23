#include "char.h"

CharType	charType;

///////////////////////////////////

bool Char::genCode( GenCodeContext & ) const
{
 TODO // genCode
    return false;
}

sp<Type> Char::semCheck( SemCheckContext & ) const
{
 TODO // semCheck
    return errorType;
}

bool CharType::eqCompareTo( Type * t ) const
{
    return dynamic_cast<CharType *>(t) != nullptr;
}

bool CharType::compareTo( Type * t )  const
{
    return dynamic_cast<CharType *>(t) != nullptr;
}

bool CharType::assignableTo( Type * t ) const
{
    return dynamic_cast<CharType *>(t) != nullptr;
}


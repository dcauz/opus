#pragma once

#include <cstdio>
#include <string>


inline void throwNotImpl( const char * f, int l )
{
       char msg[256];
       sprintf( msg, "%s:%d - NOT IMPLEMENTED", f, l );
       throw std::string(msg);
}

#define        TODO    throwNotImpl( __FILE__, __LINE__ );

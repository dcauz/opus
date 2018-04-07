#pragma once

#include <cstdio>
#include <string>
#include <memory>

template <typename T> using up = std::unique_ptr<T>;
template <typename T> using sp = std::shared_ptr<T>;


inline void throwNotImpl( const char * f, int l )
{
       char msg[256];
       sprintf( msg, "%s:%d - NOT IMPLEMENTED", f, l );
       throw std::string(msg);
}

#define        TODO    do { printf( "TODO:%s:%d\n", __FILE__, __LINE__ ); fflush(stdout); throwNotImpl( __FILE__, __LINE__ ); } while(false);

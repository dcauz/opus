#pragma once

#include "type.h"
#include <cstdint>
#include <memory>


class Int
{
public:
	Int( const char * );

	Int();

//	Int( const Int & );
//	Int( Int && );
//	Int & operator = ( const Int & );
//	Int & operator = ( Int && );

private:

	std::unique_ptr<unsigned int> value_;
};


class IntType : public Type
{
public:
	IntType();
	IntType( int );
	IntType( int64_t );
	IntType( const Int & );


};

extern IntType	intType;

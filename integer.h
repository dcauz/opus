#pragma once

#include <cstdint>
#include <memory>
#include "type.h"
#include "value.h"


class Integer : public Value
{
public:
	Integer( const char * );
	Integer( int );

	Integer();

	bool genCode( GenCodeContext & gcc ) const override;
	bool semCheck( SemCheckContext & scc ) const override;

//	Int( const Int & );
//	Int( Int && );
//	Int & operator = ( const Int & );
//	Int & operator = ( Int && );

private:

	std::unique_ptr<unsigned int> value_;
};

class IntegerType : public Type
{
public:
	IntegerType();
	IntegerType( int );
	IntegerType( int64_t );
	IntegerType( const Integer & );


};

extern IntegerType	integerType;

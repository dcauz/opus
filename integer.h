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
	Integer( int64_t );
	Integer();

	~Integer();

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	enum Form
	{
		INT,
		LONG,
		BIG
	};

	Form form_;
	union
	{
		int i_;
		int64_t l_;
		const char * value_;
	};
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

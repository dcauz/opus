#pragma once

#include "type.h"
#include "value.h"


class String : public Value
{
public:
	String( const char * );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

	friend bool operator < ( const String &, const String & );
	friend bool operator > ( const String &, const String & );
	friend bool operator == ( const String &, const String & );

	friend bool operator >= ( const String & a, const String & b )
	{
		return !(a<b);
	}
	friend bool operator <= ( const String & a, const String & b )
	{
		return !(a>b);
	}
	friend bool operator != ( const String & a, const String & b )
	{
		return !(a==b);
	}

private:
	std::string value_;
};

class StringType: public Type
{
public:

};

extern StringType	stringType;

#pragma once

#include "type.h"
#include "value.h"


class String : public Value
{
public:
	String( const char * cp ): value_(cp) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

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

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern StringType	stringType;


class LString : public Value
{
public:
	LString( const char * cp ): value_(cp) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

	friend bool operator < ( const LString &, const LString & );
	friend bool operator > ( const LString &, const LString & );
	friend bool operator == ( const LString &, const LString & );

	friend bool operator >= ( const LString & a, const LString & b )
	{
		return !(a<b);
	}
	friend bool operator <= ( const LString & a, const LString & b )
	{
		return !(a>b);
	}
	friend bool operator != ( const LString & a, const LString & b )
	{
		return !(a==b);
	}

private:
	std::string value_;
};

class LStringType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern LStringType	lstringType;


class LTString : public Value
{
public:
	LTString( const char * cp ): value_(cp) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

	friend bool operator < ( const LTString &, const LTString & );
	friend bool operator > ( const LTString &, const LTString & );
	friend bool operator == ( const LTString &, const LTString & );

	friend bool operator >= ( const LTString & a, const LTString & b )
	{
		return !(a<b);
	}
	friend bool operator <= ( const LTString & a, const LTString & b )
	{
		return !(a>b);
	}
	friend bool operator != ( const LTString & a, const LTString & b )
	{
		return !(a==b);
	}

private:
	std::string value_;
};

class LTStringType: public Type
{
public:

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;
};

extern LTStringType	ltstringType;


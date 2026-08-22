#pragma once

#include <cstdint>
#include <memory>
#include "type.h"
#include "value.h"

// TODO Int1-7, 9-15, 17-31, 33-63
// TODO UInt1-7, 9-15, 17-31, 33-63
// TODO Nat1-64, N
// TODO Z1-64, Z

class Int8: public Value
{
public:
	Int8( signed char sc ): data_(sc) {}
	~Int8() {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	signed char	data_;
};

class Uint8: public Value
{
public:
	Uint8( signed char sc ): data_(sc) {}
	~Uint8() {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	unsigned char	data_;
};

class Int16: public Value
{
public:
	Int16( short s ): data_(s) {}
	~Int16() {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	short	data_;
};

class Uint16: public Value
{
public:
	Uint16( short s ): data_(s) {}
	~Uint16() {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	unsigned short	data_;
};

class Int32: public Value
{
public:
	Int32( int i ): data_(i) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	int	data_;
};

class Uint32: public Value
{
public:
	Uint32( int i ): data_(i) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:
	unsigned int	data_;
};

class Int64: public Value
{
public:
	Int64( long long ll ): data_(ll) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;
private:
	long long	data_;
};

class Uint64: public Value
{
public:
	Uint64( long long ll ): data_(ll) {}

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;
private:
	unsigned long long	data_;
};

class Integer : public Value
{
public:
	Integer( const char *, const char * );
	Integer( int );
	Integer( int64_t );
	Integer();

	~Integer();

	bool genCode( GenCodeContext & gcc ) const override;
	sp<Type> semCheck( SemCheckContext & scc ) const override;

private:

	bool	 isNeg_;
	std::vector<uint64_t> values_;
};

class Int8Type : public Type
{
public:
	Int8Type() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Int16Type : public Type
{
public:
	Int16Type() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Int32Type : public Type
{
public:
	Int32Type() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Int64Type : public Type
{
public:
	Int64Type() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Uint8Type : public Type
{
public:
	Uint8Type() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Uint16Type : public Type
{
public:
	Uint16Type() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Uint32Type : public Type
{
public:
	Uint32Type() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Uint64Type : public Type
{
public:
	Uint64Type() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Int8CType : public Type
{
public:
	Int8CType() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Int16CType : public Type
{
public:
	Int16CType() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Int32CType : public Type
{
public:
	Int32CType() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Int64CType : public Type
{
public:
	Int64CType() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Uint8CType : public Type
{
public:
	Uint8CType() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Uint16CType : public Type
{
public:
	Uint16CType() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Uint32CType : public Type
{
public:
	Uint32CType() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class Uint64CType : public Type
{
public:
	Uint64CType() {}

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class IntegerType : public Type
{
public:
	IntegerType() {}
	IntegerType( int );
	IntegerType( int64_t );
	IntegerType( const Integer & );

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

class NaturalType : public Type
{
public:
	NaturalType() {}
	NaturalType( int );
	NaturalType( int64_t );
	NaturalType( const Integer & );

    bool eqCompareTo( Type * ) const override;
    bool compareTo( Type * ) const override;
    bool assignableTo( Type * ) const override;

};

extern sp<IntegerType>	integerType;
extern sp<NaturalType>	naturalType;

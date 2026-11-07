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
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	signed char	data_;
};

class Uint8: public Value
{
public:
	Uint8( signed char sc ): data_(sc) {}
	~Uint8() {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	unsigned char	data_;
};

class Int16: public Value
{
public:
	Int16( short s ): data_(s) {}
	~Int16() {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	short	data_;
};

class Uint16: public Value
{
public:
	Uint16( short s ): data_(s) {}
	~Uint16() {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	unsigned short	data_;
};

class Int32: public Value
{
public:
	Int32( int i ): data_(i) {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	int	data_;
};

class Uint32: public Value
{
public:
	Uint32( int i ): data_(i) {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	unsigned int	data_;
};

class Int64: public Value
{
public:
	Int64( long long ll ): data_(ll) {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;
private:
	long long	data_;
};

class Uint64: public Value
{
public:
	Uint64( long long ll ): data_(ll) {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;
private:
	unsigned long long	data_;
};

class Int128: public Value
{
public:
	Int128( __int128_t l ): data_(l) {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;
private:
	__int128_t data_;
};

class Uint128: public Value
{
public:
	Uint128( __uint128_t l ): data_(l) {}

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;
private:
	__uint128_t data_;
};

class Integer : public Value
{
public:
	Integer( const char *, const char * );

	Integer( int );
	Integer( int64_t );
	Integer( __int128_t );
	Integer( unsigned int );
	Integer( uint64_t );
	Integer( __uint128_t );

	Integer();

	~Integer();

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

	void addChunk( const char * start, const char * end );

private:

	std::vector<uint64_t> values_;
	bool isNeg_;
};

template <int B> class InType : public Type
{
public:
	InType() {}

    bool eqCompareTo( Type * ) const override
	{
      TODO
      return false;
    }
    bool compareTo( Type * ) const override
	{
      TODO
      return false;
    }
    bool assignableTo( Type * ) const override
	{
      TODO
      return false;
    }

	int bits() const { return B; }
};

template <int B> class UnType : public Type
{
public:
	UnType() {}

    bool eqCompareTo( Type * ) const override
	{
      TODO
      return false;
    }
    bool compareTo( Type * ) const override
	{
      TODO
      return false;
    }
    bool assignableTo( Type * ) const override
	{
      TODO
      return false;
    }

	int bits() const { return B; }
};

template <int B> class NnType : public Type
{
public:
	NnType() {}

    bool eqCompareTo( Type * ) const override
	{
      TODO
      return false;
    }
    bool compareTo( Type * ) const override
	{
      TODO
      return false;
    }
    bool assignableTo( Type * ) const override
	{
      TODO
      return false;
    }

	int bits() const { return B; }
};

template <int B> class ZnType : public Type
{
public:
	ZnType() {}

    bool eqCompareTo( Type * ) const override
	{
      TODO
      return false;
    }
    bool compareTo( Type * ) const override
	{
      TODO
      return false;
    }
    bool assignableTo( Type * ) const override
	{
      TODO
      return false;
    }

	int bits() const { return B; }
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

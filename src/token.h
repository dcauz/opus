#pragma once

#include "date.h"
#include "datetime.h"
#include "time.h"
#include "integer.h"
#include "real.h"

#include <string>
#include <cstring>


enum class ID : unsigned int
{
	NIL  = 0,

	///////////////////////////////////////
	// Operators and punctuators
	///////////////////////////////////////
	NOT   =33,	// !
	WEAK  =35,	// #
	MOD   =37,	// %
	BAND  =38,	// &
	QUOT  =39,	// '
	LPAREN=40,	// (
	RPAREN=41,	// )
	MUL   =42,	// *
	ADD   =43,	// +
	COMMA =44,	// ,
	SUB   =45,	// -
	DOT   =46,	// .
	DIV   =47,	// /
	COLON =58,	// :
	SCOLON=59,	// ;
	LT    =60,	// <
	ASSIGN =61,	// =
	GT    =62,	// >
	QUEST =63,	// ?
	LBRACK=91,	// [
	BSLASH=92,	// back slash
	RBRACK=93,	// ]
	XOR   =94,	// ^
	LBRACE=123,	// {
	BOR   =124,	// |
	RBRACE=125,	// }
	BNOT  =126,	// ~

	BASE_ID = 127,	// force the value of the other ids above 127

	ADD_ASS,	// +=

	AND,		// &&
	AND_ASS,	// &=
				//
	CP_ASS,		// [*]=
	CRS_PROD,	// [*]

	DEC,		// --
	DIV_ASS,	// /=
	DOT_ASK,	// .*
	DOT_DOT,	// ..
	DOT_DOT_DOT,// ...
	DOT_PROD,	// [.]
	DP_ASS,		// [.]=

	EQ,  		// ==
	EXP,		// **
	EXP_ASS,	// **=
				//
	FACTORIAL,  // .!

	GE,			// >=

	INC,		// ++

	LE,			// <=

	M_DIV,		// [/]
	MD_ASS,		// [/]=
	MOD_ASS,	// %=
	MUL_ASS,	// *=
	M_EXP,		// [**]
	ME_ASS,		// [**]=
	MPTR,		// ->*

	NE,			// !=

	OR,			// ||
	OR_ASS,		// |=

	PARAM_ASS,	// :=
	POST_DEC,	// .--
	POST_INC,	// .++
	PTR,		// ->

	QUAL,		// ::

	SLFT,		// <<
	SLFT_ASS,	// <<=
	SRGHT,		// >>
	SRGHT_ASS,	// >>=
	SS,			// <=>
	SUB_ASS,	// -=

	TIL_ASS,	// ~=

	UNIARY_MINUS,// -.
	UNIARY_PLUS, // +.

	XOR_ASS,	// ^=

	///////////////////////////////////////
	// Built in type names
	// ////////////////////////////////////
	BUILT_IN_TYPES_FIRST,

	AUTO,

	BOOL,

	C, 
	CHAR,

	DATE, 
	DATETIME, 
	DLIST, 
	DQUEUE, 
	DURATION,

	FLOAT32, 
	FLOAT64, 
	FLOAT80, 

	GRAPH,         

	HEAP,

	I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, 
	I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, 
	I20, I21, I22, I23, I24, I25, I26, I27, I28, I29, 
	I30, I31, I32, 
	I64, I128,

	LIST,
	LSTRING,
	LTSTRING,

	MAP,
	MMAP,
	MSET,
	MUTEX,

	N,
	N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, 
	N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, 
	N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, 
	N30, N31, N32, 
	N64, N128,

	OBJECT,

	Q,
	QUEUE,

	R,
	REGEXP,

	SEMAPHORE,
	STACK,
	STRING,

	U0, U1, U2, U3, U4, U5, U6, U7, U8, U9, 
	U10, U11, U12, U13, U14, U15, U16, U17, U18, U19, 
	U20, U21, U22, U23, U24, U25, U26, U27, U28, U29, 
	U30, U31, U32, 
	U64, U128,

	SET,

	VOID,

	Z,
	Z0, Z1, Z2, Z3, Z4, Z5, Z6, Z7, Z8, Z9, 
	Z10, Z11, Z12, Z13, Z14, Z15, Z16, Z17, Z18, Z19, 
	Z20, Z21, Z22, Z23, Z24, Z25, Z26, Z27, Z28, Z29, 
	Z30, Z31, Z32, 
	Z64, Z128,

	BUILT_IN_TYPES_LAST,

	///////////////////////////////////////
	// Type modifiers
	///////////////////////////////////////

	FIRST_TYPE_MODIFIER,

	ATOMIC       = 1 << 9,
	FINAL        = 1 << 10,
	INLINE       = 1 << 11,
	MUTABLE      = 1 << 12,
	PRIVATE      = 1 << 13,
	PUBLIC       = 1 << 14,
	PURE         = 1 << 15,
	THREAD_LOCAL = 1 << 16,

	LAST_TYPE_MODIFIER,

	///////////////////////////////////////
	// SQL expression keywords
	///////////////////////////////////////

	AS,			// as
	ASC,		// asc

	BY,			// by

	CLOSURE,

	DISTINCT,	// distinct
	DSC,  		// dsc

	FOREIGN,	// foreign
	FROM,		// from

	GROUP,		// group

	HAVING,		// having

	INTO,		// into

	JOIN,		// join

	LEFT,		// left

	ORDER,		// order
	OUTER,		// outer

	PERCENT,	// percent

	RIGHT,		// right

	TIES,		// ties
	TOP,		// top

	UNIQUE,		// unique

	VALUES,		// values

	WHERE,		// where
	WITH,		// with

	///////////////////////////////////////
	// Function signature keywords
	///////////////////////////////////////

    FINAL_FUNC, // final
	IMPLICIT,	// implicit
	OVERRIDE,	// override
	NOEXCEPT,	// noexcept

	///////////////////////////////////////
	// names
	///////////////////////////////////////

	FIRST_DEFINED_TYPE_NAME,

	CLASS_NAME,
	ENUM_NAME,
	INTERFACE_NAME, 
	RELATION_NAME,
	UNION_NAME,
	TYPE_NAME,	// using typeName = ...

	LAST_DEFINED_TYPE_NAME,

	FUN_NAME,
	FUNCTION_NAME,
	NAMESPACE_NAME,
	VARIABLE_NAME,
	ID,
	SFUN_NAME,
	SFUNCTION_NAME,
	SNAMESPACE_NAME,
	SVARIABLE_NAME,
	SID,

	UNKOWN_NAME,

	///////////////////////////////////////
	// LITERALS and constants
	///////////////////////////////////////
	_E, 		// .e
	FALSE, 		
	_GAMMA,		// .gamma
	_I,			// .i
	_INF,		// .inf
	_NAN,		// .nan
	_PHI,		// .phi
	_PI,		// .pi
	TRUE,		
	THIS,
	CHAR_LIT,		// 'x'
	DATETIME_LIT,	// d"YYYY-MM-DD:HH:MM:SS[:sssssssss]"
	DATE_LIT,		// d"YYYY-MM-DD"
	DAYS_LIT,       // 111d
	FLOAT32_LIT,
	FLOAT64_LIT,
	FLOAT80_LIT,
	HOURS_LIT,      // 111h
	INT8_LIT,       // 1111
	INT16_LIT,      // 1111
	INT32_LIT,      // 1111
	INT64_LIT,      // 1111
	INT128_LIT,     // 1111
	INTEGER_LIT,    // 765 432 109 876 543 210
	LSTRING_LIT,    // l"sss"
	LSSTRING_LIT,   // short lengthed string literal
	LTSTRING_LIT,  // t"aaa"
	LTSSTRING_LIT,   // short lengthed and terminated string literal
	MINS_LIT,       // 111m
	NAT_LIT,        // 1212u
	Q_LIT,          // 111q
	REAL_LIT,       // 123r
	REGEXP_LIT,     // re"s*"
	SECS_LIT,       // 111.123s
	STRING_LIT,     // "ssss"
	SSTRING_LIT,	// short string literal
	TIME_LIT,       // t"HH:MM:SS:sssssssss"
	UINT8_LIT,      // 111u
	UINT16_LIT,     // 111u
	UINT32_LIT,     // 111u
	UINT64_LIT,     // 111u
	UINT128_LIT,    // 1111
    YEARS_LIT,      // 111y

	///////////////////////////////////////
	// Type constructors
	///////////////////////////////////////
	CLASS,
	ENUM,
	FUN,
	INTERFACE, 
	RELATION,
	UNION,

	///////////////////////////////////////
	// Type constructor keywords
	///////////////////////////////////////
	EXTEND,
	IMPLEMENT,
	INDEX,
	KEY,

	///////////////////////////////////////
	// Flow control
	///////////////////////////////////////
	ASSERT,
	BREAK,
	CASE, 
	CATCH, 
	CO_AWAIT,
	CONTINUE,
	CO_RETURN,
	CO_YIELD,
	DEFAULT, 
	DO, 
	ELSE, 
	FOR, 
	IF, 
	IMPORT,
	NAMESPACE,
	RETURN,
	SWITCH,
	THROW,
	TRY,
	WHILE,

	APPLY,
	ASYNC,

	///////////////////////////////////////
	// Expression generators
	///////////////////////////////////////

	ALIGNAS,
	ALIGNOF,
	DELETE,
	EVAL,
	FILTER,
	IN, 
	IS_VOID,
	INSERT,
	NEW,
	REDUCE,
	SELECT,
	SIZEOF,
	TYPEID,
	UPDATE,

	TIME,
	TYPE,

	USING,
	VA_ARGS,

	// error tokens
	INVALID_NUMBER,
	INVALID_STRING,
};

struct Token
{
	Token() :id_(ID::NIL) {}

	Token(const Token & );

	Token( Token && );
	Token & operator = ( Token && );

	~Token();

	void set( unsigned short l, unsigned short c, ID i )
	{
		line    = l;
		column  = c;
		id_     = i;
	}
	void set( unsigned short l, unsigned short c, int8_t i )
	{
		line    = l;
		column  = c;
		id_     = ID::INT8_LIT;
		i8_		= i;
	}
	void set( unsigned short l, unsigned short c, uint8_t u )
	{
		line    = l;
		column  = c;
		id_     = ID::UINT8_LIT;
		u8_		= u;
	}
	void set( unsigned short l, unsigned short c, int16_t i )
	{
		line    = l;
		column  = c;
		id_     = ID::INT16_LIT;
		i16_	= i;
	}
	void set( unsigned short l, unsigned short c, uint16_t u )
	{
		line    = l;
		column  = c;
		id_     = ID::UINT16_LIT;
		u16_	= u;
	}
	void set( unsigned short l, unsigned short c, int32_t i )
	{
		line    = l;
		column  = c;
		id_     = ID::INT32_LIT;
		i32_	= i;
	}
	void set( unsigned short l, unsigned short c, uint32_t u )
	{
		line    = l;
		column  = c;
		id_     = ID::UINT32_LIT;
		u32_	= u;
	}
	void set( unsigned short l, unsigned short c, int64_t i )
	{
		line    = l;
		column  = c;
		id_     = ID::INT64_LIT;
		i64_	= i;
	}
	void set( unsigned short l, unsigned short c, uint64_t u )
	{
		line    = l;
		column  = c;
		id_     = ID::UINT64_LIT;
		u64_	= u;
	}
	void set( unsigned short l, unsigned short c, __int128_t i )
	{
		line    = l;
		column  = c;
		id_     = ID::INT128_LIT;
		i128_	= i;
	}
	void set( unsigned short l, unsigned short c, __uint128_t u )
	{
		line    = l;
		column  = c;
		id_     = ID::UINT128_LIT;
		u128_	= u;
	}
	void set( unsigned short l, unsigned short c, float f )
	{
		line    = l;
		column  = c;
		id_     = ID::FLOAT32_LIT;
		f32_	= f;
	}
	void set( unsigned short l, unsigned short c, double d )
	{
		line    = l;
		column  = c;
		id_     = ID::FLOAT64_LIT;
		f64_	= d;
	}
	void set( unsigned short l, unsigned short c, long double ld )
	{
		line    = l;
		column  = c;
		id_     = ID::FLOAT80_LIT;
		f80_	= ld;
	}
	void set( unsigned short l, unsigned short c, ID id, const std::string & lex)
	{
		line    = l;
		column  = c;
		id_     = id;
		if( lex.size() < 16 )
			strcpy( shortLex_, lex.c_str());
		else
			lexium_= new std::string(lex);
	}
	void set( unsigned short l, unsigned short c, const Date & d )
	{
		line    = l;
		column  = c;
		id_     = ID::DATE_LIT;
		u32_    = d.toUint32();
	}
	void set( unsigned short l, unsigned short c, const Datetime & dt )
	{
		line    = l;
		column  = c;
		id_     = ID::DATETIME_LIT;
		u128_   = dt.toUint128();
	}
	void set( unsigned short l, unsigned short c, const Time & t )
	{
		line    = l;
		column  = c;
		id_     = ID::TIME_LIT;
		u64_	= t.toUint64();
	}
	void set( unsigned short l, unsigned short c, Integer * i )
	{
		line    = l;
		column  = c;
		id_     = ID::INTEGER_LIT;
		integer_= i;
	}

	void lexium( char );
	void add( char, int pos );

	bool isBasicType() const	{ return id_ > ID::BUILT_IN_TYPES_FIRST && id_ < ID::BUILT_IN_TYPES_LAST; }
	bool isDefinedType() const	{ return id_ > ID::FIRST_DEFINED_TYPE_NAME && id_ < ID::LAST_DEFINED_TYPE_NAME; }
	bool isType() const         { return isBasicType() || isDefinedType(); }
	bool isModifier() const		{ return id_ > ID::FIRST_TYPE_MODIFIER && id_ < ID::LAST_TYPE_MODIFIER; }
	bool isPointer() const		{ return id_ == ID::MUL || id_ == ID::XOR || id_ == ID::WEAK; }

	ID	id() const				{ return id_; }
	bool isId() const			{ return id_ == ID::ID || id_ == ID::SID; }

	const char * idLexium() const	{ return id_ == ID::ID ? lexium_->c_str() : shortLex_; }
	const char * str() const	{ return id_ == ID::STRING_LIT ? lexium_->c_str() : shortLex_; }

	int8_t   	i8() const	{ return i8_; }
	uint8_t  	u8() const	{ return u8_; }

	int16_t  	i16() const	{ return i16_; }
	uint16_t 	u16() const	{ return u16_; }

	int32_t 	i32() const	{ return i32_; }
	uint32_t	u32() const	{ return u32_;	}

	int64_t 	i64() const	{ return i64_; }
	uint64_t 	u64() const	{ return u64_;	}

	__int128_t  i128() const{ return i128_; }
	__uint128_t u128() const{ return u128_; }

	float		f32() const	{ return f32_; }
	double		f64() const	{ return f64_; }
	long double	f80() const	{ return f80_; }

	void	setNameType( ID n )	{ id_ = n; }

	void	clear() { id_ = ID::NIL; }

private:
	unsigned short line;
	unsigned short column;

	ID id_;

	union
	{
		int8_t   	i8_;
		uint8_t  	u8_;
		int16_t  	i16_;
		uint16_t 	u16_;
		int32_t 	i32_;
		uint32_t	u32_;		// or date
		int64_t 	i64_;
		uint64_t 	u64_;		// or time
		__int128_t  i128_;
		__uint128_t u128_; 	// or datetime
		float		f32_;
		double		f64_;
		long double	f80_;

		char		shortLex_[sizeof(__int128_t)];
		std::string*lexium_;
		Integer	   *integer_;
	};
};

struct Keyword
{
	ID id;
	const char * lexium;
};

extern Keyword keyWords[];
extern unsigned noOfKeyWords;


#define DEBUG_YYLEX
#ifdef DEBUG_YYLEX

struct Token;

void dumpToken( const Token & tok );

#endif

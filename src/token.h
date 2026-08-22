#pragma once

#include "date.h"
#include "datetime.h"
#include "time.h"
#include "integer.h"
#include "real.h"

#include <string>

#define id2ui(N)	static_cast<unsigned int>(IDs::N)

enum class IDs : unsigned int
{
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
	I64, 

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
	N64, 

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
	U64, 

	SET,

	VOID,

	Z,
	Z0, Z1, Z2, Z3, Z4, Z5, Z6, Z7, Z8, Z9, 
	Z10, Z11, Z12, Z13, Z14, Z15, Z16, Z17, Z18, Z19, 
	Z20, Z21, Z22, Z23, Z24, Z25, Z26, Z27, Z28, Z29, 
	Z30, Z31, Z32, 
	Z64, 

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
	INTEGER_LIT,    // 765 432 109 876 543 210
	LSTRING_LIT,    // l"sss"
	LTSTRING_LIT,   // t"aaa"
	MINS_LIT,       // 111m
	NAT_LIT,        // 1212u
	Q_LIT,          // 111q
	REAL_LIT,       // 123r
	REGEXP_LIT,     // re"s*"
	SECS_LIT,       // 111.123s
	STRING_LIT,     // "ssss"
	TIME_LIT,       // t"HH:MM:SS:sssssssss"
	UINT8_LIT,      // 111u
	UINT16_LIT,     // 111u
	UINT32_LIT,     // 111u
	UINT64_LIT,     // 111u
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

struct	Token
{
	~Token();

	Token( ):line(0), column(0), id(0) {}
	Token( const Token & );

	unsigned short line;
	unsigned short column;

	unsigned int id;

	static const size_t	valueSize = sizeof(__uint128_t);

	char * lexium_;
	union Value
	{
		char	shortLex[sizeof(__uint128_t)];

		signed char		i8;
		unsigned char	u8;

		short			i16;
		unsigned short	u16;

		int		 i32;
		unsigned u32;

		int64_t	 i64;
		uint64_t u64;

		__uint128_t u128;

		float  float32;
		double float64;
		long double float80;

		Integer		* integer;
	} value;

	void add( char c );

	const char * lexium() const 	{ return lexium_+sizeof(unsigned short); }
	const char * string() const 	{ return lexium_+sizeof(unsigned short); }

	signed char   i8() const		{ return value.i8; }
	unsigned char u8() const		{ return value.u8; }

	signed short   i16() const		{ return value.i16; }
	unsigned short u16() const		{ return value.u16; }

	int      i32() const			{ return value.i32; }
	unsigned u32() const			{ return value.u32; }

	int64_t	 i64() const			{ return value.i64; }
	uint64_t u64() const			{  return value.i64; }

	float  float32() const		{ return value.float32; }
	double float64() const		{ return value.float64; }
	long double float80() const	{ return value.float80; } 

	Date date() const			{ return value.u32; } 
	Datetime datetime() const	{ return value.u128; } 
	Time time() const			{ return value.u32; } 

	void lexium( char );
	void lexium( const char * i );
	void string( const char * i );

	void i8( signed char i ) 	{ value.i8 = i; }
	void u8( unsigned char ui )	{ value.u8 = ui; }

	void i16( short i ) 		{ value.i16 = i; }
	void u16( unsigned short ui ){ value.u16 = ui; }

	void i32( int i ) 			{ value.i32 = i; }
	void u32( unsigned ui )		{ value.u32 = ui; }

	void i64( int64_t i ) 		{ value.i64 = i; }
	void u64( uint64_t ui ) 	{ value.i64 = ui; }

	void float32( float f ) 		{ value.float32 = f; }
	void float64( double d ) 		{ value.float64 = d; }
	void float80( long double ld ) 	{ value.float80 = ld; } 

	void date( const Date & d )			 	{ value.u32  = d.toUint32(); } 
	void datetime( const Datetime & dt )	{ value.u128 = dt.toUint128(); } 
	void time( const Time & d ) 			{ value.u64  = d.toUint64(); } 

	const Integer & integer() const			{ return *value.integer; }
	void integer( Integer * i ) 			{ id = id2ui(INTEGER_LIT); value.integer = i; }

	bool isBasicType() const	{ return id > id2ui(BUILT_IN_TYPES_FIRST) && id < id2ui(BUILT_IN_TYPES_LAST); }
	bool isDefinedType() const	{ return id > id2ui(FIRST_DEFINED_TYPE_NAME) && id < id2ui(LAST_DEFINED_TYPE_NAME); }
	bool isType() const         { return isBasicType() || isDefinedType(); }
	bool isModifier() const		{ return id > id2ui(FIRST_TYPE_MODIFIER) && id < id2ui(LAST_TYPE_MODIFIER); }
	bool isPointer() const		{ return id == '*' || id == '^' || id == '#'; }
};

struct Keyword
{
	int id;
	const char * lexium;
};

extern Keyword keyWords[];
extern unsigned noOfKeyWords;


#define DEBUG_YYLEX
#ifdef DEBUG_YYLEX

struct Token;

void dumpToken( Token & tok );

#endif

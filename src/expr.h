#pragma once

#include "opus.h"
#include "value.h"

#include <string>
#include <memory>
#include <vector>


class GenCodeContext;
class SemCheckContext;
class Type;


class Expr
{
public:
	Expr( unsigned short l, unsigned short c ):line_(l), column_(c) 
	{
		printf( "%s:%d Expr %p\n", __FILE__, __LINE__, this );
	}

	virtual const char * id() const = 0;

	virtual ~Expr()
	{
		printf( "%s:%d ~Expr %p\n", __FILE__, __LINE__, this );
	}
	virtual bool genCode( GenCodeContext & gcc ) const = 0;
	virtual sp<Type> semCheck( SemCheckContext & scc ) const = 0;

private:
	unsigned short line_;
	unsigned short column_;
};

class UnknownRef : public Expr
{
public:
	UnknownRef( unsigned short l, unsigned short c, const char * n ):Expr(l,c), name_(n) {}

	const char * id() const final { return "UnknownRef"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

	const std::string & name() const { return name_; }

private:
	std::string name_;
};

struct Token;

template <typename V> class Literal: public Expr
{
public:
	Literal( unsigned short l, unsigned short c, V && v ):Expr(l,c), value_(std::move(v)) {}

	const char * id() const final { return "Literal"; }

	bool genCode( GenCodeContext & gcc ) const final       { return value_.genCode(gcc); }
	sp<Type> semCheck( SemCheckContext & scc ) const final { return value_.semCheck(scc); }
protected:
	V value_;
};

class Integer;
template <> class Literal<Integer *>: public Expr
{
public:
	Literal( unsigned short l, unsigned short c, Integer * v ):Expr(l,c), value_(v) {}

	const char * id() const final { return "Integer"; }

	bool genCode( GenCodeContext & gcc ) const final;      
	sp<Type> semCheck( SemCheckContext & scc ) const final;
protected:
	Integer * value_;
};

class Uniary: public Expr
{
public: 
	Uniary( unsigned short l, unsigned short c, Expr * o ):Expr(l,c), operand_(o) {}

protected:
	up<Expr> operand_;
};

class Binary: public Expr
{
public:
	Binary( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Expr(l,c), left_(lf), right_(r) {}

protected:
	up<Expr> left_;
	up<Expr> right_;
};

class Trinary: public Expr
{
public:
	Trinary( unsigned short l, unsigned short cl, Expr * a, Expr * b, Expr * c ):
		Expr(l,cl), operand1_(a), operand2_(b), operand3_(c) {}

protected:
	up<Expr> operand1_;
	up<Expr> operand2_;
	up<Expr> operand3_;
};

///////////////////////////////////////////////////////////////////////////////

// func ( ... )
class FuncCall: public Expr
{
public:
	FuncCall( unsigned short l, unsigned short c, Expr * n, std::vector<up<Expr>> * args = nullptr ):
		Expr(l,c), name_(n), args_(args) {}

	const char * id() const final { return "FuncCall"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr> name_;
	up<std::vector<up<Expr>>> args_;
};

// type ( ... )
class CtorCall: public Expr
{
public:
	CtorCall( unsigned short l, unsigned short c, const char * n, bool knownType ):
		Expr(l,c), name_(n), knownType_(knownType) {}

	const char * id() const final { return "CtorCall"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	std::string name_;
	bool knownType_;
	std::vector<Expr *> args_;
};

// is_void expr
class IsVoid: public Expr
{
public:
	IsVoid( unsigned short l, unsigned short c, Expr * arg ): Expr(l,c), arg_(arg) {}

	const char * id() const final { return "IsVoid"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr> arg_;
};

// id
class Name: public Expr
{
public:
	Name( unsigned short l, unsigned short c, const char * n ):Expr(l,c), name_(n) {}

	const char * id() const final { return "Name"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	std::string	name_;
};
/*
class Lvalue: public Expr
{
public:
	Lvalue( const char * n ):first_(new Name(n), isDot_(false) {}
	Lvalue( Expr * f, Expr * s, bool d = false ):
		first_(f), second_(s), isDot_(d)
	{
	}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	bool isDot_;
	up<Expr> first_;
	up<Expr> second_;
};
*/
/////////////////////////////////////////////////////////////////

class KeyValue : public Binary
{
public:
	KeyValue( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "KeyValue"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr << expr
class ShiftL: public Binary
{
public:
	ShiftL( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "ShiftL"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr >> expr
class ShiftR: public Binary
{
public:
	ShiftR( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "ShiftR"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [.] expr
class DotProd: public Binary
{
public:
	DotProd( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "DotProd"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [*] expr
class CrossProd: public Binary
{
public:
	CrossProd( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "CrossProd"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [/] expr
class MDiv: public Binary
{
public:
	MDiv( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "MDiv"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [**] expr
class MPow: public Binary
{
public:
	MPow( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "MPow"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr = expr
class Assign: public Binary
{
public:
	Assign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Assign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ** expr
class Exponent: public Binary
{
public:
	Exponent( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Exponent"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr .. expr
class Range: public Binary
{
public:
	Range( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Range"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr + expr
class Add: public Binary 
{
public:
	Add( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Add"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr - expr
class Sub: public Binary 
{
public:
	Sub( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Sub"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr * expr
class Mul: public Binary 
{
public:
	Mul( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Mul"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr / expr
class Div: public Binary 
{
public:
	Div( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Div"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr % expr
class Mod: public Binary 
{
public:
	Mod( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Mod"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr != expr
class NotEq: public Binary 
{
public:
	NotEq( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "NotEq"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr == expr
class Eq: public Binary
{
public:
	Eq( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Eq"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr <=> expr
class SpaceShip: public Binary
{
public:
	SpaceShip( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "SpaceShip"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr >= expr
class GreaterEq: public Binary
{
public:
	GreaterEq( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "GE"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr > expr
class Greater: public Binary
{
public:
	Greater( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "GT"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr <= expr
class LessEq: public Binary
{
public:
	LessEq( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "LE"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr < expr
class Less: public Binary
{
public:
	Less( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "LT"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr . expr
class Dot: public Binary
{
public:
	Dot( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Dot"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr .* expr
class DotMem: public Binary
{
public:
	DotMem( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "DotMem"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr -> expr
class Ptr: public Binary
{
public:
	Ptr( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Ptr"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ->* expr
class PtrMem: public Binary
{
public:
	PtrMem( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "PtrMem"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [ expr ]
class ArrayMem: public Binary
{
public:
	ArrayMem( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "ArrayMem"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr += expr
class AddAssign: public Binary 
{
public:
	AddAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "AddAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr -= expr
class SubAssign: public Binary
{
public:
	SubAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "SubAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr *= expr
class MulAssign: public Binary 
{
public:
	MulAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "MulAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr /= expr
class DivAssign: public Binary
{
public:
	DivAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "DivAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr %= expr
class ModAssign: public Binary
{
public:
	ModAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "ModAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr &= expr
class AndAssign: public Binary
{
public:
	AndAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "AndAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr &&= expr
class BAndAssign: public Binary
{
public:
	BAndAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "BAndAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr |= expr
class OrAssign: public Binary
{
public:
	OrAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "OrAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ||= expr
class BOrAssign: public Binary
{
public:
	BOrAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "BOrAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ^^= expr
class XorAssign: public Binary
{
public:
	XorAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "XorAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ^= expr
class BXorAssign: public Binary
{
public:
	BXorAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "BXorAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr := expr
class ParamAssign: public Binary
{
public:
	ParamAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "ParamAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ~= expr
class BNotAssign: public Binary
{
public:
	BNotAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "BNotAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr **= expr
class PowAssign: public Binary
{
public:
	PowAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "PowAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr <<= expr
class SLftAssign: public Binary
{
public:
	SLftAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "SLftAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr >>= expr
class SRghtAssign: public Binary
{
public:
	SRghtAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "SRghtAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [.]= expr
class DPrdAssign: public Binary
{
public:
	DPrdAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "DPrdAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [*]= expr
class XPrdAssign: public Binary
{
public:
	XPrdAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "XPrdAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [/]= expr
class MDivAssign: public Binary
{
public:
	MDivAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "MDivAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [**]= expr
class MPowAssign: public Binary
{
public:
	MPowAssign( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "MPowAssign"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr || expr
class Or: public Binary
{
public:
	Or( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Or"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr | expr
class Lor: public Binary
{
public:
	Lor( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Lor"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ^^ expr
class Xor: public Binary
{
public:
	Xor( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Xor"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ^ expr
class BXor: public Binary
{
public:
	BXor( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "BXor"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr && expr
class And: public Binary
{
public:
	And( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "And"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr & expr
class Land: public Binary
{
public:
	Land( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Land"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};
/*
class Union: public Binary
{
public:
	Union( Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Intersect: public Binary
{
public:
	Intersect( Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};
*/
// expr in expr
class In: public Binary
{
public:
	In( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "In"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// apply expr expr
class Apply: public Binary
{
public:
	Apply( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Apply"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// filter expr expr
class Filter: public Binary
{
public:
	Filter( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Filter"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

/*
// order expr expr
class Order: public Binary
{
public:
	Order( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Order"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};
*/

// reduce expr expr
class Reduce: public Binary
{
public:
	Reduce( unsigned short l, unsigned short c, Expr * lf, Expr * r ):Binary(l,c,lf,r) {}

	const char * id() const final { return "Reduce"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Where : public Binary
{
public:
	Where( unsigned short l, unsigned short c, Expr * col, Expr * con ):Binary(l,c,col,con) {}

	const char * id() const final { return "Where"; }
	
	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Index : public Expr
{
public:
	Index( unsigned short l, unsigned short c, 
		Expr * arr, std::vector<Expr *> & i ):Expr(l,c), arr_(arr), index_(i)  {}
	Index( unsigned short l, unsigned short c, Expr * arr,
		Expr * i ):Expr(l,c), arr_(arr)
	{
		index_.push_back(i);
	}

	const char * id() const final { return "Index"; }
	
	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	Expr * arr_;
	std::vector<Expr * > index_;
};

/*
//  *expr
class UniDer: public Uniary
{
public:
	UniDer( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "UniDer"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

//  ^expr
class ShrDer: public Uniary
{
public:
	ShrDer( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "ShrDer"; }
	
	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};
*/

// | expr |
class Abs: public Uniary
{
public:
	Abs( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Abs"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// eval expr
class Eval: public Uniary
{
public:
	Eval( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Eval"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// async expr
class Async: public Uniary
{
public:
	Async( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Async"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// lazy expr
class Lazy: public Uniary
{
public:
	Lazy( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Lazy"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// co_await expr
class Co_await: public Uniary
{
public:
	Co_await( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Co_await"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// co_yield expr
class Co_yield: public Uniary
{
public:
	Co_yield( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Co_yield"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// sizeof expr
class Sizeof: public Uniary
{
public:
	Sizeof( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Sizeof"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// alignof expr
class Alignof: public Uniary
{
public:
	Alignof( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Alignof"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// alignas expr
class Alignas: public Uniary
{
public:
	Alignas( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Alignas"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// new type ...
class New: public Uniary
{
public:
	New( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "New"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// ++ expr
class Inc: public Uniary
{
public:
	Inc( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Inc"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr !
class Factorial: public Uniary
{
public:
	Factorial( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Factorial"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// delete expr
class Delete: public Uniary
{
public:
	Delete( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Delete"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// -- expr
class Dec: public Uniary
{
public:
	Dec( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Dec"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ++
class PostInc: public Uniary
{
public:
	PostInc( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "PostInc"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr --
class PostDec: public Uniary
{
public:
	PostDec( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "PostDec"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// ~ expr
class Lnot: public Uniary
{
public:
	Lnot( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Lnot"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// ! expr
class Not: public Uniary
{
public:
	Not( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Not"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// ~ expr
class BNot: public Uniary
{
public:
	BNot( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "BNot"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// - expr
class Minus: public Uniary
{
public:
	Minus( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Minus"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// + expr
class Plus: public Uniary
{
public:
	Plus( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Plus"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// * expr
class Deref: public Uniary
{
public:
	Deref( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Deref"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// throw expr
class Throw: public Uniary
{
public:
	Throw( unsigned short l, unsigned short c, Expr * o ):Uniary(l,c,o) {}

	const char * id() const final { return "Throw"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Distinct: public Expr
{
public:
	Distinct( unsigned short l, unsigned short c, Expr * e = nullptr ):Expr(l,c), expr_(e) {}
	Distinct( unsigned short l, unsigned short c, std::vector<up<Expr>> * el ): Expr(l,c), exprList_(el) {}

	const char * id() const final { return "Distinct"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr> expr_;
	up<std::vector<up<Expr>>> exprList_;
};

class OrderBy: public Expr
{
public:
	OrderBy( unsigned short l, unsigned short c, Expr * e = nullptr ): Expr(l,c), expr_(e) {}
	OrderBy( unsigned short l, unsigned short c, std::vector<up<Expr>> * el ):Expr(l,c), exprList_(el) {}

	const char * id() const final { return "OrderBy"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr> expr_;
	up<std::vector<up<Expr>>> exprList_;
};

// expr ? expr : expr
class Conditional: public Trinary
{
public:
	Conditional( unsigned short l, unsigned short c, Expr * cn, Expr * e1, Expr * e2 ):Trinary(l,c,cn,e1,e2) {}

	const char * id() const final { return "Conditional"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Join: public Trinary
{
public:
	Join( unsigned short l, unsigned short c, Expr * lf, Expr * r, Expr * cn ):Trinary( l,c,lf,r,cn) {}

	const char * id() const final { return "Join"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class LeftJoin: public Trinary
{
public:
	LeftJoin( unsigned short l, unsigned short c, Expr * lf, Expr * r, Expr * cn ):Trinary( l,c,lf,r,cn) {}

	const char * id() const final { return "LeftJoin"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class RightJoin: public Trinary
{
public:
	RightJoin( unsigned short l, unsigned short c, Expr * lf, Expr * r, Expr * cn ):Trinary( l,c,lf,r,cn) {}

	const char * id() const final { return "RightJoin"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class OuterJoin: public Trinary
{
public:
	OuterJoin( unsigned short l, unsigned short c, Expr * lf, Expr * r, Expr * cn ):Trinary( l,c,lf,r,cn) {}

	const char * id() const final { return "OuterJoin"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Top
{
public:
	Top( unsigned short l, unsigned short c, Expr * e, bool percent = false, bool ties = false ):
		expr_(e), percent_(percent), ties_(ties), line_(l), column_(c)
	{}

private:
	up<Expr> expr_;
	bool	percent_;
	bool	ties_;
	unsigned short line_;
	unsigned short column_;
};

class Column
{
public:
	Column( unsigned short l, unsigned short c, Expr * e = nullptr, const char * n = nullptr ):line_(l), column_(c)
	{
		if(e)
			expr_.reset(e);
		if(n)
			name_ = n;
	}

private:
	up<Expr> expr_;
	std::string name_;
	unsigned short line_;
	unsigned short column_;
};

class GroupBy
{
public:
	GroupBy( unsigned short l, unsigned short c, Expr * e ):line_(l), column_(c), expr_(e) {}

private:
	unsigned short line_;
	unsigned short column_;
	up<Expr> expr_;
};

class Having
{
public:
	Having( unsigned short l, unsigned short c, Expr * e ):line_(l), column_(c), expr_(e) {}

private:
	unsigned short line_;
	unsigned short column_;
	up<Expr> expr_;
};

class Select: public Expr
{
public:
	Select( unsigned short l, unsigned short c, 
		int dist, 
		Top * top, 
		std::vector<up<Column>> * cols, 
		std::vector<std::string> * tables, 
		Where   * where, 
		GroupBy * groupBy, 
		Having  * having );

	const char * id() const final { return "Select"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	int distinct_;

	up<Top> top_;
	up<std::vector<up<Column>>> cols_; 
	up<std::vector<std::string>> tables_; 
	up<Where>	where_;
	up<GroupBy>groupBy_;
	up<Having>	having_;
};

class As : public Expr
{
public:
	As( unsigned short l, unsigned short c, Expr * e, const char * n ):Expr(l,c), expr_(e), name_(n) {}

	const char * id() const final { return "As"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr>	expr_;
	std::string	name_;
};

class ListLit : public Expr
{
public:
	ListLit ( unsigned short l, unsigned short c, std::vector<up<Expr>> * vals ) : Expr(l,c), vals_(vals) {}

	const char * id() const final { return "ListLit"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<std::vector<up<Expr>>> vals_;
};

// \( args ) statement
class Lambda : public Expr
{
public:
	Lambda( unsigned short l, unsigned short c, Expr * ):Expr(l,c) {}

	const char * id() const final { return "Lambda"; }

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

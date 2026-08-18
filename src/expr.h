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
	virtual ~Expr() {}
	virtual bool genCode( GenCodeContext & gcc ) const = 0;
	virtual sp<Type> semCheck( SemCheckContext & scc ) const = 0;
};

class UnknownRef : public Expr
{
public:
	UnknownRef( const char * n ):name_(n) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

	const std::string & name() const { return name_; }

private:
	std::string name_;
};

class Literal: public Expr
{
public:
	Literal( Value * v ):value_(v) {}

protected:
	up<Value> value_;
};

class Uniary: public Expr
{
public:
	Uniary( Expr * o ):operand_(o) {}

protected:
	up<Expr> operand_;
};

class Binary: public Expr
{
public:
	Binary( Expr * l, Expr * r ):left_(l), right_(r) {}

protected:
	up<Expr> left_;
	up<Expr> right_;
};

class Trinary: public Expr
{
public:
	Trinary( Expr * a, Expr * b, Expr * c ):operand1_(a), operand2_(b), operand3_(c) {}

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
	FuncCall( Expr * n, std::vector<up<Expr>> * args = nullptr ):
		name_(n), args_(args) {}

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
	CtorCall( Expr * n, std::vector<up<Expr>> * args = nullptr ):
		name_(n), args_(args) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr> name_;
	up<std::vector<up<Expr>>> args_;
};

// is_void expr
class IsVoid: public Expr
{
public:
	IsVoid( Expr * arg ): arg_(arg) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr> arg_;
};

// id
class Name: public Expr
{
public:
	Name( const char * n ):name_(n) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	std::string	name_;
};
/*
class Lvalue: public Expr
{
public:
	Lvalue( const char * n ):first_(new Name(n)), isDot_(false) {}
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

// expr << expr
class ShiftL: public Binary
{
public:
	ShiftL( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr >> expr
class ShiftR: public Binary
{
public:
	ShiftR( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [.] expr
class DotProd: public Binary
{
public:
	DotProd( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [*] expr
class CrossProd: public Binary
{
public:
	CrossProd( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [/] expr
class MDiv: public Binary
{
public:
	MDiv( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [**] expr
class MPow: public Binary
{
public:
	MPow( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr = expr
class Assign: public Binary
{
public:
	Assign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ** expr
class Exponent: public Binary
{
public:
	Exponent( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr .. expr
class Range: public Binary
{
public:
	Range( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr + expr
class Add: public Binary 
{
public:
	Add( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr - expr
class Sub: public Binary 
{
public:
	Sub( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr * expr
class Mul: public Binary 
{
public:
	Mul( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr / expr
class Div: public Binary 
{
public:
	Div( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr % expr
class Mod: public Binary 
{
public:
	Mod( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr != expr
class NotEq: public Binary 
{
public:
	NotEq( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr == expr
class Eq: public Binary
{
public:
	Eq( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr <=> expr
class SpaceShip: public Binary
{
public:
	SpaceShip( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr >= expr
class GreaterEq: public Binary
{
public:
	GreaterEq( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr > expr
class Greater: public Binary
{
public:
	Greater( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr <= expr
class LessEq: public Binary
{
public:
	LessEq( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr < expr
class Less: public Binary
{
public:
	Less( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr . expr
class Dot: public Binary
{
public:
	Dot( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr .* expr
class DotMem: public Binary
{
public:
	DotMem( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr -> expr
class Ptr: public Binary
{
public:
	Ptr( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ->* expr
class PtrMem: public Binary
{
public:
	PtrMem( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [ expr ]
class ArrayMem: public Binary
{
public:
	ArrayMem( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr += expr
class AddAssign: public Binary 
{
public:
	AddAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr -= expr
class SubAssign: public Binary
{
public:
	SubAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr *= expr
class MulAssign: public Binary 
{
public:
	MulAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr /= expr
class DivAssign: public Binary
{
public:
	DivAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr %= expr
class ModAssign: public Binary
{
public:
	ModAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr &= expr
class AndAssign: public Binary
{
public:
	AndAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr |= expr
class OrAssign: public Binary
{
public:
	OrAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ^= expr
class XorAssign: public Binary
{
public:
	XorAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr := expr
class ParamAssign: public Binary
{
public:
	ParamAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ~= expr
class BNotAssign: public Binary
{
public:
	BNotAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr **= expr
class PowAssign: public Binary
{
public:
	PowAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr <<= expr
class SLftAssign: public Binary
{
public:
	SLftAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr >>= expr
class SRghtAssign: public Binary
{
public:
	SRghtAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [.]= expr
class DPrdAssign: public Binary
{
public:
	DPrdAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [*]= expr
class XPrdAssign: public Binary
{
public:
	XPrdAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [/]= expr
class MDivAssign: public Binary
{
public:
	MDivAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr [**]= expr
class MPowAssign: public Binary
{
public:
	MPowAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr || expr
class Or: public Binary
{
public:
	Or( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr | expr
class Lor: public Binary
{
public:
	Lor( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ^ expr
class Xor: public Binary
{
public:
	Xor( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr && expr
class And: public Binary
{
public:
	And( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr & expr
class Land: public Binary
{
public:
	Land( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};
/*
class Union: public Binary
{
public:
	Union( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Intersect: public Binary
{
public:
	Intersect( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};
*/
// expr in expr
class In: public Binary
{
public:
	In( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// apply expr expr
class Apply: public Binary
{
public:
	Apply( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// filter expr expr
class Filter: public Binary
{
public:
	Filter( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// order expr expr
class Order: public Binary
{
public:
	Order( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// reduce expr expr
class Reduce: public Binary
{
public:
	Reduce( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Where : public Binary
{
public:
	Where( Expr * col, Expr * con ):Binary(col,con) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Index : public Expr
{
public:
	Index( 
		Expr * v, 
		std::vector<up<Expr>> * i ):tensor_(v), index_(i)  {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	Expr				* tensor_;
	up<std::vector<up<Expr>>> index_;
};

//  *expr
class UniDer: public Uniary
{
public:
	UniDer( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

//  ^expr
class ShrDer: public Uniary
{
public:
	ShrDer( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// | expr |
class Abs: public Uniary
{
public:
	Abs( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// eval expr
class Eval: public Uniary
{
public:
	Eval( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// async expr
class Async: public Uniary
{
public:
	Async( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// lazy expr
class Lazy: public Uniary
{
public:
	Lazy( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// co_await expr
class Co_await: public Uniary
{
public:
	Co_await( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// co_yield expr
class Co_yield: public Uniary
{
public:
	Co_yield( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// sizeof expr
class Sizeof: public Uniary
{
public:
	Sizeof( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// alignof expr
class Alignof: public Uniary
{
public:
	Alignof( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// alignas expr
class Alignas: public Uniary
{
public:
	Alignas( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// new type ...
class New: public Uniary
{
public:
	New( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// ++ expr
class Inc: public Uniary
{
public:
	Inc( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr !
class Factorial: public Uniary
{
public:
	Factorial( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// delete expr
class Delete: public Uniary
{
public:
	Delete( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// -- expr
class Dec: public Uniary
{
public:
	Dec( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr ++
class PostInc: public Uniary
{
public:
	PostInc( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// expr --
class PostDec: public Uniary
{
public:
	PostDec( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// ~ expr
class Lnot: public Uniary
{
public:
	Lnot( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// ! expr
class Not: public Uniary
{
public:
	Not( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// - expr
class Minus: public Uniary
{
public:
	Minus( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

// throw expr
class Throw: public Uniary
{
public:
	Throw( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Distinct: public Expr
{
public:
	Distinct( Expr * e = nullptr ):expr_(e) {}
	Distinct( std::vector<up<Expr>> * el ): exprList_(el) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr> expr_;
	up<std::vector<up<Expr>>> exprList_;
};

class OrderBy: public Expr
{
public:
	OrderBy( Expr * e = nullptr ): expr_(e) {}
	OrderBy( std::vector<up<Expr>> * el ):exprList_(el) {}

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
	Conditional( Expr * c, Expr * e1, Expr * e2 ):Trinary(c,e1,e2) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Join: public Trinary
{
public:
	Join( Expr * l, Expr * r, Expr * c ):Trinary( l,r,c) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class LeftJoin: public Trinary
{
public:
	LeftJoin( Expr * l, Expr * r, Expr * c ):Trinary( l,r,c) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class RightJoin: public Trinary
{
public:
	RightJoin( Expr * l, Expr * r, Expr * c ):Trinary( l,r,c) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class OuterJoin: public Trinary
{
public:
	OuterJoin( Expr * l, Expr * r, Expr * c ):Trinary( l,r,c) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

class Top
{
public:
	Top( Expr * e, bool percent = false, bool ties = false ):
		expr_(e), percent_(percent), ties_(ties)
	{}

private:
	up<Expr> expr_;
	bool	percent_;
	bool	ties_;
};

class Column
{
public:
	Column( Expr * e = nullptr, const char * n = nullptr )
	{
		if(e)
			expr_.reset(e);
		if(n)
			name_ = n;
	}

private:
	up<Expr> expr_;
	std::string name_;
};

class GroupBy
{
public:
	GroupBy( Expr * e ):expr_(e) {}

private:
	up<Expr> expr_;
};

class Having
{
public:
	Having( Expr * e ):expr_(e) {}

private:
	up<Expr> expr_;
};

class Select: public Expr
{
public:
	Select( 
		int dist, 
		Top * top, 
		std::vector<up<Column>> * cols, 
		std::vector<std::string> * tables, 
		Where   * where, 
		GroupBy * groupBy, 
		Having  * having );

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
	As( Expr * e, const char * n ):expr_(e), name_(n) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<Expr>	expr_;
	std::string	name_;
};

class ListLit : public Expr
{
public:
	ListLit ( std::vector<up<Expr>> * vals ) : vals_(vals) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;

private:
	up<std::vector<up<Expr>>> vals_;
};

// \( args ) statement
class Lambda : public Expr
{
public:
	Lambda( Expr * ) {}

	bool genCode( GenCodeContext & gcc ) const final;
	sp<Type> semCheck( SemCheckContext & scc ) const final;
};

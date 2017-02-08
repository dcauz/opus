#pragma once

#include <string>
#include <vector>


class GenCodeContext;
class SemCheckContext;


class Expr
{
public:
	virtual ~Expr() {}
	virtual bool genCode( GenCodeContext & gcc ) const = 0;
	virtual bool semCheck( SemCheckContext & scc ) const = 0;
};

class Uniary: public Expr
{
public:
	Uniary( Expr * o ):operand_(o) {}

protected:
	Expr * operand_;
};

class Binary: public Expr
{
public:
	Binary( Expr * l, Expr * r ):left_(l), right_(r) {}

protected:
	Expr * left_;
	Expr * right_;
};

class Trinary: public Expr
{
public:
	Trinary( Expr * a, Expr * b, Expr * c ):operand1_(a), operand2_(b), operand3_(c) {}

protected:
	Expr * operand1_;
	Expr * operand2_;
	Expr * operand3_;
};

class Literal: public Expr
{
public:

};

class FuncCall: public Expr
{
public:
	FuncCall( Expr * n, std::vector<Expr *> * args = nullptr ):
		name_(n), args_(args) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	Expr * name_;
	std::vector<Expr * > * args_;
};

class Name: public Expr
{
public:
	Name( const char * n ):name_(n) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	std::string	name_;
};

class IntLit: public Literal
{
public:
	IntLit( int i):value_(i) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	int value_;
};

class UnsignedLit : public Literal
{
public:
	UnsignedLit( unsigned int ui ):value_(ui) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	int value_;
};

class UnsignedLongLit: public Literal
{
public:
	UnsignedLongLit( unsigned long int uli ):value_(uli) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	int value_;
};

class LongLit : public Literal
{
public:
	LongLit( long int li ):value_(li) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	int value_;
};

class DoubleLit : public Literal
{
public:
	DoubleLit( double d ):value_(d) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	int value_;
};

class StringLit: public Literal
{
public:
	StringLit( const char * v ):value_(v) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	std::string value_;
};

class RawStringLit: public Literal
{
public:
	RawStringLit( const char * v ):value_(v) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	std::string value_;
};

class BoolLit: public Literal
{
public:
	BoolLit( bool b ):value_(b) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	bool value_;
};

/////////////////////////////////////////////////////////////////

class Assign: public Binary
{
public:
	Assign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Add: public Binary 
{
public:
	Add( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Sub: public Binary 
{
public:
	Sub( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Mul: public Binary 
{
public:
	Mul( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Div: public Binary 
{
public:
	Div( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Mod: public Binary 
{
public:
	Mod( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class NotEq: public Binary 
{
public:
	NotEq( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Eq: public Binary
{
public:
	Eq( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class GreaterEq: public Binary
{
public:
	GreaterEq( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Greater: public Binary
{
public:
	Greater( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class LessEq: public Binary
{
public:
	LessEq( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Less: public Binary
{
public:
	Less( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Dot: public Binary
{
public:
	Dot( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class AddAssign: public Binary 
{
public:
	AddAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class SubAssign: public Binary
{
public:
	SubAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class MulAssign: public Binary 
{
public:
	MulAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class DivAssign: public Binary
{
public:
	DivAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class ModAssign: public Binary
{
public:
	ModAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class AndAssign: public Binary
{
public:
	AndAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class OrAssign: public Binary
{
public:
	OrAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class XorAssign: public Binary
{
public:
	XorAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class LorAssign: public Binary
{
public:
	LorAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class LandAssign: public Binary
{
public:
	LandAssign( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Lor: public Binary
{
public:
	Lor( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Or: public Binary
{
public:
	Or( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Xor: public Binary
{
public:
	Xor( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Land: public Binary
{
public:
	Land( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class And: public Binary
{
public:
	And( Expr * l, Expr * r ):Binary(l,r) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Index : public Expr
{
public:
	Index( Expr * v, std::vector<Expr * > * i ):tensor_(v), index_(i)  {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;

private:
	Expr				* tensor_;
	std::vector<Expr *> * index_;
};

class Inc: public Uniary
{
public:
	Inc( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Dec: public Uniary
{
public:
	Dec( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class PostInc: public Uniary
{
public:
	PostInc( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class PostDec: public Uniary
{
public:
	PostDec( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Lnot: public Uniary
{
public:
	Lnot( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Not: public Uniary
{
public:
	Not( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Minus: public Uniary
{
public:
	Minus( Expr * o ):Uniary(o) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Conditional: public Trinary
{
public:
	Conditional( Expr * c, Expr * e1, Expr * e2 ):Trinary(c,e1,e2) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class Join: public Trinary
{
public:
	Join( Expr * l, Expr * r, Expr * c ):Trinary( l,r,c) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class LeftJoin: public Trinary
{
public:
	LeftJoin( Expr * l, Expr * r, Expr * c ):Trinary( l,r,c) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class RightJoin: public Trinary
{
public:
	RightJoin( Expr * l, Expr * r, Expr * c ):Trinary( l,r,c) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

class OuterJoin: public Trinary
{
public:
	OuterJoin( Expr * l, Expr * r, Expr * c ):Trinary( l,r,c) {}

	bool genCode( GenCodeContext & gcc ) const final;
	bool semCheck( SemCheckContext & scc ) const final;
};

#include "expr.h"
#include "opus.h"
#include "type.h"


SelectEx::SelectEx( 
                       int dis, 
                     Top * top, 
 std::vector<up<Column>> * cols, 
std::vector<std::string> * tbls, 
                   Where * w, 
                 GroupBy * gb, 
                  Having * h ):
	distinct_(dis), 
	top_(top), 
	cols_(cols), 
	tables_(tbls), 
	where_(w), 
	groupBy_(gb), 
	having_(h)
{
}

Range::Range( Expr * l, Expr * r ):Binary(l,r)
{
}

Type * Range::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

bool Range::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

////////////////////////////////////////////////////////

Type * SelectEx::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * FuncCall::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Name::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Lvalue::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Distinct::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * OrderBy::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Assign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Add::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Sub::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Mul::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Div::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Mod::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * NotEq::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Eq::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * GreaterEq::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Greater::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * LessEq::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Less::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Dot::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * AddAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * SubAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * MulAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * DivAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * ModAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * AndAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * OrAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * XorAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Union::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * In::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Intersect::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Or::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Xor::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * And::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Index::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Inc::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Dec::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * PostInc::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * PostDec::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Lnot::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Throw::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * ToVoid::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Not::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Minus::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Conditional::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * Join::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * LeftJoin::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * RightJoin::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * OuterJoin::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

Type * IsVoid::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return &errorType;
}

////////////////////////////////////////////////////////////////////////////

bool SelectEx::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool FuncCall::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Name::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Lvalue::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Distinct::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool OrderBy::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Assign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Add::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Sub::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Mul::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Div::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Mod::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool NotEq::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Eq::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool GreaterEq::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Greater::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool LessEq::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Less::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Dot::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool AddAssign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool SubAssign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool MulAssign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool DivAssign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool ModAssign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool AndAssign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool OrAssign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool XorAssign::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Union::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool In::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Intersect::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Or::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Xor::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool And::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Index::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Inc::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Dec::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool PostInc::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool PostDec::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Lnot::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool ToVoid::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Throw::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Not::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Minus::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Conditional::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool Join::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool LeftJoin::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool RightJoin::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool OuterJoin::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

bool IsVoid::genCode( GenCodeContext & gcc ) const 
{
	TODO // genCode
	return false;
}

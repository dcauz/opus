#include "expr.h"
#include "opus.h"


SelectEx::SelectEx( 
                                   int dis, 
                                 Top * top, 
std::vector<std::unique_ptr<Column>> * cols, 
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

////////////////////////////////////////////////////////

bool SelectEx::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool FuncCall::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Name::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Assign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Add::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Sub::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Mul::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Div::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Mod::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool NotEq::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Eq::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool GreaterEq::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Greater::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool LessEq::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Less::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Dot::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool AddAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool SubAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool MulAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool DivAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool ModAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool AndAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool OrAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool XorAssign::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Union::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Intersect::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Or::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Xor::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool And::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Index::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Inc::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Dec::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool PostInc::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool PostDec::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Lnot::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Not::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Minus::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Conditional::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool Join::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool LeftJoin::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool RightJoin::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool OuterJoin::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
}

bool IsVoid::semCheck( SemCheckContext & scc ) const 
{
	TODO // semCheck
	return false;
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

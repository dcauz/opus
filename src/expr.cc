#include "expr.h"
#include "opus.h"
#include "type.h"


Select::Select( 
            unsigned short l,
            unsigned short c,
                       int dis, 
                     Top * top, 
 std::vector<up<Column>> * cols, 
std::vector<std::string> * tbls, 
                   Where * w, 
                 GroupBy * gb, 
                  Having * h ):
	Expr(l,c),
	distinct_(dis), 
	top_(top), 
	cols_(cols), 
	tables_(tbls), 
	where_(w), 
	groupBy_(gb), 
	having_(h)
{
}


bool UnknownRef::genCode( GenCodeContext & ) const
{
	TODO // genCode
	return false;
}

sp<Type> UnknownRef::semCheck( SemCheckContext & ) const
{
	TODO // semCheck
	return errorType;
}


sp<Type> Range::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

bool Range::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

////////////////////////////////////////////////////////

sp<Type> ListLit::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

bool ListLit::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

////////////////////////////////////////////////////////

sp<Type> As::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

bool As::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

////////////////////////////////////////////////////////

sp<Type> Where::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

bool Where::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

////////////////////////////////////////////////////////

sp<Type> Select::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> FuncCall::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Name::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Distinct::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> OrderBy::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Assign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Add::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Sub::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Mul::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Div::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Mod::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> NotEq::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Eq::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> GreaterEq::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Greater::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> LessEq::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Less::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Dot::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> AddAssign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> SubAssign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> MulAssign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> DivAssign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> ModAssign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> AndAssign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> OrAssign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> XorAssign::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> In::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Or::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Xor::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> And::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Index::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Factorial::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Inc::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Dec::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> PostInc::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> PostDec::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Lnot::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Throw::semCheck( SemCheckContext & scc ) const 
{
	return operand_->semCheck( scc );
}

sp<Type> Not::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Minus::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Conditional::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> Join::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> LeftJoin::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> RightJoin::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> OuterJoin::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

sp<Type> IsVoid::semCheck( SemCheckContext & ) const 
{
	TODO // semCheck
	return errorType;
}

////////////////////////////////////////////////////////////////////////////

bool Select::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool FuncCall::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Name::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Distinct::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool OrderBy::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Assign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Add::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Sub::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Mul::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Div::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Mod::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool NotEq::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Eq::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool GreaterEq::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Greater::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool LessEq::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Less::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Dot::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool AddAssign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool SubAssign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool MulAssign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool DivAssign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool ModAssign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool AndAssign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool OrAssign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool XorAssign::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool In::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Or::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Xor::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool And::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Index::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Factorial::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Inc::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Dec::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool PostInc::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool PostDec::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Lnot::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Throw::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Not::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Minus::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Conditional::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool Join::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool LeftJoin::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool RightJoin::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool OuterJoin::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

bool IsVoid::genCode( GenCodeContext & ) const 
{
	TODO // genCode
	return false;
}

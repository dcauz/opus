#pragma once

#include <string>
#include <vector>
#include <utility>
#include "opus.h"
#include "collection.h"
#include "value.h"
#include "expr.h"


class Tuple: public Value
{
public:
	Tuple( std::vector<up<std::pair<std::string,up<Expr>>>> * );

	bool genCode( GenCodeContext & gcc ) const override;
	Type * semCheck( SemCheckContext & scc ) const override;

private:
	up<std::vector<up<std::pair<std::string,up<Expr>>>>> value_;
	
};

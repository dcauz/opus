#include "parser.h"

/**
Syntax:

selectExpr
    select select-column-list from table-expressions
        [where condition]
        [group by column-list [having condition]]
        [order by column-list]

select-column-list
    *
    select-column-list ',' select-column
    select-column

select-column
    column-name
    function(column-name)

table-expressions
    table [as name] joins

joins
    joins join

join
    join table [as name] [on condition]
    left join table [as name] [on condition]
    right join table [as name] [on condition]
    outer join table [as name] [on condition]

condition
    expr
*/

bool Parser::parseSelect( Select ** )
{
PENTER
	TODO
	return false;
}

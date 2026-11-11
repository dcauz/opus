#include "parser.h"
#include <map>

using namespace	std;


/**
Syntax:

	SELECT [using] [DISTINCT] column_list
	FROM table_a {[INNER | LEFT | RIGHT | FULL] JOIN table_b ON join_condition}
	WHERE filter_condition
	[GROUP BY group_columns]
	[HAVING group_filter_condition]
	[ORDER BY sort_columns]
	[OFFSET skip_rows ROWS]
	[FETCH FIRST limit_rows ROWS ONLY]

column_list
    *
    select-column-list ',' select-column
    select-column

select-column
		expr
		expr as name

table-expressions
    table [as name] joins

joins
    joins join

join
    join table [as name] [on condition]
    left join table [as name] [on condition]
    right join table [as name] [on condition]
    outer join table [as name] [on condition]

filter_condition
    expr

using
	using assign-list

assign-list
	assign-list , name := name
	name := name

*/

bool Parser::parseIdMapping( map<string,string> & mapping ) 
{
PENTER
	TODO
	return false;
}

bool Parser::parseColumnList( Token & token, Select * select )
{
PENTER
	while(true)
	{
		if( token.id() == ID::MUL )
		{
			lex(token, this );
			return true;
		}

		Expr * expr;
		if(!parseExpr( &expr, ETC::COMMA, STR::FROM, token, 0, 0))
		{
			dumpToken( __FILE__, __LINE__, token );
			TODO
		}
		else if( token.is_from() )
		{
//todo
			return true;
		}

		if( token.id() != ID::COMMA )
			break;
		lex(token, this );
	}
	
	return false;
}

// Syntax:
//	table-name
//	table-name alias-name
//  ( select-expr ) as name
//

bool Parser::parseTableId( Token & token, Select * select, bool onTerminated )
{
PENTER
	lex( token, this );
	if( token.isId() )
	{
		string name = token.idLexium();

		lex( token, this );
		if( token.isId() )
		{
			const char * lex = token.idLexium();
			if( onTerminated )
			{
				if( strncmp( lex, "on", 2 ) == 0 )
				{
					TODO // handle on
					return true;
				}
				else
				{
					TODO // handle alias
					return true;
				}
			}
			else if(( strncmp( lex, "inner", 5 ) == 0 ) ||
							( strncmp( lex, "left",  4 ) == 0 ) ||
							( strncmp( lex, "right", 5 ) == 0 ) ||
							( strncmp( lex, "full", 4 ) == 0 ) ||
							( strncmp( lex, "join", 4 ) == 0 ))
			{
TODO // handle join clause
				return true;
			}
			else if( strncmp( lex, "where", 6 ) == 0 )
				return true;
			else
			{
TODO // table alias
				return true;
			}
		}
		else 
			return true;
	}
	else if( token.id() == ID::LPAREN )
	{
		TODO
	}
	else
	{
		TODO
	}

	return true;
}

bool	Parser::parseGroup_columns( Token & token, Select * select )
{
PENTER
	TODO
	return false;
}

bool	Parser::parseGroupFilterCondition( Token & token, Select * select )
{
PENTER
	TODO
	return false;
}

bool	Parser::parseSortColumns( Token & token, Select * select )
{
PENTER
	TODO
	return false;
}

bool Parser::parseGroupColumns( Token & token, Select * select )
{
PENTER
	TODO
	return false;
}

bool Parser::parseSelect( Select ** select, ETC et )
{
PENTER
	Token token;
	lex( token, this );

	bool isDistinct = false;
	*select = new Select( token.line(), token.column(), 0, nullptr, nullptr, nullptr );

	map<string,string>	idMapping;
	if(token.id() == ID::USING )
	{
		if(!parseIdMapping( idMapping ))
		{
			TODO
			return false;
		}
	}
	else if( token.is_distinct() )
	{
		isDistinct = true;
		lex( token, this );
	}

	if(!parseColumnList( token, *select ) )
	{
		TODO
		return false;
	}

	if( token.is_from() )
	{
		if(!parseTableId( token, *select, false ))
		{
			TODO
			return false;
		}
	}
	else
	{
		TODO
		return false;
	}

	while( token.is_inner() || token.is_left() || 
				 token.is_right() || token.is_full() || 
				 token.is_join() )
	{
		if( !parseTableId( token, *select, true ))
		{
			TODO
		}
		else
		{
			TODO
			return false;
		}
	}

	if( token.is_where() )
	{
		lex( token, this );
		Expr * expr;
		if(!parseExpr( &expr, et, STR::GROUP_HAVING_ORDER_OFFSET_FETCH, token, 0, 0))
		{
			TODO
			return false;
		}
	}

	if( token.is_group())
	{
		lex(token, this );
		if( !token.is_by())
		{
			TODO
			return false;
		}

		if(!parseGroupColumns(token, *select ))
		{
			TODO
			return false;
		}
	}

	if( token.is_having())
	{
		Expr * expr;
		if(!parseExpr( &expr, et, STR::ORDER_OFFSET_FETCH, token, 0, 0))
		{
			TODO
			return false;
		}
	}

	if( token.is_order())
	{
			TODO
	}

	if( token.is_offset())
	{
			TODO
	}

	if(token.is_fetch())
	{
			TODO
	}

	// Push the terminating token back onto the stack
	lookahead = std::move( token );

	return true;
}

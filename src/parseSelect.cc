#include "parser.h"
#include <map>

using namespace	std;


/**
Syntax:

	SELECT 
  [DISTINCT] column_list
	FROM table-expr {[INNER | LEFT | RIGHT | FULL] JOIN table-expr ON join_condition}
	WHERE filter_condition
	[GROUP BY group_columns]
	[HAVING group_filter_condition]
	[ORDER BY sort_columns]
	[OFFSET skip_rows ROWS]
	[FETCH FIRST limit_rows ROWS ONLY]
  [USING reserved-word-mappings] 

column_list
    *
    select-column-list ',' select-column
    select-column

select-column
		expr
		expr as name

table-expr
		name 
		name [as] alias
    ( expr ) [as] name

joins
    joins join
		join

join
    join table [as name] [on condition]
    left join table [as name] [on condition]
    right join table [as name] [on condition]
    outer join table [as name] [on condition]

group-columns
	group-columns , expr
	expr

filter_condition
    expr

group_filter_condition
    expr

sort_columns
		sort_columns , sort_column
		sort_column

sort_column
		name
		name asc
		name dsc

reserverd-word-mappings
	reserverd-word-mappings , name = reserversed-word
	name = reservered-word

skip_rows
	expr

limit_rows
	expr

*/

inline bool isSelectReservedWord( const Token & token )
{
	const char * lexium = token.idLexium();

	switch( *lexium )
	{
	default:	return false;

	case 'a': return strncmp( lexium, "as", 2 ) == 0 || 
									 strncmp( lexium, "asc", 3 ) == 0;
	case 'b':	return strncmp( lexium, "by", 2 ) == 0;
	case 'd':	return strncmp( lexium, "dsc", 3 ) == 0 || 
									 strncmp( lexium, "distinct", 8 ) == 0;
	case 'f':	return strncmp( lexium, "fetch", 5 ) == 0 ||
									 strncmp( lexium, "first", 5 ) == 0 ||
									 strncmp( lexium, "from", 4 ) == 0 ||
									 strncmp( lexium, "full", 4 ) == 0;
	case 'g':	return strncmp( lexium, "group", 5 ) == 0 ;
	case 'h':	return strncmp( lexium, "having", 6 ) == 0;
	case 'i':	return strncmp( lexium, "inner", 5 ) == 0;
	case 'j':	return strncmp( lexium, "join", 4 ) == 0;
	case 'l':	return strncmp( lexium, "left", 4 ) == 0;
	case 'o':	return strncmp( lexium, "offset", 6 ) == 0 ||
									 strncmp( lexium, "on", 2 ) == 0 ||
									 strncmp( lexium, "only", 4 ) == 0 ||
									 strncmp( lexium, "order", 5 ) == 0;
	case 'r':	return strncmp( lexium, "right", 5 ) == 0 || 
									 strncmp( lexium, "rows", 4 ) == 0;
	case 'w':	return strncmp( lexium, "where", 5 ) == 0;
	}
}

// assign-list
// 	assign-list , name = reserversed-word
// 	name = reservered-word
//
bool Parser::parseIdMapping( map<string,string> & mapping ) 
{
PENTER
	while(true)
	{
		Token token;
		lex( token, this );

		if( token.isId() )
		{
			lex( token, this );
			if( token.id() == ID::EQ )
			{
				TODO
			}
			else
			{
				TODO
			}

			lex( token, this );
			if( token.isId() && isSelectReservedWord( token ) )
			{
				TODO
			}
		}
	}

	return false;
}

// group-columns
// 	group-columns , expr
// 	expr
// 
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

// sort_columns
// 		sort_columns , sort_column
// 		sort_column
// 
// sort_column
// 		name
// 		name asc
// 		name dsc
// 
bool Parser::parseSortByColumns( Token & token, Select * select )
{
PENTER
	TODO
	return false;
}

// group-columns
// 	group-columns , expr
// 	expr
//
bool Parser::parseGroupByColumns( Token & token, ETC et, Select * select )
{
PENTER
dumpToken( __FILE__, __LINE__, token );
	while( true )
	{
		lex( token, this );
dumpToken( __FILE__, __LINE__, token );

		Expr * expr;
		ETC etc = (ETC)((int)et | (int)ETC::COMMA);
		if(!parseExpr( &expr, etc, STR::HAVING_ORDER_OFFSET_FETCH, token, 0, 0))
		{
			TODO
		}
		else
		{
dumpToken( __FILE__, __LINE__, token );
			if( token.id() == ID::COMMA )
			{
// todo
			}
			else
			{
// todo
				return true;
			}
		}
	}

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

		if(!parseGroupByColumns(token, et, *select ))
		{
			TODO // get group by columns
			return false;
		}
	}

	if( token.is_having())
	{
		Expr * expr;
		lex(token, this );
		if(!parseExpr( &expr, et, STR::ORDER_OFFSET_FETCH, token, 0, 0))
		{
			TODO
			return false;
		}
	}

	if( token.is_order())
	{
			TODO // get sort by columns
	}

	if( token.is_offset())
	{
			TODO // get expr
	}

	if(token.is_fetch())
	{
			TODO // get expr
	}

	// Push the terminating token back onto the stack
	lookahead = std::move( token );

	return true;
}

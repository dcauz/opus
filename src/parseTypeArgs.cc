#include "parser.h"

/* template arguments in the instanitiation of a template class/interface/union/relation and the type of 
 * extend and implement clauses of a definition.
 *
 * templateArgs :
 *     templateArgs , templateArg
 *     templateArg
 * templateArg :
 *     type_name
 *     type_name < templateArgs >
 *     expr
 *
 * terminated by tokens
 *		;
 *		{
 *		implement
 */

bool Parser::parseTypeArgs( std::vector<TemplateArg *> ** typeArgs, bool termByGT )
{
PENTER
	Token token;

	std::string pname;

	while( true )
	{
		lex( token, this );

dumpToken( __FILE__, __LINE__, token );

		if( token.id() == ID::SCOLON )
		{
dumpToken( __FILE__, __LINE__, token );
			lookahead = std::move(token);
			return true;
		}
		else if( token.id() == ID::LBRACE ) // {
		{
dumpToken( __FILE__, __LINE__, token );
			lookahead = std::move(token);
			return true;
		}
		else if( token.is_implement() )
		{
dumpToken( __FILE__, __LINE__, token );
			lookahead = std::move(token);
			return true;
		}
		else if( token.id() == ID::COMMA )
		{
dumpToken( __FILE__, __LINE__, token );
			// TODO : create and push template arg
		}
		else if( token.isId() || token.isType() )
		{
dumpToken( __FILE__, __LINE__, token );
			pname = token.idLexium();
		}
		else if( token.id() == ID::LT )
		{
dumpToken( __FILE__, __LINE__, token );
			std::vector<TemplateArg *> * innerArgs;
			if( !parseTypeArgs( &innerArgs, true ))
			{
				TODO
			}
		}
		else if( token.id() == ID::GT && termByGT )
		{
dumpToken( __FILE__, __LINE__, token );
			return true;
		}
		else
		{
			Expr * expr;
			if( !parseExpr( &expr, ETC::COMMA_OR_GT, STR::NOT_IN_SELECT, token, 0, 0 ))
			{
				dumpToken( __FILE__, __LINE__, token );
				TODO
			}
		}
	}
}

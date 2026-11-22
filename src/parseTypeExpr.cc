#include "parser.h"


/**
 * typeExpr
 *   typeName tempArgs typeSuffix funcArgs
 *   typeName tempArgs typeSuffix 
 *   typeName tempArgs funcArgs
 *   typeName tempArgs 
 *   typeName typeSuffix funcArgs
 *   typeName typeSuffix 
 *   typeName funcArgs
 *   typeName 
 * 
 * funcArgs
 *  : ( arglist )
 *  ()
 *
 * argList
 *   : argList ',' paramType
 *   | paramType
 * 
 * paramType
 *   : typeExpr paramName
 *   | typeExpr
 *
 * typeSuffix
 *   : *       MUL   (unique ptr)
 *   | **      EXP   (shared ptr)
 *   | +       ADD   (weak ptr)
 *   | arrDims
 *
 *   | * &
 *   | ** &
 *   | + &
 *   | arrDims &
 *   | &       BAND
 *
 *   | ? * &
 *   | ? ** &
 *   | ? + &
 *   | ? arrDims &
 *   | ? &
 *   | ?       QUEST
 *   
 * arrDim
 *   : arrDims arrDim
 *   | arrDim
 * 
 * arrDim
 *   : [ ]
 *   | [ exprList ]
 *
 * exprList
 *   : exprList , expr
 *   | expr
 * 
 * tempArgs
 *   : < typeExprList >
 * 
 * typeExprList
 *   : typeExprList , typeExpr
 *   | typeExpr
 * 
 * contexts  
 *   - variable / function definition  (must be followed by ID)
 *   - class extend / implement        (must be followed by ; or { )
 *   - ctor call                       (must be followed by ( )
 * 
 */
bool Parser::parseTypeExpr( Token & token, std::vector<TemplateArg *> ** typeArgs, ETC et )
{
PENTER
	Token type;

	bool isUPtr = false;
	bool isSPtr = false;
	bool isWPtr = false;
	bool isRef  = false;
	bool hasVoid= false;

	while( true )
	{
		if( token.isType() )
		{
			type = std::move(token);
		}
		if( token.id() == ID::SCOLON )
		{
			if( (int) et | (int)ETC::SCOLON )
				return true;
			else
				TODO
		}
		else if( token.id() == ID::LBRACE )
		{
			if( (int) et | (int)ETC::RBRACE )
				return true;
			else
				TODO
		}
		else if( token.id() == ID::LPAREN && ((int) et | (int)ETC::RPAREN ) )
		{
			pushLookahead(token);
			return true;
		}
		else if( token.id() == ID::COMMA )
		{
			if( (int) et | (int)ETC::COMMA )
			{
				// todo: add type arg
				return true;
			}
			else
				TODO
		}
		else if( token.id() == ID::GT )
		{
			if( (int)et | (int)ETC::GT )
				return true;
			else
				TODO
		}
		else if( token.id() == ID::SRGHT ) 
		{
			if((int)et | (int)ETC::GT)
			{
				Token gt(token.line(),token.column(), ID::GT );
				pushLookahead( gt );
				return true;
			}
			else
				TODO
		}
		else if( token.id() == ID::LT )
		{
			std::vector<TemplateArg *> * innerArgs;
			while(true)
			{
				lex(token);
				if( !parseTypeExpr( token, &innerArgs, ETC::COMMA_GT ))
				{
					TODO
				}

				// todo: add param
				if( token.id() == ID::GT )
					break;
			}
		}
		else if( token.id() == ID::QUEST )
		{
			hasVoid = true;
			TODO
		}
		else if( token.id() == ID::MUL )
		{
			isUPtr = true;
			TODO
		}
		else if( token.id() == ID::BAND )
		{
			isRef = true;
			TODO
		}
		else if( token.id() == ID::EXP )
		{
			isSPtr = true;
			TODO
		}
		else if( token.id() == ID::ADD )
		{
			isWPtr = true;
			TODO
		}
		else if( token.id() == ID::LBRACKET )
		{
			while(true)
			{
				lex(token);
				Expr * dim;
				if( !parseExpr( &dim, ETC::COMMA_GT, STR::NONE, token, 0, 0 ))
				{
					TODO
				}

				// todo: add param
				if( token.id() == ID::GT )
					break;
			}
			TODO
		}
		else if( token.id() == ID::RBRACKET )
		{
			if( (int)et | (int)ETC::RBRACKET )
			{
				TODO
			}
			else
				TODO
		}
		else
		{
			Expr * expr;
			if( !parseExpr( &expr, et, STR::NONE, token, 0, 0 ))
			{
				dumpToken( __FILE__, __LINE__, token );
				TODO
			}
			// todo: add expr
		}
	}
}


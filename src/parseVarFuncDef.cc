#include "parser.h"

#include <iostream>

//  variableDef: modifiers* type optPointer optArrays optPointer optRef id  optInit ;
//  funcation:   modifiers* type optPointer optArrays optPointer optRef id ( optParams optDotDotDot ) { func-body }
//
//  arrays
//   one or more of
//   []
//   [ expr ]
//   [ expr-list ]
// 
// pointer
// 	one of
// 	   * ^ #
//
// ref
// 	   &
//
// init
//     = expr
//
// params
//     params , parm
//     parm
//
// parm
//     variableDef
//
// dotDotDot
//     ...
//
bool Parser::parseVarFuncDef( Token & token, VarDef ** varDef, Executable ** execDef )
{
PENTER
	int typeId;

	enum State
	{
		start,

		modSeen,
		typeSeen,
		ptrSeen,
		arrayOpenSeen,
		arrayCloseSeen,
		arrayPtrSeen,
		refSeen,
		idSeen,
		assSeen,
        exprSeen,

		lParenSeen,

		pModSeen,
		pTypeSeen,
		pPtrSeen,
		pArrayOpenSeen,
		pArrayCloseSeen,
		pArrayPtrSeen,
		pRefSeen,
		pIdSeen,
		pAssSeen,
        pExprSeen,

		dotDotDotSeen,

		rParenSeen,
	} state = start;

	std::string id;
	Token	type;
	Token	name;
	unsigned modifiers = 0;
	ID ptr = ID::NIL;
	ID aPtr = ID::NIL;
	bool	hasRef = false;

	Token	pType;
	Token	pName;
	unsigned pModifiers = 0;
	ID pPtr = ID::NIL;
	ID paPtr = ID::NIL;
	bool	pHasRef = false;

	while(true)
	{
		switch(state)
		{
		case start:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.isType() )
			{
				type = std::move(token);
				state = typeSeen;
			}
			else if( token.isModifier())
			{
				state = modSeen;
				modifiers |= static_cast<unsigned int>(token.id());
			}
			else
				TODO
			break;

		case modSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// modifer or type
			TODO
			break;

		case typeSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.isId())
			{
				name = std::move(token);
				state = idSeen;
			}
			else if( token.id() == ID::LBRACK )
				state = arrayOpenSeen;
			else if( token.id() == ID::QUEST )
			{
				hasRef = true;
				state = refSeen;
			}
			else if( token.isPointer() )
			{
				ptr = token.id();
				state = ptrSeen;
			}
			else
				TODO
			break;

		case ptrSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// lbracket ref id
			TODO
			break;

		case arrayOpenSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.id() == ID::RBRACK )
				state = arrayCloseSeen;
			else
			{
				// get dims
				TODO
			}
			break;

		case arrayCloseSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.isId() )
				state = idSeen;
			else if( token.id() == ID::QUEST )
			{
				hasRef = true;
				state = refSeen;
			}
			else if( token.isPointer() )
			{
				state = arrayPtrSeen;
				aPtr = token.id();
			}
			else
				TODO
			break;

		case arrayPtrSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.isId() )
				state = idSeen;
			else if( token.id() == ID::QUEST )
			{
				hasRef = true;
				state = refSeen;
			}
			else
				TODO
			break;

		case refSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.isId() )
				state = idSeen;
			else
				TODO
			break;

		case idSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.id() == ID::LPAREN )
				state = lParenSeen;
			else if( token.id() == ID::ASSIGN )
				state = assSeen;
			else if( token.id() == ID::SCOLON )
			{
				TODO
			}
			else
				TODO
			break;

		case assSeen:
		{
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
 			Expr * expr;
			if( !parseExpr( & expr, token ) || token.id() != ID::SCOLON )
			{
				TODO
			}
			return true;
		}
        case exprSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
 			// ;
			TODO
			break;

		case lParenSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.isType() )
			{
				pType = std::move(token);
				state = pTypeSeen;
			}
			else if( token.isModifier())
			{
				state = pModSeen;
				pModifiers |= static_cast<unsigned>(token.id());
			}
			else
				TODO
			break;

		case pModSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.isType() )
			{
				pType = std::move(token);
				state = pTypeSeen;
			}
			else if( token.isModifier())
			{
				state = pModSeen;
				pModifiers |= static_cast<unsigned>(token.id());
			}
			else
				TODO
			break;

		case pTypeSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
 			// ptr lbracket id ref
			if( token.isId() )
			{
				pName = std::move(token);
				state = pIdSeen;
			}
			else if( token.id() == ID::LBRACK )
				state = pArrayOpenSeen;
			else if( token.id() == ID::BAND )
				state = pRefSeen;
			else if( token.isPointer() )
			{
				state = pPtrSeen;
				pPtr = token.id();
			}
			else
				TODO
			break;

		case pPtrSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// lbracket ref id , ) ...
			TODO
			break;

		case pArrayOpenSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.id() == ID::RBRACK )
			{
				state = pArrayCloseSeen;
			}
			else 
			{
				// get dims
				TODO
			}
			break;

		case pArrayCloseSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			if( token.isId() )
				state = pIdSeen;
			else if( token.id() == ID::BAND )
			{
				pHasRef = true;
				state = pRefSeen;
			}
			else if( token.isPointer() )
			{
				state = pArrayPtrSeen;
				paPtr = token.id();
			}
			else
				TODO
			break;

		case pArrayPtrSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// ref id , ) ...
			TODO
			break;

		case pRefSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// id , ) ...
			TODO
			break;

		case pIdSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// todo: process param
			if( token.id() == ID::COMMA )
				state = lParenSeen;
			else if( token.id() == ID::RPAREN )
				state = rParenSeen;
			else if( token.id() == ID::DOT_DOT_DOT )
				state = dotDotDotSeen;
			else
				TODO
			break;

		case pAssSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// expr
			TODO
			break;

        case pExprSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// id , ) ...
			TODO
			break;

		case dotDotDotSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// )
			TODO
			break;

		case rParenSeen:
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ ); fflush(stdout);
			// func-modifier {
			if( token.id() == ID::LBRACE )
			{
				Block * body;
				return parseBlock( & body );	
			}
			else
				TODO
			break;
		}

		lex( token, this );
	}

	return false;
}

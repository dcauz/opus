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
	int ptr = 0;
	int aPtr = 0;
	bool	hasRef = false;

	Token	pType;
	Token	pName;
	unsigned pModifiers = 0;
	int pPtr = 0;
	int paPtr = 0;
	bool	pHasRef = false;

	while(true)
	{
		switch(state)
		{
		case start:
			if( token.isType() )
			{
				type = token;
				state = typeSeen;
			}
			else if( token.isModifier())
			{
				state = modSeen;
				modifiers |= token.id;
			}
			else
				TODO
			break;

		case modSeen:
			// modifer or type
			TODO
			break;

		case typeSeen:
			if( token.id == ID )
			{
				name = token;
				state = idSeen;
			}
			else if( token.id == '[' )
				state = arrayOpenSeen;
			else if( token.id == '&' )
			{
				hasRef = true;
				state = refSeen;
			}
			else if( token.isPointer() )
			{
				ptr = token.id;
				state = ptrSeen;
			}
			else
				TODO
			break;

		case ptrSeen:
			// lbracket ref id
			TODO
			break;

		case arrayOpenSeen:
			if( token.id == ']' )
				state = arrayCloseSeen;
			else
			{
				// get dims
				TODO
			}
			break;

		case arrayCloseSeen:
			if( token.id == ID )
				state = idSeen;
			else if( token.id == '&' )
			{
				hasRef = true;
				state = refSeen;
			}
			else if( token.isPointer() )
			{
				state = arrayPtrSeen;
				aPtr = token.id;
			}
			else
				TODO
			break;

		case arrayPtrSeen:
			if( token.id == ID )
				state = idSeen;
			else if( token.id == '&' )
			{
				hasRef = true;
				state = refSeen;
			}
			else
				TODO
			break;

		case refSeen:
			if( token.id == ID )
				state = idSeen;
			else
				TODO
			break;

		case idSeen:
			if( token.id == '(' )
				state = lParenSeen;
			else if( token.id == '=' )
				state = assSeen;
			else if( token.id == ';' )
			{
				TODO
			}
			else
				TODO
			break;

		case assSeen:
		{
 			Expr * expr;
			if( !parseExpr( & expr, token ) || token.id != ';' )
			{
				TODO
			}
			return true;
		}
        case exprSeen:
 			// ;
			TODO
			break;

		case lParenSeen:
			if( token.isType() )
			{
				pType = token;
				state = pTypeSeen;
			}
			else if( token.isModifier())
			{
				state = pModSeen;
				pModifiers |= token.id;
			}
			else
				TODO
			break;

		case pModSeen:
			if( token.isType() )
			{
				pType = token;
				state = pTypeSeen;
			}
			else if( token.isModifier())
			{
				state = pModSeen;
				pModifiers |= token.id;
			}
			else
				TODO
			break;

		case pTypeSeen:
 			// ptr lbracket id ref
			if( token.id == ID )
			{
				pName = token;
				state = pIdSeen;
			}
			else if( token.id == '[' )
				state = pArrayOpenSeen;
			else if( token.id == '&' )
				state = pRefSeen;
			else if( token.isPointer() )
			{
				state = pPtrSeen;
				pPtr = token.id;
			}
			else
				TODO
			break;

		case pPtrSeen:
			// lbracket ref id , ) ...
			TODO
			break;

		case pArrayOpenSeen:
			if( token.id == ']' )
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
			if( token.id == ID )
				state = pIdSeen;
			else if( token.id == '&' )
			{
				pHasRef = true;
				state = pRefSeen;
			}
			else if( token.isPointer() )
			{
				state = pArrayPtrSeen;
				paPtr = token.id;
			}
			else
				TODO
			break;

		case pArrayPtrSeen:
			// ref id , ) ...
			TODO
			break;

		case pRefSeen:
			// id , ) ...
			TODO
			break;

		case pIdSeen:
			// todo: process param
			if( token.id == ',' )
				state = lParenSeen;
			else if( token.id == ')' )
				state = rParenSeen;
			else if( token.id == DOT_DOT_DOT )
				state = dotDotDotSeen;
			else
				TODO
			break;

		case pAssSeen:
			// expr
			TODO
			break;

        case pExprSeen:
			// id , ) ...
			TODO
			break;

		case dotDotDotSeen:
			// )
			TODO
			break;

		case rParenSeen:
			// func-modifier {
			if( token.id == '{' )
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

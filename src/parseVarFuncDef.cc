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
bool Parser::parseVarFuncDef( Token & token, VarDef **, Executable ** )
{
PENTER
	//int typeId;

	enum State
	{
		start           = 0,

		modSeen         = 1,
		typeSeen        = 2,
		ptrSeen         = 3,
		arrayOpenSeen   = 4,
		arrayCloseSeen  = 5,
		arrayPtrSeen    = 6,
		refSeen         = 7,
		idSeen          = 8,
		assSeen         = 9,
        exprSeen        = 10,

		lParenSeen      = 11,

		pModSeen        = 12,
		pTypeSeen       = 13,
		pPtrSeen        = 14,
		pArrayOpenSeen  = 15,
		pArrayCloseSeen = 16,
		pArrayPtrSeen   = 17,
		pRefSeen        = 18,
		pIdSeen         = 19,
		pAssSeen        = 20,
        pExprSeen       = 21,

		dotDotDotSeen   = 22,

		rParenSeen      = 23,
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
	//bool	pHasPtr = false;

	Expr 	* dim;

	while(true)
	{
printf( "%s:%d VF START state %d\n", __FILE__, __LINE__, state );
dumpToken( __FILE__, __LINE__, token );
		switch(state)
		{
		case start:
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
			// modifer or type
			TODO
			break;

		case typeSeen:
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
			if( token.isId())
			{
				name = std::move(token);
				state = idSeen;
			}
			else
				TODO
			break;

		case arrayOpenSeen:
			if( token.id() == ID::RBRACK )
				state = arrayCloseSeen;
			else
			{
				// get dims
				if(!parseExpr( &dim, ET::COMMA_OR_RBRACK, token, 0, 0 ))
					TODO
				state = arrayCloseSeen;
			}
			break;

		case arrayCloseSeen:
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
			else if( token.id() == ID::LBRACK )
				state = arrayOpenSeen;
			else
				TODO
			break;

		case arrayPtrSeen:
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
			if( token.isId() )
				state = idSeen;
			else
				TODO
			break;

		case idSeen:
			if( token.id() == ID::LPAREN )
				state = lParenSeen;
			else if( token.id() == ID::ASSIGN )
				state = assSeen;
			else if( token.id() == ID::SCOLON )
				return true;
			else
				TODO
			break;

		case assSeen:
		{
 			Expr * expr;
			if( !parseExpr( &expr, ET::SCOLON, token, 0, 0 ) || token.id() != ID::SCOLON )
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
			// lbracket ref id , ) ...
			TODO
			break;

		case pArrayOpenSeen:
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
			// ref id , ) ...
			TODO
			break;

		case pRefSeen:
			// id , ) ...
			TODO
			break;

		case pIdSeen:
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
			if( token.id() == ID::LBRACE )
			{
				Block * body;
				return parseBlock( & body );	
			}
			else
				TODO
			break;
		}

printf( "\n%s:%d VF UPDATED state %d\n\n", __FILE__, __LINE__, state );
		lex( token, this );
	}

	return false;
}

#include "parser.h"
#include "token.h"
#include <stdexcept>


/**
Type syntax:

type
	: AUTO
	| AUTO modifiers
	| builtInType
	| builtInType modifiers
	| collectionType
	| collectionType modifiers
	| OBJECT
	| OBJECT modifiers
	| TYPE_NAME
	| TYPE_NAME modifiers
	| TYPE_NAME '<' exprTypeList '>'
	| TYPE_NAME '<' exprTypeList '>' modifiers

modifiers
	: pointerMod
	| pointerMod dims
	| pointerMod dims pointerMod
	| dims pointerMod

pointerMod
	: '?'
	| '*'
	| '&'
	| '#'
	| dims

dims
	: '[' ']'
	| '[ dimList ']'

dimList
	: dimList ',' expr
	| expr
	| ','

builtInType
	: BOOL
	| FLOAT32
	| FLOAT64
	| INT8
	| INT8C
	| INT16
	| INT16C
	| INT32
	| INT32C
	| INT64
	| INT64C
	| UINT8
	| UINT8C
	| UINT16
	| UINT16C
	| UINT32
	| UINT32C
	| UINT64
	| UINT64C
	| REGEX
	| STRING
	| DATE
	| DATETIME
	| TIME
	| VOID
	| N
	| Z
	| Q
	| R

collectionType
    : SET '<' type '>'
    | MSET '<' type '>'
    | LIST '<' type '>'
    | DLIST '<' type '>'
    | STACK '<' type '>'
    | QUEUE '<' type '>'
    | PQUEUE '<' type '>'
    | DQUEUE '<' type '>'
    | C '<' type '>'
    | Q '<' type '>'
    | DURATION '<' expr '>'

exprTypeList
    : exprTypeList ',' exprType
    | exprType

exprType
    : expr
    | type
*/

bool Parser::parseType( unsigned & declarators, Type ** type )
{
PENTER
	Token	lval;
	lex( lval, this );

	while( lval.isModifier() )
	{
		declarators += static_cast<unsigned>(lval.id());
		lex( lval, this );
	}

//	int baseType = lval.id;

	std::vector<up<Expr>>	dims;

	switch(lval.id())
	{
	default:
		// Not a type. Set lookahead 
		lookahead = std::move(lval);
		return false;

	case ID::AUTO:
	case ID::BOOL:

	case ID::DATE:
	case ID::DATETIME:

	case ID::FLOAT32:
	case ID::FLOAT64:
	case ID::FLOAT80:

	case ID::I0: case ID::I1: case ID::I2: case ID::I3: case ID::I4: 
	case ID::I5: case ID::I6: case ID::I7: case ID::I8: case ID::I9:
	case ID::I10:case ID::I11:case ID::I12:case ID::I13:case ID::I14:
	case ID::I15:case ID::I16:case ID::I17:case ID::I18:case ID::I19:
	case ID::I20:case ID::I21:case ID::I22:case ID::I23:case ID::I24:
	case ID::I25:case ID::I26:case ID::I27:case ID::I28:case ID::I29:
	case ID::I30:case ID::I31:case ID::I32:case ID::I64:case ID::I128:

	case ID::Z0: case ID::Z1: case ID::Z2: case ID::Z3: case ID::Z4: 
	case ID::Z5: case ID::Z6: case ID::Z7: case ID::Z8: case ID::Z9:
	case ID::Z10:case ID::Z11:case ID::Z12:case ID::Z13:case ID::Z14:
	case ID::Z15:case ID::Z16:case ID::Z17:case ID::Z18:case ID::Z19:
	case ID::Z20:case ID::Z21:case ID::Z22:case ID::Z23:case ID::Z24:
	case ID::Z25:case ID::Z26:case ID::Z27:case ID::Z28:case ID::Z29:
	case ID::Z30:case ID::Z31:case ID::Z32:case ID::Z64:case ID::Z128:

	case ID::U0: case ID::U1: case ID::U2: case ID::U3: case ID::U4: 
	case ID::U5: case ID::U6: case ID::U7: case ID::U8: case ID::U9:
	case ID::U10:case ID::U11:case ID::U12:case ID::U13:case ID::U14:
	case ID::U15:case ID::U16:case ID::U17:case ID::U18:case ID::U19:
	case ID::U20:case ID::U21:case ID::U22:case ID::U23:case ID::U24:
	case ID::U25:case ID::U26:case ID::U27:case ID::U28:case ID::U29:
	case ID::U30:case ID::U31:case ID::U32:case ID::U64:case ID::U128:

	case ID::N0: case ID::N1: case ID::N2: case ID::N3: case ID::N4: 
	case ID::N5: case ID::N6: case ID::N7: case ID::N8: case ID::N9:
	case ID::N10:case ID::N11:case ID::N12:case ID::N13:case ID::N14:
	case ID::N15:case ID::N16:case ID::N17:case ID::N18:case ID::N19:
	case ID::N20:case ID::N21:case ID::N22:case ID::N23:case ID::N24:
	case ID::N25:case ID::N26:case ID::N27:case ID::N28:case ID::N29:
	case ID::N30:case ID::N31:case ID::N32:case ID::N64:case ID::N128:

	case ID::N:
	case ID::OBJECT:
	case ID::R:
	case ID::REGEXP:
	case ID::STRING:
	case ID::TIME:
	case ID::VOID:
	case ID::Z:
		// no-op
		break;

	// Optional type parameters
	case ID::Q:
	case ID::TYPE_NAME:
		lex( lval, this );

		if( lval.id() == ID::LT )
		{
			TODO // check for type parameters
		}
		break;

	// Requires type parameters
	case ID::C:
	case ID::DLIST:
	case ID::DQUEUE:
	case ID::DURATION:
	case ID::LIST:
	case ID::MSET:
	case ID::QUEUE:
	case ID::SET:
	case ID::STACK:
		lex( lval, this );

		if( lval.id() == ID::LT )
		{
			TODO // ensure type parameters present
		}
		else
			throw std::runtime_error( "Parameterized type is not immediately "
				"followed by < character" );
		break;
	}

	Pointer	collectionPtr = NONE;
	Pointer	elementPtr = NONE;

	// Get modifiers and dims
	while(true)
	{
		lex( lval, this );

		switch(lval.id())
		{
		default:
			// we are done. Set lookahead to token
			TODO
			break;

		case ID::QUEST:
		case ID::MUL:
		case ID::BAND:
		case ID::WEAK:
			if(dims.size() == 0 )
			{
				if( collectionPtr == NONE )
					collectionPtr = static_cast<Pointer>(lval.id());
				else
				{
					TODO	// multiple pointer modifiers error
				}
			}
			else
			{
				if( elementPtr == NONE )
					elementPtr = static_cast<Pointer>(lval.id());
				else
				{
					TODO	// multiple pointer modifiers error
				}
			}
			break;

		case ID::LBRACK:
		{
			Expr * expr;
			int termToken;
			Token tt;
			if( parseExpr( &expr, tt ) && termToken == ']' )
				dims.push_back(up<Expr>(expr));
			else
			{
				TODO	// get dims
			}
			break;
		}
		}
	}

	return false;
}

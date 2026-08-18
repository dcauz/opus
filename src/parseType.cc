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
		declarators += lval.id;
		lex( lval, this );
	}

//	int baseType = lval.id;

	std::vector<up<Expr>>	dims;

	switch(lval.id)
	{
	default:
		// Not a type. Set lookahead 
		lookahead = lval;
		return false;

	case AUTO:
	case BOOL:

	case DATE:
	case DATETIME:

	case FLOAT32:
	case FLOAT64:
	case FLOAT80:

	case I0: case I1: case I2: case I3: case I4: case I5: case I6: case I7: case I8: case I9:
	case I10:case I11:case I12:case I13:case I14:case I15:case I16:case I17:case I18:case I19:
	case I20:case I21:case I22:case I23:case I24:case I25:case I26:case I27:case I28:case I29:
	case I30:case I31:case I32:case I64:

	case Z0: case Z1: case Z2: case Z3: case Z4: case Z5: case Z6: case Z7: case Z8: case Z9:
	case Z10:case Z11:case Z12:case Z13:case Z14:case Z15:case Z16:case Z17:case Z18:case Z19:
	case Z20:case Z21:case Z22:case Z23:case Z24:case Z25:case Z26:case Z27:case Z28:case Z29:
	case Z30:case Z31:case Z32:case Z64:

	case U0: case U1: case U2: case U3: case U4: case U5: case U6: case U7: case U8: case U9:
	case U10:case U11:case U12:case U13:case U14:case U15:case U16:case U17:case U18:case U19:
	case U20:case U21:case U22:case U23:case U24:case U25:case U26:case U27:case U28:case U29:
	case U30:case U31:case U32:case U64:

	case N0: case N1: case N2: case N3: case N4: case N5: case N6: case N7: case N8: case N9:
	case N10:case N11:case N12:case N13:case N14:case N15:case N16:case N17:case N18:case N19:
	case N20:case N21:case N22:case N23:case N24:case N25:case N26:case N27:case N28:case N29:
	case N30:case N31:case N32:case N64:

	case N:
	case OBJECT:
	case R:
	case REGEXP:
	case STRING:
	case TIME:
	case VOID:
	case Z:
		// no-op
		break;

	// Optional type parameters
	case Q:
	case TYPE_NAME:
		lex( lval, this );

		if( lval.id == '<' )
		{
			TODO // check for type parameters
		}
		break;

	// Requires type parameters
	case C:
	case DLIST:
	case DQUEUE:
	case DURATION:
	case LIST:
	case MSET:
	case QUEUE:
	case SET:
	case STACK:
		lex( lval, this );

		if( lval.id == '<' )
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

		switch(lval.id)
		{
		default:
			// we are done. Set lookahead to token
			TODO
			break;

		case '?':
		case '*':
		case '&':
		case '#':
			if(dims.size() == 0 )
			{
				if( collectionPtr == NONE )
					collectionPtr = static_cast<Pointer>(lval.id);
				else
				{
					TODO	// multiple pointer modifiers error
				}
			}
			else
			{
				if( elementPtr == NONE )
					elementPtr = static_cast<Pointer>(lval.id);
				else
				{
					TODO	// multiple pointer modifiers error
				}
			}
			break;

		case '[':
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

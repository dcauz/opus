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

	case id2ui(AUTO):
	case id2ui(BOOL):

	case id2ui(DATE):
	case id2ui(DATETIME):

	case id2ui(FLOAT32):
	case id2ui(FLOAT64):
	case id2ui(FLOAT80):

	case id2ui(I0): case id2ui(I1): case id2ui(I2): case id2ui(I3): case id2ui(I4): case id2ui(I5): case id2ui(I6): case id2ui(I7): case id2ui(I8): case id2ui(I9):
	case id2ui(I10):case id2ui(I11):case id2ui(I12):case id2ui(I13):case id2ui(I14):case id2ui(I15):case id2ui(I16):case id2ui(I17):case id2ui(I18):case id2ui(I19):
	case id2ui(I20):case id2ui(I21):case id2ui(I22):case id2ui(I23):case id2ui(I24):case id2ui(I25):case id2ui(I26):case id2ui(I27):case id2ui(I28):case id2ui(I29):
	case id2ui(I30):case id2ui(I31):case id2ui(I32):case id2ui(I64):

	case id2ui(Z0): case id2ui(Z1): case id2ui(Z2): case id2ui(Z3): case id2ui(Z4): case id2ui(Z5): case id2ui(Z6): case id2ui(Z7): case id2ui(Z8): case id2ui(Z9):
	case id2ui(Z10):case id2ui(Z11):case id2ui(Z12):case id2ui(Z13):case id2ui(Z14):case id2ui(Z15):case id2ui(Z16):case id2ui(Z17):case id2ui(Z18):case id2ui(Z19):
	case id2ui(Z20):case id2ui(Z21):case id2ui(Z22):case id2ui(Z23):case id2ui(Z24):case id2ui(Z25):case id2ui(Z26):case id2ui(Z27):case id2ui(Z28):case id2ui(Z29):
	case id2ui(Z30):case id2ui(Z31):case id2ui(Z32):case id2ui(Z64):

	case id2ui(U0): case id2ui(U1): case id2ui(U2): case id2ui(U3): case id2ui(U4): case id2ui(U5): case id2ui(U6): case id2ui(U7): case id2ui(U8): case id2ui(U9):
	case id2ui(U10):case id2ui(U11):case id2ui(U12):case id2ui(U13):case id2ui(U14):case id2ui(U15):case id2ui(U16):case id2ui(U17):case id2ui(U18):case id2ui(U19):
	case id2ui(U20):case id2ui(U21):case id2ui(U22):case id2ui(U23):case id2ui(U24):case id2ui(U25):case id2ui(U26):case id2ui(U27):case id2ui(U28):case id2ui(U29):
	case id2ui(U30):case id2ui(U31):case id2ui(U32):case id2ui(U64):

	case id2ui(N0): case id2ui(N1): case id2ui(N2): case id2ui(N3): case id2ui(N4): case id2ui(N5): case id2ui(N6): case id2ui(N7): case id2ui(N8): case id2ui(N9):
	case id2ui(N10):case id2ui(N11):case id2ui(N12):case id2ui(N13):case id2ui(N14):case id2ui(N15):case id2ui(N16):case id2ui(N17):case id2ui(N18):case id2ui(N19):
	case id2ui(N20):case id2ui(N21):case id2ui(N22):case id2ui(N23):case id2ui(N24):case id2ui(N25):case id2ui(N26):case id2ui(N27):case id2ui(N28):case id2ui(N29):
	case id2ui(N30):case id2ui(N31):case id2ui(N32):case id2ui(N64):

	case id2ui(N):
	case id2ui(OBJECT):
	case id2ui(R):
	case id2ui(REGEXP):
	case id2ui(STRING):
	case id2ui(TIME):
	case id2ui(VOID):
	case id2ui(Z):
		// no-op
		break;

	// Optional type parameters
	case id2ui(Q):
	case id2ui(TYPE_NAME):
		lex( lval, this );

		if( lval.id == '<' )
		{
			TODO // check for type parameters
		}
		break;

	// Requires type parameters
	case id2ui(C):
	case id2ui(DLIST):
	case id2ui(DQUEUE):
	case id2ui(DURATION):
	case id2ui(LIST):
	case id2ui(MSET):
	case id2ui(QUEUE):
	case id2ui(SET):
	case id2ui(STACK):
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

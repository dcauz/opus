#include "parser.h"
#include "token.h"
#include "auto.h"
#include "bool.h"
#include "date.h"
#include "datetime.h"
#include "float.h"
#include "object.h"
#include "regex.h"
#include "string.h"
#include "time.h"
#include "void.h"
#include <stdexcept>


/**
Type syntax:

type
	: declarators type_decl

type_decl
	: AUTO
	| AUTO modifiers
	| AUTO funcArgs 
	| builtInType
	| builtInType modifiers
	| builtInType funcArgs 
	| collectionType
	| collectionType modifiers
	| collectionType funcArgs 
	| OBJECT
	| OBJECT modifiers
	| OBJECT funcArgs 
	| TYPE_NAME
	| TYPE_NAME modifiers
	| TYPE_NAME funcArgs 
	| TYPE_NAME '<' exprTypeList '>'
	| TYPE_NAME '<' exprTypeList '>' funcArgs 
	| TYPE_NAME '<' exprTypeList '>' modifiers

modifiers
	: pointerMod
	| pointerMod dims
	| pointerMod dims pointerMod
	| dims pointerMod

pointerMod
	: ?				// voidable
	| *				// unique pointer
	| **			// shared pointer
	| +				// weak pointer
	| dims		// array dimensions
	: ? &			// voidable
	| * &			// unique pointer
	| ** &		// shared pointer
	| + &			// weak pointer
	| dims &	// array dimensions
	| &				// reference

funcArgs
	: ( arglist )
	()

argList
	: argList ',' paramType
	| paramType

paramType
	: type paramName
	| type

dims
	: dims '[' ']'
	| dims '[ dimList ']'
	| '[' ']'
	| '[ dimList ']'

dimList
	: dimList ',' expr
	| expr
	| ','

builtInType
	: BOOL
	| Fn
	| I8
	| N8
	| Un
	| Zn
	| REGEX
	| STRING
	| DATE
	| DATETIME
	| TIME
	| VOID
	| N
	| Z
	| Q
	| DURATION 
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

exprTypeList
	: exprTypeList ',' exprType
	| exprType

exprType
	: expr
	| type


contexts
	- variable / function definition  (must be followed by ID)
	- class extend / implement        (must be followed by ; or { )
	- ctor call                       (must be followed by ( )
*/

bool Parser::parseType( Token & token, Type ** type, ETC et )
{
PENTER
		int declarators = 0;

		bool	hasVoid = false; 
		bool	isUPtr = false;
		bool	isRef = false;
		bool	isSPtr = false;
		bool	isWPtr = false;

		lex( token );
		while( token.isModifier() )
		{
			declarators += static_cast<unsigned>(token.id());
			lex( token );
		}

		std::vector<up<Expr>>	dims;

dumpToken( __FILE__, __LINE__, token );
		switch(token.id())
		{
		default:
			if( token.isId())
			{
TODO
				break;
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
				break;
		}
		case ID::LT:
			TODO
			break;
		case ID::QUEST:
			TODO
			break;
		case ID::MUL:
			TODO
			break;
		case ID::EXP:
			TODO
			break;
		case ID::ADD:
			TODO
			break;
		case ID::BAND:
			TODO
			break;
		case ID::LPAREN:
			TODO
			break;
		case ID::RPAREN:
			TODO
			break;
		case ID::LBRACKET:
			TODO
			break;
		case ID::RBRACKET:
			TODO
			break;

		case ID::COMMA:
    	if( (int) et | (int)ETC::COMMA )
      {
        // todo: add type arg
        return true;
      }
      else
        TODO
			break;
		case ID::GT:
      if( (int)et | (int)ETC::GT )
			{
        return true;
			}
      else
        TODO
			break;
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
      Type * innerArgs;
      while(true)
      {
        lex(token);
        if( !parseType( token, &innerArgs, ETC::COMMA_GT ))
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

		case ID::AUTO:	*type = new AutoType();		break;
		case ID::BOOL:	*type = new BoolType();		break;

		case ID::DATE:*type = new DateType();			break;
		case ID::DATETIME:*type = new DatetimeType();	break;

		case ID::F32:	*type = new Float32Type();	break;
		case ID::F64:	*type = new Float64Type();	break;
		case ID::F80:	*type = new Float80Type();	break;

		case ID::I0: 	*type = new InType<0>();   break;
		case ID::I1: 	*type = new InType<1>();   break;
		case ID::I2: 	*type = new InType<2>();   break;
		case ID::I3: 	*type = new InType<3>();   break;
		case ID::I4: 	*type = new InType<4>();   break;
		case ID::I5: 	*type = new InType<5>();   break;
		case ID::I6: 	*type = new InType<6>();   break;
		case ID::I7: 	*type = new InType<7>();   break;
		case ID::I8: 	*type = new InType<8>();   break;
		case ID::I9:	*type = new InType<9>();   break;
		case ID::I10:	*type = new InType<10>();  break;
		case ID::I11:	*type = new InType<11>();  break;
		case ID::I12:	*type = new InType<12>();  break;
		case ID::I13:	*type = new InType<13>();  break;
		case ID::I14:	*type = new InType<14>();  break;
		case ID::I15:	*type = new InType<15>();  break;
		case ID::I16:	*type = new InType<16>();  break;
		case ID::I17:	*type = new InType<17>();  break;
		case ID::I18:	*type = new InType<18>();  break;
		case ID::I19:	*type = new InType<19>();  break;
		case ID::I20:	*type = new InType<20>();  break;
		case ID::I21:	*type = new InType<21>();  break;
		case ID::I22:	*type = new InType<22>();  break;
		case ID::I23:	*type = new InType<23>();  break;
		case ID::I24:	*type = new InType<24>();  break;
		case ID::I25:	*type = new InType<25>();  break;
		case ID::I26:	*type = new InType<26>();  break;
		case ID::I27:	*type = new InType<27>();  break;
		case ID::I28:	*type = new InType<28>();  break;
		case ID::I29:	*type = new InType<29>();  break;
		case ID::I30:	*type = new InType<30>();  break;
		case ID::I31:	*type = new InType<31>();  break;
		case ID::I32:	*type = new InType<32>();  break;
		case ID::I64:	*type = new InType<64>();  break;
		case ID::I128:	*type = new InType<128>(); break;

		case ID::N0: 	*type = new NnType<0>();   break;
		case ID::N1: 	*type = new NnType<1>();   break;
		case ID::N2: 	*type = new NnType<2>();   break;
		case ID::N3: 	*type = new NnType<3>();   break;
		case ID::N4: 	*type = new NnType<4>();   break;
		case ID::N5: 	*type = new NnType<5>();   break;
		case ID::N6: 	*type = new NnType<6>();   break;
		case ID::N7: 	*type = new NnType<7>();   break;
		case ID::N8: 	*type = new NnType<8>();   break;
		case ID::N9:	*type = new NnType<9>();   break;
		case ID::N10:	*type = new NnType<10>();  break;
		case ID::N11:	*type = new NnType<11>();  break;
		case ID::N12:	*type = new NnType<12>();  break;
		case ID::N13:	*type = new NnType<13>();  break;
		case ID::N14:	*type = new NnType<14>();  break;
		case ID::N15:	*type = new NnType<15>();  break;
		case ID::N16:	*type = new NnType<16>();  break;
		case ID::N17:	*type = new NnType<17>();  break;
		case ID::N18:	*type = new NnType<18>();  break;
		case ID::N19:	*type = new NnType<19>();  break;
		case ID::N20:	*type = new NnType<20>();  break;
		case ID::N21:	*type = new NnType<21>();  break;
		case ID::N22:	*type = new NnType<22>();  break;
		case ID::N23:	*type = new NnType<23>();  break;
		case ID::N24:	*type = new NnType<24>();  break;
		case ID::N25:	*type = new NnType<25>();  break;
		case ID::N26:	*type = new NnType<26>();  break;
		case ID::N27:	*type = new NnType<27>();  break;
		case ID::N28:	*type = new NnType<28>();  break;
		case ID::N29:	*type = new NnType<29>();  break;
		case ID::N30:	*type = new NnType<30>();  break;
		case ID::N31:	*type = new NnType<31>();  break;
		case ID::N32:	*type = new NnType<32>();  break;
		case ID::N64:	*type = new NnType<64>();  break;
		case ID::N128:	*type = new NnType<128>(); break;
	
		case ID::U0: 	*type = new UnType<0>();   break;
		case ID::U1: 	*type = new UnType<1>();   break;
		case ID::U2: 	*type = new UnType<2>();   break;
		case ID::U3: 	*type = new UnType<3>();   break;
		case ID::U4: 	*type = new UnType<4>();   break;
		case ID::U5: 	*type = new UnType<5>();   break;
		case ID::U6: 	*type = new UnType<6>();   break;
		case ID::U7: 	*type = new UnType<7>();   break;
		case ID::U8: 	*type = new UnType<8>();   break;
		case ID::U9:	*type = new UnType<9>();   break;
		case ID::U10:	*type = new UnType<10>();  break;
		case ID::U11:	*type = new UnType<11>();  break;
		case ID::U12:	*type = new UnType<12>();  break;
		case ID::U13:	*type = new UnType<13>();  break;
		case ID::U14:	*type = new UnType<14>();  break;
		case ID::U15:	*type = new UnType<15>();  break;
		case ID::U16:	*type = new UnType<16>();  break;
		case ID::U17:	*type = new UnType<17>();  break;
		case ID::U18:	*type = new UnType<18>();  break;
		case ID::U19:	*type = new UnType<19>();  break;
		case ID::U20:	*type = new UnType<20>();  break;
		case ID::U21:	*type = new UnType<21>();  break;
		case ID::U22:	*type = new UnType<22>();  break;
		case ID::U23:	*type = new UnType<23>();  break;
		case ID::U24:	*type = new UnType<24>();  break;
		case ID::U25:	*type = new UnType<25>();  break;
		case ID::U26:	*type = new UnType<26>();  break;
		case ID::U27:	*type = new UnType<27>();  break;
		case ID::U28:	*type = new UnType<28>();  break;
		case ID::U29:	*type = new UnType<29>();  break;
		case ID::U30:	*type = new UnType<30>();  break;
		case ID::U31:	*type = new UnType<31>();  break;
		case ID::U32:	*type = new UnType<32>();  break;
		case ID::U64:	*type = new UnType<64>();  break;
		case ID::U128:	*type = new UnType<128>(); break;
	
		case ID::Z0:		*type = new ZnType<0>();		break;
		case ID::Z1:		*type = new ZnType<1>();		break;
		case ID::Z2:		*type = new ZnType<2>();		break;
		case ID::Z3:		*type = new ZnType<3>();		break;
		case ID::Z4:		*type = new ZnType<4>();		break;
		case ID::Z5:		*type = new ZnType<5>();		break;
		case ID::Z6:		*type = new ZnType<6>();		break;
		case ID::Z7:		*type = new ZnType<7>();		break;
		case ID::Z8:		*type = new ZnType<8>();		break;
		case ID::Z9:		*type = new ZnType<9>();		break;
		case ID::Z10:		*type = new ZnType<10>();		break;
		case ID::Z11:		*type = new ZnType<11>();		break;
		case ID::Z12:		*type = new ZnType<12>();		break;
		case ID::Z13:		*type = new ZnType<13>();		break;
		case ID::Z14:		*type = new ZnType<14>();		break;
		case ID::Z15:		*type = new ZnType<15>();		break;
		case ID::Z16:		*type = new ZnType<16>();		break;
		case ID::Z17:		*type = new ZnType<17>();		break;
		case ID::Z18:		*type = new ZnType<18>();		break;
		case ID::Z19:		*type = new ZnType<19>();		break;
		case ID::Z20:		*type = new ZnType<20>();		break;
		case ID::Z21:		*type = new ZnType<21>();		break;
		case ID::Z22:		*type = new ZnType<22>();		break;
		case ID::Z23:		*type = new ZnType<23>();		break;
		case ID::Z24:		*type = new ZnType<24>();		break;
		case ID::Z25:		*type = new ZnType<25>();		break;
		case ID::Z26:		*type = new ZnType<26>();		break;
		case ID::Z27:		*type = new ZnType<27>();		break;
		case ID::Z28:		*type = new ZnType<28>();		break;
		case ID::Z29:		*type = new ZnType<29>();		break;
		case ID::Z30:		*type = new ZnType<30>();		break;
		case ID::Z31:		*type = new ZnType<31>();		break;
		case ID::Z32:		*type = new ZnType<32>();		break;
		case ID::Z64:		*type = new ZnType<64>();		break;
		case ID::Z128:	*type = new ZnType<128>();	break;
	
		case ID::STRING:*type = new StringType(); 	break;
		case ID::N:			*type = new NaturalType();	break;
		case ID::OBJECT:*type = new ObjectType();		break;
		case ID::VOID:	*type = new VoidType();			break;
	
		case ID::R:			*type = new RealType();			break;
		case ID::REGEXP:*type = new RegExpType();		break;
		case ID::TIME:	*type	= new TimeType();			break;
		case ID::Z:
			TODO
			break;

		// Optional type parameters
		case ID::Q:
		case ID::TYPE_NAME:
		{
			lex( token );

			if( token.id() == ID::GT )
			{
				// todo: build the template type
				return true;
			}
			else
			{
				dumpToken( __FILE__, __LINE__, token );
				TODO // check for type parameters
			}
			break;
		}

		// Requires type parameters
		case ID::C:
		case ID::DLIST:
		case ID::DQUEUE:
		case ID::DURATION:
		case ID::LIST:
		case ID::MSET:
		case ID::PQUEUE:
		case ID::QUEUE:
		case ID::SET:
		case ID::STACK:
		{
			lex( token );

			if( token.id() == ID::LT )
			{
				dumpToken( __FILE__, __LINE__, token );
				TODO // ensure type parameters present
			}
			else
				throw std::runtime_error( "Parameterized type is not immediately "
					"followed by < character" );
			break;
		}
	}

	Pointer	collectionPtr = Pointer::NONE;
	Pointer	elementPtr = Pointer::NONE;

	// Get modifiers and dims
	while(true)
	{
		lex( token );

		switch( token.id() )
		{
		default:
			// we are done. Set lookahead to token
			return true;

		case ID::QUEST:
		case ID::MUL:
		case ID::EXP:
		case ID::BAND:
		case ID::ADD:
			if(dims.size() == 0 )
			{
				if( collectionPtr == Pointer::NONE )
					collectionPtr = static_cast<Pointer>( token.id() );
				else
				{
			        dumpToken( __FILE__, __LINE__, token );
					TODO	// multiple pointer modifiers error
				}
			}
			else
			{
				if( elementPtr == Pointer::NONE )
					elementPtr = static_cast<Pointer>(token.id());
				else
				{
			        dumpToken( __FILE__, __LINE__, token );
					TODO	// multiple pointer modifiers error
				}
			}
			break;

		case ID::LBRACKET:
		{
			Expr * expr;
			Token tt;
			if( parseExpr( &expr, ETC::COMMA_RBRACKET, STR::NONE, tt, 0, 0 ) && tt.id() == ID::RBRACKET )
				dims.push_back(up<Expr>(expr));
			else
			{
		        dumpToken( __FILE__, __LINE__, tt );
				TODO	// get dims
			}
			break;
		}
		}
	}

	return true;
}

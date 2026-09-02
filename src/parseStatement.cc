#include "parser.h"
#include "token.h"

#include <iostream>


using namespace std;


bool Parser::parseStatement( Statement ** statement )
{
PENTER
	bool rc;

	*statement = nullptr;

	while(!*statement)
	{
		Token	val;
		lex( val, this );

printf( "%s:%d id %d\n", __FILE__, __LINE__, val.id() );
		switch(val.id())
		{
		default:
		{
printf( "%s:%d\n", __FILE__, __LINE__ );
			ExprStatement * exprS;
			rc = parseExprStatement( &exprS );
			*statement = exprS;
			break;
		}
		case ID::SCOLON:		// empty
		{
printf( "%s:%d\n", __FILE__, __LINE__ );
			auto empty = new Empty( 0 );
			*statement = empty;
			break;
		}
		case ID::LBRACE:		// block
		{
			Block * block;
			rc = parseBlock( &block );
			*statement = block;
			break;
		}
		case ID::RBRACE:
		{
			rc = true;
			break;
		}
		///////////////////////////////////////////
	
		case ID::ATOMIC:	// atomic
			declarators_ += static_cast<unsigned>(ID::ATOMIC);
			break;
		case ID::FINAL:		// final
			declarators_ += static_cast<unsigned>(ID::FINAL);
			break;
		case ID::INLINE:	// inline
			declarators_ += static_cast<unsigned>(ID::INLINE);
			break;
		case ID::NOEXCEPT:	// noexcept
			declarators_ += static_cast<unsigned>(ID::NOEXCEPT);
			break;
		case ID::OVERRIDE:	// override
			declarators_ += static_cast<unsigned>(ID::OVERRIDE);
			break;
		case ID::PRIVATE:	// private
			declarators_ += static_cast<unsigned>(ID::PRIVATE);
			break;
		case ID::THREAD_LOCAL:// thread_local
			declarators_ += static_cast<unsigned>(ID::THREAD_LOCAL);
			break;
	
		///////////////////////////////
		// variable/function definitions
		//
		case ID::AUTO:		// auto
		case ID::BOOL:		// bool
		case ID::C:			// C
		case ID::DATE:		// date
		case ID::DATETIME:	// datetime
		case ID::DLIST:		// dlist
		case ID::DQUEUE:	// dqueue
		case ID::DURATION:	// duration
		case ID::FLOAT32:	// float32
		case ID::FLOAT64:	// float64
						//
		case ID::I0: case ID::I1: case ID::I2: case ID::I3: case ID::I4: case ID::I5: case ID::I6: case ID::I7: case ID::I8: case ID::I9:		
		case ID::I10:case ID::I11:case ID::I12:case ID::I13:case ID::I14:case ID::I15:case ID::I16:case ID::I17:case ID::I18:case ID::I19:
		case ID::I20:case ID::I21:case ID::I22:case ID::I23:case ID::I24:case ID::I25:case ID::I26:case ID::I27:case ID::I28:case ID::I29:
		case ID::I30:case ID::I31:case ID::I32:case ID::I64:

		case ID::Z0: case ID::Z1: case ID::Z2: case ID::Z3: case ID::Z4: case ID::Z5: case ID::Z6: case ID::Z7: case ID::Z8: case ID::Z9:		
		case ID::Z10:case ID::Z11:case ID::Z12:case ID::Z13:case ID::Z14:case ID::Z15:case ID::Z16:case ID::Z17:case ID::Z18:case ID::Z19:
		case ID::Z20:case ID::Z21:case ID::Z22:case ID::Z23:case ID::Z24:case ID::Z25:case ID::Z26:case ID::Z27:case ID::Z28:case ID::Z29:
		case ID::Z30:case ID::Z31:case ID::Z32:case ID::Z64:

		case ID::U0: case ID::U1: case ID::U2: case ID::U3: case ID::U4: case ID::U5: case ID::U6: case ID::U7: case ID::U8: case ID::U9:		
		case ID::U10:case ID::U11:case ID::U12:case ID::U13:case ID::U14:case ID::U15:case ID::U16:case ID::U17:case ID::U18:case ID::U19:
		case ID::U20:case ID::U21:case ID::U22:case ID::U23:case ID::U24:case ID::U25:case ID::U26:case ID::U27:case ID::U28:case ID::U29:
		case ID::U30:case ID::U31:case ID::U32:case ID::U64:

		case ID::N0: case ID::N1: case ID::N2: case ID::N3: case ID::N4: case ID::N5: case ID::N6: case ID::N7: case ID::N8: case ID::N9:		
		case ID::N10:case ID::N11:case ID::N12:case ID::N13:case ID::N14:case ID::N15:case ID::N16:case ID::N17:case ID::N18:case ID::N19:
		case ID::N20:case ID::N21:case ID::N22:case ID::N23:case ID::N24:case ID::N25:case ID::N26:case ID::N27:case ID::N28:case ID::N29:
		case ID::N30:case ID::N31:case ID::N32:case ID::N64:

		case ID::MSET:		// mset
		case ID::N:			// N
		case ID::LIST:		// list
		case ID::OBJECT:	// object
		case ID::Q:			// Q
		case ID::QUEUE:		// queue
		case ID::R:			// R
		case ID::REGEXP:	// regexp
		case ID::SET:		// set
		case ID::STACK:		// stack
		case ID::TIME:		// time
		case ID::TYPE_NAME:	// type-name

		case ID::VOID:		// void

		case ID::Z:			// Z
		{
printf( "%s:%d\n", __FILE__, __LINE__ );
			VarDef * vd;
			Executable * ex;
			rc = parseVarFuncDef( val, &vd, &ex );
			*statement = ex;
			break;
		}
	
		// Statements
		//	
		case ID::BREAK:		// break
		{
			Break * b;
			rc = parseBreak( &b );
			*statement = b;
			break;
		}
		case ID::CASE:		// case
		{
			Case * c;
			rc = parseCase( &c );
			*statement = c;
			break;
		}
		case ID::CONTINUE:	// continue
		{
			Continue * con;
			rc = parseContinue( &con );
			*statement = con;
			break;
		}
		case ID::DEFAULT:	// default
		{
			Default * def;
			rc = parseDefault( &def );
			*statement = def;
			break;
		}
		case ID::DO:		// do ... while 
		{
			Do * un;
			rc = parseDo( &un );
			*statement = un;
			break;
		}
		case ID::FOR:		// for
		{
			For * f;
			rc = parseFor( &f );
			*statement = f;
			break;
		}
		case ID::IF:		// if 
		{
			If * i;
			rc = parseIf( &i );
			*statement = i;
			break;
		}
		case ID::NAMESPACE:	// namespace
		{
			Namespace * ns;
			rc = parseNamespace( &ns );
			*statement = ns;
			break;
		}
		case ID::RETURN:	// return
		{
			Return * r;
			rc = parseReturn( &r );
			*statement = r;
			break;
		}
		case ID::SWITCH:	// switch 
		{
			Switch * sw;
			rc = parseSwitch( &sw );
			*statement = sw;
			break;
		}
		case ID::TRY:		// try
		{
			Try * t;
			rc = parseTry( &t );
			*statement = t;
			break;
		}
		case ID::USING:		// using 
		{
			Using * u;
			UsingNamespace * uns;
			rc = parseUsing( &u, &uns );
			*statement = uns;
			break;
		}
		case ID::WHILE:		// while 
		{
			While * w;
			rc = parseWhile( &w );
			*statement = w;
			break;
		}
	
		// Type definitions
		//
		case ID::CLASS:
		{
			ClassType * ct;
			rc = parseClass( &ct );
			*statement = ct;
			break;
		}
		case ID::ENUM:
		{
			EnumType * et;
			rc = parseEnum( &et );
			*statement = et;
			break;
		}
		case ID::TYPE:
		{
			TypeType * tt;
			rc = parseTypeDef( &tt );
			*statement = tt;
			break;
		}
		case ID::UNION:
		{
			UnionType * ut;
			rc = parseUnion( &ut );
			*statement = ut;
			break;
		}
		case ID::INTERFACE:
		{
			InterfaceType * it;
			rc = parseInterface( &it );
			*statement = it;
			break;
		}
	
		// pure function definitions
		case ID::FUN:		// fun
		{
			PureFuncDef * pfd;
			rc = parsePureFunction( &pfd );
			*statement = pfd;
			break;
		}
		}
	}

	return rc;
}

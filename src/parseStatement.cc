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

printf( "%s:%d id %d\n", __FILE__, __LINE__, val.id );
		switch(val.id)
		{
		default:
		{
printf( "%s:%d\n", __FILE__, __LINE__ );
			ExprStatement * exprS;
			rc = parseExprStatement( &exprS );
			*statement = exprS;
			break;
		}
		case ';':		// empty
		{
printf( "%s:%d\n", __FILE__, __LINE__ );
			auto empty = new Empty( 0 );
			*statement = empty;
			break;
		}
		case '{':		// block
		{
			Block * block;
			rc = parseBlock( &block );
			*statement = block;
			break;
		}
		case '}':
		{
			rc = true;
			break;
		}
		///////////////////////////////////////////
	
		case ATOMIC:	// atomic
			declarators_ += ATOMIC;
			break;
		case FINAL:		// final
			declarators_ += FINAL;
			break;
		case INLINE:	// inline
			declarators_ += INLINE;
			break;
		case NOEXCEPT:	// noexcept
			declarators_ += NOEXCEPT;
			break;
		case OVERRIDE:	// override
			declarators_ += OVERRIDE;
			break;
		case PRIVATE:	// private
			declarators_ += PRIVATE;
			break;
		case THREAD_LOCAL:// thread_local
			declarators_ += THREAD_LOCAL;
			break;
	
		///////////////////////////////
		// variable/function definitions
		//
		case AUTO:		// auto
		case BOOL:		// bool
		case C:			// C
		case DATE:		// date
		case DATETIME:	// datetime
		case DLIST:		// dlist
		case DQUEUE:	// dqueue
		case DURATION:	// duration
		case FLOAT32:	// float32
		case FLOAT64:	// float64
						//
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

		case MSET:		// mset
		case N:			// N
		case LIST:		// list
		case OBJECT:	// object
		case Q:			// Q
		case QUEUE:		// queue
		case R:			// R
		case REGEXP:	// regexp
		case SET:		// set
		case STACK:		// stack
		case TIME:		// time
		case TYPE_NAME:	// type-name

		case VOID:		// void

		case Z:			// Z
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
		case BREAK:		// break
		{
			Break * b;
			rc = parseBreak( &b );
			*statement = b;
			break;
		}
		case CASE:		// case
		{
			Case * c;
			rc = parseCase( &c );
			*statement = c;
			break;
		}
		case CONTINUE:	// continue
		{
			Continue * con;
			rc = parseContinue( &con );
			*statement = con;
			break;
		}
		case DEFAULT:	// default
		{
			Default * def;
			rc = parseDefault( &def );
			*statement = def;
			break;
		}
		case DO:		// do ... while 
		{
			Do * un;
			rc = parseDo( &un );
			*statement = un;
			break;
		}
		case FOR:		// for
		{
			For * f;
			rc = parseFor( &f );
			*statement = f;
			break;
		}
		case IF:		// if 
		{
			If * i;
			rc = parseIf( &i );
			*statement = i;
			break;
		}
		case NAMESPACE:	// namespace
		{
			Namespace * ns;
			rc = parseNamespace( &ns );
			*statement = ns;
			break;
		}
		case RETURN:	// return
		{
			Return * r;
			rc = parseReturn( &r );
			*statement = r;
			break;
		}
		case SWITCH:	// switch 
		{
			Switch * sw;
			rc = parseSwitch( &sw );
			*statement = sw;
			break;
		}
		case TRY:		// try
		{
			Try * t;
			rc = parseTry( &t );
			*statement = t;
			break;
		}
		case USING:		// using 
		{
			Using * u;
			UsingNamespace * uns;
			rc = parseUsing( &u, &uns );
			*statement = uns;
			break;
		}
		case WHILE:		// while 
		{
			While * w;
			rc = parseWhile( &w );
			*statement = w;
			break;
		}
	
		// Type definitions
		//
		case CLASS:
		{
			ClassType * ct;
			rc = parseClass( &ct );
			*statement = ct;
			break;
		}
		case ENUM:
		{
			EnumType * et;
			rc = parseEnum( &et );
			*statement = et;
			break;
		}
		case TYPE:
		{
			TypeType * tt;
			rc = parseTypeDef( &tt );
			*statement = tt;
			break;
		}
		case UNION:
		{
			UnionType * ut;
			rc = parseUnion( &ut );
			*statement = ut;
			break;
		}
		case INTERFACE:
		{
			InterfaceType * it;
			rc = parseInterface( &it );
			*statement = it;
			break;
		}
	
		// pure function definitions
		case FUN:		// fun
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

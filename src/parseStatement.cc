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
	
		case id2ui(ATOMIC):	// atomic
			declarators_ += id2ui(ATOMIC);
			break;
		case id2ui(FINAL):		// final
			declarators_ += id2ui(FINAL);
			break;
		case id2ui(INLINE):	// inline
			declarators_ += id2ui(INLINE);
			break;
		case id2ui(NOEXCEPT):	// noexcept
			declarators_ += id2ui(NOEXCEPT);
			break;
		case id2ui(OVERRIDE):	// override
			declarators_ += id2ui(OVERRIDE);
			break;
		case id2ui(PRIVATE):	// private
			declarators_ += id2ui(PRIVATE);
			break;
		case id2ui(THREAD_LOCAL):// thread_local
			declarators_ += id2ui(THREAD_LOCAL);
			break;
	
		///////////////////////////////
		// variable/function definitions
		//
		case id2ui(AUTO):		// auto
		case id2ui(BOOL):		// bool
		case id2ui(C):			// C
		case id2ui(DATE):		// date
		case id2ui(DATETIME):	// datetime
		case id2ui(DLIST):		// dlist
		case id2ui(DQUEUE):	// dqueue
		case id2ui(DURATION):	// duration
		case id2ui(FLOAT32):	// float32
		case id2ui(FLOAT64):	// float64
						//
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

		case id2ui(MSET):		// mset
		case id2ui(N):			// N
		case id2ui(LIST):		// list
		case id2ui(OBJECT):	// object
		case id2ui(Q):			// Q
		case id2ui(QUEUE):		// queue
		case id2ui(R):			// R
		case id2ui(REGEXP):	// regexp
		case id2ui(SET):		// set
		case id2ui(STACK):		// stack
		case id2ui(TIME):		// time
		case id2ui(TYPE_NAME):	// type-name

		case id2ui(VOID):		// void

		case id2ui(Z):			// Z
		{
printf( "%s):%d\n", __FILE__, __LINE__ );
			VarDef * vd;
			Executable * ex;
			rc = parseVarFuncDef( val, &vd, &ex );
			*statement = ex;
			break;
		}
	
		// Statements
		//	
		case id2ui(BREAK):		// break
		{
			Break * b;
			rc = parseBreak( &b );
			*statement = b;
			break;
		}
		case id2ui(CASE):		// case
		{
			Case * c;
			rc = parseCase( &c );
			*statement = c;
			break;
		}
		case id2ui(CONTINUE):	// continue
		{
			Continue * con;
			rc = parseContinue( &con );
			*statement = con;
			break;
		}
		case id2ui(DEFAULT):	// default
		{
			Default * def;
			rc = parseDefault( &def );
			*statement = def;
			break;
		}
		case id2ui(DO):		// do ... while 
		{
			Do * un;
			rc = parseDo( &un );
			*statement = un;
			break;
		}
		case id2ui(FOR):		// for
		{
			For * f;
			rc = parseFor( &f );
			*statement = f;
			break;
		}
		case id2ui(IF):		// if 
		{
			If * i;
			rc = parseIf( &i );
			*statement = i;
			break;
		}
		case id2ui(NAMESPACE):	// namespace
		{
			Namespace * ns;
			rc = parseNamespace( &ns );
			*statement = ns;
			break;
		}
		case id2ui(RETURN):	// return
		{
			Return * r;
			rc = parseReturn( &r );
			*statement = r;
			break;
		}
		case id2ui(SWITCH):	// switch 
		{
			Switch * sw;
			rc = parseSwitch( &sw );
			*statement = sw;
			break;
		}
		case id2ui(TRY):		// try
		{
			Try * t;
			rc = parseTry( &t );
			*statement = t;
			break;
		}
		case id2ui(USING):		// using 
		{
			Using * u;
			UsingNamespace * uns;
			rc = parseUsing( &u, &uns );
			*statement = uns;
			break;
		}
		case id2ui(WHILE):		// while 
		{
			While * w;
			rc = parseWhile( &w );
			*statement = w;
			break;
		}
	
		// Type definitions
		//
		case id2ui(CLASS):
		{
			ClassType * ct;
			rc = parseClass( &ct );
			*statement = ct;
			break;
		}
		case id2ui(ENUM):
		{
			EnumType * et;
			rc = parseEnum( &et );
			*statement = et;
			break;
		}
		case id2ui(TYPE):
		{
			TypeType * tt;
			rc = parseTypeDef( &tt );
			*statement = tt;
			break;
		}
		case id2ui(UNION):
		{
			UnionType * ut;
			rc = parseUnion( &ut );
			*statement = ut;
			break;
		}
		case id2ui(INTERFACE):
		{
			InterfaceType * it;
			rc = parseInterface( &it );
			*statement = it;
			break;
		}
	
		// pure function definitions
		case id2ui(FUN):		// fun
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

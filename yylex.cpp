#include <cctype>
#include <iostream>
#include <cstring>
#include <limits>
#include <string>
#include <cstdlib>

#include "opus.h"
#include "yylex.h"


// TODO
//
// DATE_LIT
// DATETIME_LIT
// TIME_LIT
// PERIOD_LIT
// CLASS_NAME
// 

// date       yyyy.mm.dd
// datetime   yyyy.mm.dd.hh[.mm[.ss[.mmmmmm]]]
// time       hh.mm.ss
//
// period     one or more of
//
//            digitsY
//            digitsM
//            digitsD
//            digitsh
//            digitsm
//            digits[.digits]s
//
//            separated by . and in decreasing order
//            For example, 5Y.3M.10D.2h.5m.12.121213s
//

namespace
{

struct Keyword
{
	int id;
	const char * lexium;
};

Keyword keywords[] =
{
	{ ALIAS,       "alias" },
	{ AS,          "as" },
	{ ATOMIC,      "atomic" },

	{ BOOL,        "bool" },
	{ BREAK,       "break" },
	{ BY,          "by" },

	{ C,           "C" },
	{ CASE,        "case" },
	{ CATCH,       "catch" },
	{ CLASS,       "class" },
	{ CONTINUE,    "continue" },

	{ DATE,        "date" },
	{ DATETIME,    "datetime" },
	{ DEFAULT,     "default" },
	{ DEQUEUE,     "dequeue" },
	{ DISTINCT,    "distinct" },
	{ DYNAMIC,     "dynamic" },

	{ ELSE,        "else" },
	{ ENUM,        "enum" },

	{ FALSE,       "false" },
	{ FLOAT,       "float" },
	{ FOR,         "for" },
	{ FROM,        "from" },
	{ FUN,         "fun" },

	{ GRAMMAR,     "grammar" },
	{ GROUP,       "group" },

	{ HAVING,      "having" },

	{ IF,          "if" },
    { IMPORT,      "import" },
	{ ISNULL,      "isnull" },

	{ JOIN,        "join" },

	{ LEFT,        "left" },

	{ MATRIX,      "matrix" },
	{ MODEL,       "model" },
	{ MULTISET,    "multiset" },

	{ N,           "N" },
	{ NAME,        "name" },
	{ _NULL,       "null" },

	{ OBJECT,      "object" },
	{ OUTER,       "outer" },
	{ ORDER,       "order" },

	{ PERCENT,     "percent" },
    { PERIOD,      "period" },
	{ PQUEUE,      "pqueue" },

	{ Q,           "Q" },
	{ QUEUE,       "queue" },

	{ R,           "R" },
	{ RETURN,      "return" },
	{ RIGHT,       "right" },

	{ SELECT,      "select" },
	{ SET,         "set" },
	{ SHARED,      "shared" },
	{ STACK,       "stack" },
	{ STRING,      "string" },
	{ SWITCH,      "switch" },

	{ TENSOR,      "tensor" },
	{ THROW,       "throw" },
	{ TIES,        "ties" },
	{ TIME,        "time" },
	{ TOP,         "top" },
	{ TRUE,        "true" },
	{ TRY,         "try" },
	{ TUPLE,       "tuple" },

	{ UNION,       "union" },
	{ UNIQUE,      "unique" },

	{ IND,         "ind" },
	{ VECTOR,      "vector" },
	{ VOID,        "void" },

	{ WEAK,        "weak" },
	{ WHERE,       "where" },
	{ WITH,        "with" },

	{ Z,           "Z" },
};

bool isInteger( 
	   YYLTYPE * llocp, 
	LexContext * context, 
	const char * & s, 
	const char * & e )
{
	s = context->cp;
	e = context->cp+1;

	while( *e && isdigit(*e) )
		++e;

	return !isalpha(*e) && *e != '_';
}

bool isRational( 
	   YYLTYPE * llocp, 
	LexContext * context, 
	const char * & s, 
	const char * & e )
{
	s = context->cp;
	e = context->cp+1;

	int dots = 0;
	while( *e && isdigit(*e) && *e == '.' )
	{
		if( *e == '.' )
			++dots;
		++e;
	}

	return !isalpha(*e) && *e != '_' && dots == 1;
}

bool isInt( YYLTYPE * llocp, LexContext * context, int & i )
{
	char * start = context->cp;
	char * cp = start;

	i = 0;
	while(*cp && isdigit(*cp))
	{
		int d = *cp - '0';
		if( i > ( std::numeric_limits<int>::max() - d )/10)
			return false;
		i = i*10 + d;
		++cp;
	}
	
	bool ans = !isalpha(*cp);
	if(ans)
		context->cp = cp;

	return ans;
}

bool isLong( YYLTYPE * llocp, LexContext * context, int64_t & l )
{
	char * start = context->cp;
	char * cp = start;

	l = 0;
	while(*cp && isdigit(*cp))
	{
		int d = *cp - '0';
		if( l > ( std::numeric_limits<long>::max() - d )/10)
			return false;
		l = l*10 + d;
		++cp;
	}
	
	bool ans = !isalpha(*cp);
	if(ans)
		context->cp = cp;

	return ans;
}

// double_lit = d+(f|m)
// f = .d+[m]
// m = (e|E)[+|-]d+
//
bool isDouble( YYLTYPE * llocp, LexContext * context, double & d )
{
	char * start = context->cp;
	char * cp = start;

	char * end;

	d = strtod( cp, &end );

	bool ans = (end == cp + strlen(cp));
	if(ans)
		context->cp = end;

	return ans;
}

//#define DEBUG_NEXTCHAR

#ifdef DEBUG_NEXTCHAR
#define RET_CHAR(i) \
do { \
int r = (i); \
std::cerr << "c=" << r << std::endl; \
return r; \
} while(false)
#else
#define RET_CHAR(i)	return i
#endif

int nextChar( YYLTYPE * llocp, LexContext * context )
{
	if( context->lookahead[0] >= 0 )
	{
		int ans = context->lookahead[0];

		if( context->lookahead[1] >= 0 )
		{
			context->lookahead[0] = context->lookahead[1];
			context->lookahead[1] = -1;
		}
		else
			context->lookahead[0] = -1;

		RET_CHAR(ans);
	}	
	else if( !context->cp )
	{
getLine:if( fgets( context->line, LexContext::MAX_LINE, context->fh ) )
			context->cp = context->line;
		else
			RET_CHAR(0);
	}

	if( *context->cp )
		RET_CHAR(*context->cp++);
	else
		goto getLine;

	RET_CHAR(0);
}

bool escapeChar( char c, char & out )
{
	switch(c)
	{
	default:
		return false;

	case '\\':
		out = 0x5c;	// backslash
	case '\'':
		out = 0x27;	// single quote
		break;
	case '"':
		out = 0x22;	// double quote
		break;
	case 'a':
		out = 0x07;	// alarm (beep)
		break;
	case 'b':
		out = 0x08;	// backspace
		break;
	case 'f':
		out = 0x0c;	// formfeed
		break;
	case 'n':
		out = 0x0a;	// newline
		break;
	case 'r':
		out = 0x0d;	// carriage return
		break;
	case 't':
		out = 0x09;	// horizontal tab
		break;
	case 'v':
		out = 0x0b;	// vertical tab
		break;
	}

	return true;
}

int nextToken( YYSTYPE * lvalp, YYLTYPE * llocp, LexContext * context )
{
	int c = nextChar( llocp, context );

	while( c && isspace(c) )
		c = nextChar( llocp, context );

	if( c == 0 )
		return 0;

	while(true)
	{
		switch(c)
		{
		case ';': case ',': case '?':
		case ')':
		case '{': case '}':
		case '[': case ']':
			return c;
		}

		switch(c)
		{
		case '!':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return NE;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '%':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return m_ASS;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '&':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return A_ASS;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '(':
		{
			char n = nextChar( llocp, context );
			if( n == '*')
			{
				char n2 = nextChar(llocp, context );
				if( n2 == ')' )
				{
					return M_MULT;
				}
				else
				{
					
					context->lookahead[0] = n;
					context->lookahead[1] = n2;
					return c;
				}
			}
			else if( n == '/' )
			{
				char n2 = nextChar(llocp, context );
				if( n2 == ')' )
				{
					return M_DIV;
				}
				else
				{
					
					context->lookahead[0] = n;
					context->lookahead[1] = n2;
					return c;
				}
			}
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '*':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return M_ASS;
			else if( n == '*' )
				return POW;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '+':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return P_ASS;
			else if( n == '+' )
				return INC;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '-':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return S_ASS;
			else if( n == '-' )
				return DEC;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '/':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return D_ASS;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '.':
		{
			char n = nextChar( llocp, context );
			if( n == '.')
				return DOT_DOT;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '=':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return EQ;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case ':':
		{
			char n = nextChar( llocp, context );
			if( n == '-')
				return IMPLES;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '<':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return LE;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '>':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return GE;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '^':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return X_ASS;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		case '|':
		{
			char n = nextChar( llocp, context );
			if( n == '=')
				return O_ASS;
			else
			{
				context->lookahead[0] = c;
				return c;
			}
		}
		}

		if( isdigit(c))
		{
			if( isInt( llocp, context, lvalp->i32 ) )
				return INT_LIT;
	
			if( isLong( llocp, context, lvalp->i64 ) )
				return LONG_LIT;
	
			if( isDouble( llocp, context, lvalp->dbl ) )
				return FLOAT_LIT;
	
			const char * s, * e;
			if( isInteger( llocp, context, s, e ))
			{
				lvalp->i = new char [ e-s+1 ];
				strncpy( lvalp->i, s, e-s );
				lvalp->i[e-s] = 0;
				return INTEGER_LIT;
			}
			
			if( isRational( llocp, context, s, e ))
			{
				lvalp->i = new char [ e-s+1 ];
				strncpy( lvalp->i, s, e-s );
				lvalp->i[e-s] = 0;
				return RATIONAL_LIT;
			}

			int loc = 0;
			do
			{
				lvalp->str[loc++] = c;
				c = nextChar( llocp, context );
			} while( c && !isspace(c) );

			return INVALID_NUMBER;
		}
		else if( c == '_' )
		{
			int loc = 0;
			lvalp->str[loc++] = c;
	
			c = nextChar( llocp, context );
			while( c == '_' || isalnum(c))
			{
				lvalp->str[loc++] = c;
				c = nextChar( llocp, context );
			}
			lvalp->str[loc] = 0;
			context->lookahead[0] = c;
	
			return NAME;
		}
		else if(isalpha(c))
		{
			int loc = 0;
			lvalp->str[loc++] = c;
	
			c = nextChar( llocp, context );
	
			while( c == '_' || isalnum(c))
			{
				lvalp->str[loc++] = c;
				c = nextChar( llocp, context );
			}
			lvalp->str[loc] = 0;
			context->lookahead[0] = c;
	
			for (int i = 0; i < sizeof(keywords)/sizeof(Keyword); ++i )
			{
				if( strcmp( lvalp->str, keywords[i].lexium ) == 0 )
				{
					return keywords[i].id;
				}
			}
	
			return NAME;
		}
		//  Raw string literal
		else if( c == '\'' )
		{
			bool escaped = false;
	
			c = nextChar( llocp, context );

			int loc = 0;
	
			while( c )
			{
				if( c == '\\' )
				{
					if( !escaped )
						escaped = true;
					else
						lvalp->str[loc] = c;
				}
				else if( escaped )
				{
					escaped = false;
					if( escapeChar( c, lvalp->str[loc] ) )
					{
						 lvalp->str[loc] = c;
					}
					++loc;
				}
				else if( c == '\'' )
				{
					lvalp->str[loc] = 0;
					return STRING_LIT;
				}
				else
					lvalp->str[loc++] = c;

				c = nextChar( llocp, context );
			}
			
			return INVALID_STRING;
		}
		//  STRING_LIT 
		else if( c == '"' )
		{
			bool escaped = false;
	
			c = nextChar( llocp, context );

			int loc = 0;
	
			while( c )
			{
				if( c == '\\' )
				{
					if( !escaped )
						escaped = true;
					else
						lvalp->str[loc] = c;
				}
				else if( escaped )
				{
					escaped = false;
					if( escapeChar( c, lvalp->str[loc] ) )
					{
						 lvalp->str[loc] = c;
					}
					++loc;
				}
				else if( c == '"' )
				{
					lvalp->str[loc] = 0;
					return STRING_LIT;
				}
				else
					lvalp->str[loc++] = c;

				c = nextChar( llocp, context );
			}
			
			return INVALID_STRING;
		}
	}
}

//#define DEBUG_YYLEX

#ifdef DEBUG_YYLEX

void dump( int token, YYSTYPE * lvalp, YYLTYPE * llocp )
{
	if( token < 256 )
	{
		std::cerr << static_cast<char>(token) << std::endl;
		return;
	}

	switch(token)
	{
	case ALIAS:		std::cerr << "alias" << std::endl;		break;
	case BOOL:		std::cerr << "bool" << std::endl;		break;
	case BREAK:		std::cerr << "break" << std::endl;		break;
	case CASE:		std::cerr << "case"  << std::endl;		break;
	case CONTINUE:	std::cerr << "continue" << std::endl;	break;
	case DEFAULT:	std::cerr << "default" << std::endl;	break;
	case DEQUEUE:	std::cerr << "dequeue" << std::endl;	break;
	case DOUBLE:	std::cerr << "double" << std::endl;		break;
	case ELSE:		std::cerr << "else" << std::endl; 		break;
	case FALSE:		std::cerr << "false" << std::endl; 		break;
	case FLOAT:		std::cerr << "float" << std::endl; 		break;
	case FOR:		std::cerr << "for" << std::endl; 		break;
	case IF:		std::cerr << "if" << std::endl; 		break;
	case INT: 		std::cerr << "int" << std::endl; 		break;
	case LONG: 		std::cerr << "long" << std::endl; 		break;
	case PQUEUE:	std::cerr << "pqueue" << std::endl; 	break;
	case QUEUE:		std::cerr << "queue" << std::endl; 		break;
	case RETURN:	std::cerr << "return" << std::endl;		break;
	case SET:		std::cerr << "set" << std::endl; 		break;
	case SHORT:		std::cerr << "short" << std::endl; 		break;
	case STACK:		std::cerr << "stack" << std::endl; 		break;
	case STRING:	std::cerr << "string" << std::endl;		break;
	case SWITCH:	std::cerr << "switch" << std::endl;		break;
	case TINY:		std::cerr << "tiny" << std::endl; 		break;
	case TRUE:		std::cerr << "true" << std::endl; 		break;
	case UNSIGNED:	std::cerr << "unsigned" << std::endl; 	break;
	case VECTOR:	std::cerr << "vector" << std::endl; 	break;

	case DOUBLE_LIT:
		std::cerr << "double:" << lvalp->dbl << std::endl;
		break;

	case INT_LIT:
		std::cerr << "int:" << lvalp->i32 << std::endl;
		break;
	case LONG_LIT:
		std::cerr << "long:" << lvalp->i64 << std::endl;
		break;
	case UNSIGNED_LIT:
		std::cerr << "uint:" << lvalp->u32 << std::endl;
		break;
	case UNSIGNED_LONG_LIT:
		std::cerr << "ulong:" << lvalp->u64 << std::endl;
		break;

	case INVALID_NUMBER:
		std::cerr << "inv num:" << lvalp->str << std::endl;
		break;
	case INVALID_STRING:
		std::cerr << "inv str:" << lvalp->str << std::endl;
		break;
	case NAME:
		std::cerr << "name:" << lvalp->str << std::endl;
		break;
	case RAW_STRING_LIT:
		std::cerr << "raw str:" << lvalp->str << std::endl;
		break;
	case STRING_LIT:
		std::cerr << "str:" << lvalp->str << std::endl;
		break;
	}
}

#endif

};

int opuslex( YYSTYPE * lvalp, YYLTYPE * llocp, LexContext * context )
{
	int token = nextToken( lvalp, llocp, context );

#ifdef DEBUG_YYLEX
	dump( token, lvalp, llocp );
#endif

	return token;
}

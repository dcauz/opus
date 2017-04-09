#include <cctype>
#include <iostream>
#include <cstring>
#include <limits>
#include <string>
#include <cstdlib>

#include "yylex.h"


namespace
{

struct Keyword
{
	int id;
	const char * lexium;
};

Keyword keywords[] =
{
	{ ALIAS,    "alias" },

	{ BOOL,     "bool" },
	{ BREAK,    "break" },

	{ CASE,     "case" },
	{ CONTINUE, "continue" },

	{ DEFAULT,  "default" },
	{ DEQUEUE,  "dequeue" },

	{ ELSE,     "else" },

	{ FALSE,    "false" },
    { FLOAT,    "float" }, 
	{ FOR,      "for" },

	{ IF,       "if" },

	{ PQUEUE,	"pqueue" },

	{ QUEUE,    "queue" },

    { RETURN,   "return" },

	{ SET,      "set" },
	{ STACK,    "stack" },
	{ STRING,   "string" },
	{ SWITCH,   "switch" },

	{ TRUE,     "true" },

	{ VECTOR,   "vector" },
};


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

bool isUnsigned( YYLTYPE * llocp, LexContext * context, unsigned int & ui )
{
	char * start = context->cp;
	char * cp = start;

	ui = 0;
	while(*cp && isdigit(*cp))
	{
		int d = *cp - '0';
		if( ui > ( std::numeric_limits<unsigned int>::max() - d )/10)
			return false;
		ui = ui*10 + d;
		++cp;
	}
	
	bool ans = !isalpha(*cp);
	if(ans)
		context->cp = cp;

	return ans;
}

bool isLong( YYLTYPE * llocp, LexContext * context, long & l )
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

bool isUnsignedLong( YYLTYPE * llocp, LexContext * context, unsigned long & ul )
{
	char * start = context->cp;
	char * cp = start;

	ul = 0;
	while(*cp && isdigit(*cp))
	{
		int d = *cp - '0';
		if( ul > ( std::numeric_limits<unsigned long>::max() - d )/10)
			return false;
		ul = ul*10 + d;
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
	if( context->lookahead >= 0 )
	{
		int ans = context->lookahead;

		context->lookahead = -1;

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
		case '+':
		case '-':
		case '*':
		case '/':
		case '%':
		case '=':
		case '(':
		case ')':
		case ';':
		case ',':
		case '{':
		case '}':
		case '<':
		case '>':
		case ':':
			return c;
		}
		
		//  FLOAT_LIT 
		//  INT_LIT 
		if( isdigit(c))
		{
			if( isInt( llocp, context, lvalp->i32 ) )
				return INT_LIT;
	
			if( isUnsigned( llocp, context, lvalp->u32 ) )
				return UNSIGNED_LIT;
	
			if( isLong( llocp, context, lvalp->i64 ) )
				return LONG_LIT;
	
			if( isUnsignedLong( llocp, context, lvalp->u64 ) )
				return LONG_LIT;
	
			if( isDouble( llocp, context, lvalp->dbl ) )
				return DOUBLE_LIT;
	
			int loc = 0;
			do
			{
				lvalp->str[loc++] = c;
				c = nextChar( llocp, context );
			} while( c && !isspace(c) );

			return INVALID_NUMBER;
		}
		//  NAME 
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
			context->lookahead = c;
	
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
			context->lookahead = c;
	
			for (int i = 0; i < sizeof(keywords)/sizeof(Keyword); ++i )
			{
				if( strcmp( lvalp->str, keywords[i].lexium ) == 0 )
				{
					return keywords[i].id;
				}
			}
	
			return NAME;
		}
		//  RAW_STRING_LIT 
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
					return RAW_STRING_LIT;
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
					return RAW_STRING_LIT;
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

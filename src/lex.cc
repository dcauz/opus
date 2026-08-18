#include <cctype>
#include <iostream>
#include <cstring>
#include <limits>
#include <string>
#include <cstdlib>
#include <map>

#include "opus.h"
#include "date.h"
#include "datetime.h"
#include "duration.h"
#include "lex.h"
#include "parser.h"
#include "time.h"
#include "token.h"


namespace
{

inline bool is1stTokenChar( char c )
{
	return	(c == '"') ||
			(c == '\'') ||
			(c == '_') ||
			isalpha(c) ||
			isdigit(c);
}

inline bool isTokenChar( char c )
{
	return (c == '_') || isalpha(c) || isdigit(c);
}

inline int D(char c)	{ return c - '0'; }

/*
// duration   one or more of
//
// [<d>d][.<h>h][.<m>m][.<s>s][.<ms>ms|.<us>us]
//
bool isDuration( Token	& tok, Parser * context )
{
	char * start = context->cp;
	char * cp = start;

	int d = 0;
	int h = 0;
	int m = 0;
	int s = 0;
	int ms= 0;
	int us= 0;

	enum State
	{
		begin,
		daysSeen,
		hoursSeen,
		minsSeen,
		secsSeen,
		end
	} state = begin;

	int n = 0;
	while(state != end)
	{
		int v = 0;
		while(isdigit(cp[n]))
		{
			v = v*10 + cp[n] - '0';
			++n;
		}

		switch(state)
		{
		case begin:
			if(cp[n] == 'D' )
			{
				d = v;
				state = daysSeen;
			}
			else if(cp[n] == 'h' )
			{
				h = v;
				state = hoursSeen;
			}
			else if(cp[n] == 'm' )
			{
				m = v;
				state = minsSeen;
			}
			else if(cp[n] == 's' )
			{
				s = v;
				state = secsSeen;
			}
			else
				throw std::runtime_error( "Invalid token" );
			break;
		case daysSeen:
			if(cp[n] == 'h' )
			{
				h = v;
				state = hoursSeen;
			}
			else if(cp[n] == 'm' )
			{
				m = v;
				state = minsSeen;
			}
			else if(cp[n] == 's' )
			{
				s = v;
				state = secsSeen;
			}
			else
				throw std::runtime_error( "Invalid token" );
			break;
		case hoursSeen:
			if(cp[n] == 'm' )
			{
				m = v;
				state = minsSeen;
			}
			else if(cp[n] == 's' )
			{
				s = v;
				state = secsSeen;
			}
			else
				throw std::runtime_error( "Invalid token" );
			break;
		case minsSeen:
			if(cp[n] == 's' )
			{
				s = v;
				state = secsSeen;
			}
			else
				throw std::runtime_error( "Invalid token" );
			break;
		case secsSeen:
			ms = v;
			state = end;
			break;
		}
	}


	if(is1stTokenChar(cp[n]))
		throw std::runtime_error( "Invalid token" );

	if( ms != 0 )
		us = ms*1000;

	tok.value.duration = Duration( d, h, m, s, us ).toUint64();

	return true;
}
*/

// date       yyyy.mm.dd
//
/*
DATE_LIT		
	"yyyy-mm-dd"d
	'yyyy-mm-dd'd
	0000-01-01	- 9999-12-31
*/
bool isDate( Token	& tok, Parser	* context )
{
	char * start = context->cp;
	char * cp = start;

	if( isdigit(cp[0]) && isdigit(cp[1]) && isdigit(cp[2]) && isdigit(cp[3]) &&
		isdigit(cp[5]) && isdigit(cp[6]) &&
		isdigit(cp[8]) && isdigit(cp[9]) )
	{
		if( is1stTokenChar(cp[10]))
			throw std::runtime_error( "Invalid token" );

			tok.value.date = Date(
			D(cp[0])*1000 + D(cp[1])*100 + D(cp[2])*10 + D(cp[3]),
			D(cp[5])*10 + D(cp[6]),
			D(cp[8])*10 + D(cp[9])).toUint32();
			
		return true;
	}

	return false;
}

//            0123456789012 345 678 9012345
// datetime   yyyy.mm.dd.hh[.mm[.ss[.mmmmmm]]]
/*
DATETIME_LIT	
	"yyyy-mm-dd hh:mm:ss"dt
	"yyyy-mm-dd hh:mm:ss.ddd"dt
	"yyyy-mm-dd hh:mm:ss.dddddd"dt
	"yyyy-mm-dd hh:mm:ss.ddddddddd"dt
	'yyyy-mm-dd hh:mm:ss'dt
	'yyyy-mm-dd hh:mm:ss.ddd'dt
	'yyyy-mm-dd hh:mm:ss.dddddd'dt
	'yyyy-mm-dd hh:mm:ss.ddddddddd'dt
*/
bool isDatetime( Token	& tok, Parser * context )
{
	char * start = context->cp;
	char * cp = start;

	if( isdigit(cp[0]) && isdigit(cp[1]) && isdigit(cp[2]) && isdigit(cp[3]) &&
		isdigit(cp[5]) && isdigit(cp[6]) &&
		isdigit(cp[8]) && isdigit(cp[9]) &&
		isdigit(cp[11]) && isdigit(cp[12]))
	{
		int y = D(cp[0])*1000 + D(cp[1])*100 + D(cp[2])*10 + D(cp[3]);
		int m = D(cp[5])*10 + D(cp[6]);
		int d = D(cp[8])*10 + D(cp[9]);
		int hour = D(cp[11])*10 + D(cp[12]);
		int min = 0;
		int sec = 0;
		int ms = 0;

		int next;
		if(cp[13] == '.' )
		{
			if(isdigit(cp[14]) && isdigit(cp[15]))
			{
				min = D(cp[14])*10 + D(cp[15]);

				if(cp[16] == '.' )
				{
					if(isdigit(cp[17]) && isdigit(cp[18]))
					{
						min = D(cp[17])*10 + D(cp[18]);

						if(cp[19] == '.' && isdigit(cp[20]))
						{
							sec = D(cp[19])*10 + D(cp[20]);

							int n = 21;
							while(isdigit(cp[n]))
							{
								ms = ms*10 + D(cp[n]);
								++n;
							}

							next = n;
						}
						else
							next = 19;
					}
					else
						throw std::runtime_error( "Invalid token" );
				}
				else
					next = 16;
			}
			else
				throw std::runtime_error( "Invalid token" );

			return false;
		}
		else
			next = 13;

		if( is1stTokenChar(cp[next]))
			throw std::runtime_error( "Invalid token" );

end:	
		tok.value.dateTime = Datetime( y, m, d, hour, min, sec, ms ).toUint64();
		return true;
	}
	return false;
}

// time       hh.mm.ss[.ms]
/*
TIME_LIT		
	"hh:mm:ss"t
	"hh:mm:ss.ddd"t
	"hh:mm:ss.dddddd"t
	"hh:mm:ss.ddddddddd"t
	'hh:mm:ss't
	'hh:mm:ss.ddd't
	'hh:mm:ss.dddddd't
	'hh:mm:ss.ddddddddd't
*/
bool isTime( Token	& tok, Parser * context )
{
	char * start = context->cp;
	char * cp = start;

	if( isdigit(cp[0]) && isdigit(cp[1]) &&
		isdigit(cp[3]) && isdigit(cp[4]) &&
		isdigit(cp[6]) && isdigit(cp[7]) )
	{
		if( cp[8] == '.' )
		{
			int ms = 0;
			int n = 9;
			while( isdigit(cp[n]))
			{
				ms = ms*10 + D(cp[n]);
				++n;
			}

			tok.value.date = Time( D(cp[0])*10+D(cp[1]), D(cp[3])*10+D(cp[4]),
				D(cp[6])*10+D(cp[7]), ms ).toUint32();
		}
		else
		{
			tok.value.date = Time( D(cp[0])*10+D(cp[1]), D(cp[3])*10+D(cp[4]),
				D(cp[6])*10+D(cp[7]), 0 ).toUint32();
		}	
		return true;
	}
	return false;
}

/**********************************************
 *
 *	INT8_LIT		
 *		-128,127, Ni8
 *	INT16_LIT		
 *		-32,378, 32,377,	Ni16
 *	INT32_LIT		
 *		-2,147,483,648, 2,147,483,647, Ni32
 *	INT64_LIT		
 *		-9,223,372,036,854,775,808, 9,223,372,036,854,775,807,	Ni64
 *	UINT8_LIT		
 *		0u8, 256u8
 *	UINT16_LIT		
 *		0u16, 65,535u
 *	UINT32_LIT		
 *		0u32, 4,294,967,296u32
 *	UINT64_LIT		
 *		0u64, 18,446,744,073,709,551,616u64
 *	INTEGER_LIT
 */
bool isInt( Parser * context, Token & tok )
{
	// If the value will fit into uint16_t
	//	if has suffix, attempt to fit value into type
	//  else, assign to smallest int type
	//  else, assign to uint64_t
	// else
	// 	integer
	//
	char * start = context->cp;
	char * cp = start;

	uint64_t	v = 0;
	while(*cp && isdigit(*cp))
	{
		int d = *cp - '0';
		if( v > ( std::numeric_limits<uint64_t>::max() - d )/10)
		{
			// Too big. It is an integer
			tok.id = INTEGER_LIT;
			while(isdigit(*cp))
				++cp;
			if( !isTokenChar(*cp))
				tok.integer = Integer( start, cp );
			else
				return false;

			// Update cp past end of token
			context->cp = cp;

			return !isTokenChar(*cp);
		}
		v = v*10 + d;
		++cp;
	}
	
	if( *cp == 'i' || *cp == 'u' )
	{
		bool isSigned = (*cp == 'i');

		++cp;

		if( *cp == '8' && !isTokenChar(cp[1]) )
		{
			cp += 2;
			if(isSigned)
			{
				if( v <= std::numeric_limits<int8_t>::max())
				{
					tok.id = INT8_LIT;
					tok.value.i8 = static_cast<int8_t>(v);
				}
				else
					tok.id = INVALID_NUMBER;
			}
			else
			{
				if( v <= std::numeric_limits<uint8_t>::max())
				{
					tok.id = UINT8_LIT;
					tok.value.u8 = static_cast<uint8_t>(v);
				}
				else
					tok.id = INVALID_NUMBER;
			}
		}
		else if( *cp == '1' && cp[1] == '6' && !isTokenChar(cp[2]))
		{
			cp += 2;
			if(isSigned)
			{
				if( v <= std::numeric_limits<int16_t>::max())
				{
					tok.id = INT16_LIT;
					tok.value.i16 = static_cast<int16_t>(v);
				}
				else
					tok.id = INVALID_NUMBER;
			}
			else
			{
				if( v <= std::numeric_limits<uint16_t>::max())
				{
					tok.id = UINT16_LIT;
					tok.value.u16 = static_cast<uint16_t>(v);
				}
				else
					tok.id = INVALID_NUMBER;
			}
		}
		else if( *cp == '3' && cp[1] == '2' && !isTokenChar(cp[2]))
		{
			cp += 2;
			if(isSigned)
			{
				if( v <= std::numeric_limits<int32_t>::max())
				{
					tok.id = INT32_LIT;
					tok.value.i32 = static_cast<int32_t>(v);
				}
				else
					tok.id = INVALID_NUMBER;
			}
			else
			{
				if( v <= std::numeric_limits<uint32_t>::max())
				{
					tok.id = UINT32_LIT;
					tok.value.u32 = static_cast<uint32_t>(v);
				}
				else
					tok.id = INVALID_NUMBER;
			}
		}
		else if( *cp == '6' && cp[1] == '4' && !isTokenChar(cp[2]))
		{
			cp += 2;
			if(isSigned)
			{
				if( v <= std::numeric_limits<int64_t>::max())
				{
					tok.id = INT64_LIT;
					tok.value.i64 = static_cast<int64_t>(v);
				}
				else
					tok.id = INVALID_NUMBER;
			}
			else
			{
				if( v <= std::numeric_limits<uint64_t>::max())
				{
					tok.id = UINT64_LIT;
					tok.value.u64 = static_cast<uint64_t>(v);
				}
				else
					tok.id = INVALID_NUMBER;
			}
		}
	}
	else
	{
		if( v <= std::numeric_limits<int8_t>::max())
		{
			tok.id = INT8_LIT;
			tok.value.i8 = static_cast<int8_t>(v);
		}
		else if( v <= std::numeric_limits<int16_t>::max())
		{
			tok.id = INT16_LIT;
			tok.value.i16 = static_cast<int16_t>(v);
		}
		else if( v <= std::numeric_limits<int32_t>::max())
		{
			tok.id = INT32_LIT;
			tok.value.i32 = static_cast<int32_t>(v);
		}
		else if( v <= std::numeric_limits<int64_t>::max())
		{
			tok.id = INT64_LIT;
			tok.value.i64 = static_cast<int64_t>(v);
		}
		else
		{
			tok.id = UINT64_LIT;
			tok.value.u64 = static_cast<uint64_t>(v);
		}
	}

	// Update cp past end of token
	context->cp = cp;

	return !isTokenChar(*cp);
}

// double_lit = d+(f|m)
// f = .d+[m]
// m = (e|E)[+|-]d+
//
/*
FLOAT32_LIT		
	[+|-][0-9][0-9]*[[.[0-9][0-9]*][(e|E)[+|-][1-9][0-9]*][f|F]
FLOAT64_LIT		
	[+|-][0-9][0-9]*[[.[0-9][0-9]*][(e|E)[+|-][1-9][0-9]*]
*/
bool isFloat( Parser * context, Token & tok )
{
	char * start = context->cp;
	char * cp = start;

	char * end;

	double d = strtod( cp, &end );

	bool ans = (end == cp + strlen(cp));
	if(ans)
		context->cp = end;

	return ans;
}

/*
REAL_LIT		
	well formed real expression
*/
bool isReal( Parser * context, Token & tok )
{
	TODO
	return false;
}

//#define DEBUG_NEXTCHAR

#ifdef DEBUG_NEXTCHAR
#define RET_CHAR(i) \
do { \
int r = (i); \
std::cerr << "c=" << r << " '" << (char)r << "'" << std::endl; \
return r; \
} while(false)
#else
#define RET_CHAR(i)	return i
#endif

int nextChar( Parser * context )
{
	if( context->charLookahead[0] >= 0 )
	{
		int ans = context->charLookahead[0];

		if( context->charLookahead[1] >= 0 )
		{
			context->charLookahead[0] = context->charLookahead[1];
			context->charLookahead[1] = -1;
		}
		else
			context->charLookahead[0] = -1;

		RET_CHAR(ans);
	}	
	else if( !context->cp )
	{
getLine:if( fgets( context->line, Parser::MAX_LINE, context->fh ) )
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

/*
REGEX_LIT		
	' 'r
	" "r
*/
bool isRegexp( Parser * context, Token & tok )
{
	int c = nextChar( context );

	if( c == 'r' )
	{
		tok.id = REGEXP_LIT;
		return true;
	}
	else
	{
		context->charLookahead[0] = c;
		return false;
	}
}

void nextToken( Token & tok, Parser * context )
{
	int c = nextChar( context );

	while( c && isspace(c) )
		c = nextChar( context );

	if( c == 0 )
	{
		tok.id = 0;
		return;
	}

	while(true)
	{
		switch(c)
		{
		case ';':
			context->inSelect = false;

		case ':':
		case ',':
		case '?':
		case '(': case ')':
		case '{': case '}':
		case '[': case ']':
		case '~': case '#':
			tok.id = c;
			return;
		}

		switch(c)
		{

		// !
		// .!  POST_EXCLAIM
		// !=  NE
		case '!':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = NE;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// %
		// %=  MOD_ASS
		case '%':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id=MOD_ASS;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// &
		// &=  A_ASS
		// &&  AND
		case '&':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = AND_ASS;
				return;
			}
			else if( n == '&')
			{
				tok.id = AND;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		case '[':
		{
			char n = nextChar( context );
			if( n == '*')
			{
				char n2 = nextChar(context );
				context->charLookahead[0] = n;
				context->charLookahead[1] = n2;
				tok.id = c;
				return;
			}
			else if( n == '/' )
			{
				char n2 = nextChar(context );
				context->charLookahead[0] = n;
				context->charLookahead[1] = n2;
				tok.id = c;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		case '*':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = MUL_ASS;
				return;
			}
			else if( n == '*')
			{
				tok.id = EXP;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// +
		// .++ POST_INC
		// +=  P_ASS
		// ++  INC
		case '+':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = ADD_ASS;
				return;
			}
			else if( n == '+' )
			{
				tok.id = INC;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// -
		// -   UNIARY_MINUS
		// -=  S_ASS
		// --  DEC
		// .-- POST_DEC
		case '-':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = SUB_ASS;
				return;
			}
			else if( n == '-' )
			{
				tok.id = DEC;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// /
		// /=  DIV_ASS
		case '/':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = DIV_ASS;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// .
		// ..  DOT_DOT
		// ... DOT_DOT_DOT
		case '.':
		{
			char n = nextChar( context );
			if( n == '.')
			{
				char n2 = nextChar( context );
				
				if(n2 == '.')
					tok.id = DOT_DOT_DOT;
				else
				{
					context->charLookahead[0] = n2;
					tok.id = DOT_DOT;
				}
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// =
		// ==  EQ
		case '=':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = EQ;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// <
		// <=	LE
		// <<	SHIFTL
		// <<=	SL_ASS
		case '<':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = LE;
				return;
			}
			else if( n == '<')
			{
				char n2 = nextChar( context );

				if( n2 == '=' )
					tok.id = SLFT_ASS;
				else
				{
					context->charLookahead[0] = n2;
					tok.id = SLFT;
				}
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// >
		// >=	GE
		// >>	SHIFTR
		// >>=	SR_ASS
		case '>':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = GE;
				return;
			}
			else if( n == '>')
			{
				char n2 = nextChar( context );

				if( n2 == '=' )
					tok.id = SRGHT_ASS;
				else
				{
					context->charLookahead[0] = n2;
					tok.id = SRGHT;
				}
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// ^
		// ^=  XOR_ASS
		case '^':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = XOR_ASS;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}

		// |
		// |=  OR_ASS
		// ||  OR
		case '|':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.id = OR_ASS;
				return;
			}
			else if( n == '|')
			{
				tok.id = OR;
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.id = c;
				return;
			}
		}
		}

		if( isdigit(c))
		{
			if( isInt( context, tok ) )
				return;
	
			if( isFloat( context, tok ) )
			{
				tok.id = tok.id;
				return;
			}
	
			int loc = 0;
			do
			{
				tok.lexium += c;
				++loc;
				c = nextChar( context );
			} while( c && !isspace(c) );

			tok.id = INVALID_NUMBER;
			return;
		}
		else if( c == '_' )
		{
			int loc = 0;
			tok.lexium += c;
			++loc;
	
			c = nextChar( context );
			while( c == '_' || isalnum(c))
			{
				tok.lexium += c;
				++loc;
				c = nextChar( context );
			}
			context->charLookahead[0] = c;
	
			tok.id = ID;
			return;
		}
		else if(isalpha(c))
		{
//printf( "%s:%d c [%c]\n", __FILE__, __LINE__, c );
			int loc = 0;

			tok.lexium = c;
			++loc;
	
			c = nextChar( context );
//printf( "%s:%d c [%c]\n", __FILE__, __LINE__, c );
	
			while( c == '_' || isalnum(c))
			{
				tok.lexium += c;
				++loc;
				c = nextChar( context );
			}
			context->charLookahead[0] = c;
	
			for (int i = 0; i < noOfKeyWords; ++i )
			{
				if( tok.lexium == keyWords[i].lexium )
				{
					tok.id=keyWords[i].id;
					if( tok.id == SELECT )
						context->inSelect = true;
					return;
				}
			}

			if( context->inSelect )
			{
				static const std::map<std::string, int > sqlReservedWords =
				{
					{ "as",		AS },
					{ "asc",	ASC },
					{ "by",		BY },
					{ "closure",CLOSURE },
					{ "distinct",DISTINCT },
					{ "dsc",	DSC },
					{ "foreign",FOREIGN },
					{ "from", 	FROM },
					{ "group", 	GROUP },
					{ "having", HAVING },
					{ "into", 	INTO },
					{ "join", 	JOIN },
					{ "left", 	LEFT },
					{ "order", 	ORDER },
					{ "outer", 	OUTER },
					{ "percent",PERCENT },
					{ "right", 	RIGHT },
					{ "ties", 	TIES },
					{ "top", 	TOP },
					{ "unique", UNIQUE },
					{ "values", VALUES },
					{ "where", 	WHERE },
					{ "with", 	WITH },
				};

				auto it = sqlReservedWords.find( tok.lexium );
				if( it != sqlReservedWords.end() )
				{
					tok.id = it->second;
					return;
				}
			}
	
			tok.id = ID;
			return;
		}
		//  Raw string literal
		else if( c == '\'' )
		{
			bool escaped = false;
	
			c = nextChar( context );

			int loc = 0;
	
			while( c )
			{
				if( c == '\\' )
				{
					if( !escaped )
						escaped = true;
					else
					{
						tok.lexium += c;
						++loc;
					}
				}
				else if( escaped )
				{
					escaped = false;
					if( escapeChar( c, tok.lexium[loc] ) )
						tok.lexium += c;
					++loc;
				}
				else if( c == '\'' )
				{
					if( isRegexp( context, tok ) )
						return;
					tok.id = STRING_LIT;
					return;
				}
				else
				{
					tok.lexium += c;
					++loc;
				}

				c = nextChar( context );
			}
			
			tok.id = INVALID_STRING;
			return;
		}
		//  STRING_LIT
		else if( c == '"' )
		{
			bool escaped = false;
	
			c = nextChar( context );

			int loc = 0;
	
			while( c )
			{
				if( c == '\\' )
				{
					if( !escaped )
						escaped = true;
					else
						tok.lexium += c;
				}
				else if( escaped )
				{
					escaped = false;
					if( escapeChar( c, tok.lexium[loc] ) )
						 tok.lexium += c;
					++loc;
				}
				else if( c == '"' )
				{
					if( isRegexp( context, tok ) )
						return;
					tok.id = STRING_LIT;
					return;
				}
				else
				{
					tok.lexium += c;
					++loc;
				}

				c = nextChar( context );
			}
			
			tok.id = INVALID_STRING;
			return;
		}
	}
}

};

void lexPushBack( Token & tok, Parser * context )
{
	context->lookahead = tok;
}

void lex( Token & tok, Parser * context )
{
	if( context->lookahead.id != 0 )
	{
std::cerr <<  __FILE__ << ":" << __LINE__  << " use lookahead" << std::endl;
		tok = context->lookahead;
		context->lookahead.id = 0;
#define DEBUG_YYLEX
#ifdef DEBUG_YYLEX
	dumpToken( tok );
#endif
		return;
	}

	nextToken( tok, context );

	if( tok.id == TYPE || tok.id == ENUM || tok.id == INTERFACE || tok.id == UNION )
		context->typeSeen = true;

	if( context->typeSeen && tok.id == ID )
	{
		context->typeSeen = false;
		context->classes.push(tok.lexium);
		context->pushSymTbl(tok.lexium);
	}

	if( tok.id == ID )
	{
		Symbol * sym = context->currSymTbl->find(tok.lexium);

		if( sym != nullptr )
		{
			if( FunctionType * ft = dynamic_cast<FunctionType *>(sym))
				tok.id = FUNCTION_NAME;
			else if( Type * t = dynamic_cast<Type *>(sym))
				tok.id = TYPE_NAME;
			else if( Alias * a = dynamic_cast<Alias *>(sym))
				tok.id = TYPE_NAME;
			else if( TemplateParam * tp = dynamic_cast<TemplateParam *>(sym))
			{
				Type	* typ = tp->type();

				if( typ != nullptr )
					tok.id = VARIABLE_NAME;
				else
					tok.id = TYPE_NAME;
			}
			else if( Variable * v = dynamic_cast<Variable *>(sym))
				tok.id = VARIABLE_NAME;
		}
	}

printf("%s:%d load new\n", __FILE__, __LINE__ );
#ifdef DEBUG_YYLEX
	dumpToken( tok );
#endif
}

Token::Token( const Token & src )
{
	switch(src.id)
	{
	default:	// no copying required
		break;

	case INT8_LIT:
		value.i8 = src.value.i8;
		break;
	case INT16_LIT:
		value.i16 = src.value.i16;
		break;
	case INT32_LIT:
		value.i32 = src.value.i32;
		break;
	case INT64_LIT:
		value.i64 = src.value.i64;
		break;

	case UINT8_LIT:
		value.u8 = src.value.u8;
		break;
	case UINT16_LIT:
		value.u16 = src.value.u16;
		break;
	case UINT32_LIT:
		value.u32 = src.value.u32;
		break;
	case UINT64_LIT:
		value.u64 = src.value.u64;
		break;

	case FLOAT32_LIT:
		value.f32 = src.value.f32;
		break;
	case FLOAT64_LIT:
		value.f64 = src.value.f64;
		break;

	case FUNCTION_NAME:
	case ID:
	case NAMESPACE_NAME:
	case TYPE_NAME:
	case VARIABLE_NAME:
	case INVALID_NUMBER:
	case INVALID_STRING:
	case STRING_LIT:
	case REGEXP_LIT:
		lexium =  src.lexium;
		break;

	case DATE_LIT:
		value.date = src.value.date;
		break;
	case DATETIME_LIT:
		value.dateTime = src.value.dateTime;
		break;
	case INTEGER_LIT:
		integer = src.integer;
		break;
	case REAL_LIT:
		real = src.real;
		break;
	case TIME_LIT:
		value.time = src.value.time;
		break;
	}
}

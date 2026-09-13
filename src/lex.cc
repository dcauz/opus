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
bool isDate( Token & tok, Parser * context )
{
	char * start = context->cp;
	char * cp = start;

	if( isdigit(cp[0]) && isdigit(cp[1]) && isdigit(cp[2]) && isdigit(cp[3]) &&
		isdigit(cp[5]) && isdigit(cp[6]) &&
		isdigit(cp[8]) && isdigit(cp[9]) )
	{
		if( is1stTokenChar(cp[10]))
			throw std::runtime_error( "Invalid token" );

			tok.set( context->lineNo, context->columnNo, Date(
				D(cp[0])*1000 + D(cp[1])*100 + D(cp[2])*10 + D(cp[3]),
				D(cp[5])*10 + D(cp[6]),
				D(cp[8])*10 + D(cp[9])) );
			
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
bool isDatetime( Token & tok, Parser * context )
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

		tok.set( context->lineNo, context->columnNo, Datetime( y, m, d, hour, min, sec, ms ) );
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
bool isTime( Token & tok, Parser * context )
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

			tok.set( context->lineNo, context->columnNo, 
				Time( D(cp[0])*10+D(cp[1]), D(cp[3])*10+D(cp[4]),
				D(cp[6])*10+D(cp[7]), ms ) );
		}
		else
		{
			tok.set( context->lineNo, context->columnNo,
				Time( D(cp[0])*10+D(cp[1]), D(cp[3])*10+D(cp[4]),
				D(cp[6])*10+D(cp[7]), 0 ) );
		}	

		return true;
	}
	return false;
}

static bool isInteger( Parser * context, char c, Token & tok )
{
	TODO
	return false;
}

static bool isNumber( Parser * context, char c, Token & tok )
{
	char * start = context->cp;
	char * cp = start;

	__uint128_t	v = 0;

	if( c == '0' )
	{
		if((*cp == 'x' ) || (*cp == 'X' )) 	// hexidecimal
		{
			++cp;
			while( isxdigit(*cp) )
			{
				int d;
				if( isdigit(*cp))
					d = *cp - '0';
				else if( *cp >= 'a' )
					d = *cp - 'a' + 10;
				else
					d = *cp - 'A' + 10;

				if( v > ( std::numeric_limits<uint64_t>::max() - d )/16)
					// Too big. It is an integer
					return isInteger( context, c, tok );
				else
					v = 16*v + d;
				++cp;
			}

			goto isInt;
		}
		else if((*cp == 'b' ) || (*cp == 'B' )) // binary
		{
			++cp;
			__uint128_t v = 0;
			__uint128_t d = 1;
			while( *cp == '0' || *cp == '1' )
			{
				d = *cp - '0';
				if( *cp == 1 && ( v > ( std::numeric_limits<uint64_t>::max() - d )/2))
					// Too big. It is an integer
					return isInteger( context, c, tok );
				else
					v = v*2 + d;
				++cp;
			}

			goto isInt;
		}
		else // octal
		{
			__uint128_t v = 0;
			__uint128_t d = 1;
			while(*cp >= '0' && *cp <= '7')
			{
				d = *cp - '0';
				if( *cp != 0 && ( v > ( std::numeric_limits<uint64_t>::max() - d )/8))
					// Too big. It is an integer
					return isInteger( context, c, tok );
				else
					v = 8*v + d;
				++cp;
			}

			goto isInt;
	 	}
	}
	else
	{
		int d = c - '0';
		while(*cp && isdigit(*cp))
		{
			d = *cp - '0';
			if( v > ( std::numeric_limits<__uint128_t>::max() - d )/10)
			{
					// Too big. It is an integer
					return isInteger( context, c, tok );
			}

			v = v*10 + d;
			++cp;
		}

		if( *cp == '.' )
		{
			++cp;
			while(*cp && isdigit(*cp))
					++cp;
		}

		if( *cp == 'f' || *cp == 'e' || *cp == 'E' )
		{
			char t = *cp++;
			bool negExp = *cp++ == '-';
			while(*cp && isdigit(*cp))
					++cp;

			char * end;
			if( t == 'f' )
			{
				double d = strtod( start, &end );
				tok.set( context->lineNo, context->columnNo, static_cast<float>(d));
			}
			else if( t == 'e' )
			{
				double d = strtod( start, &end );
				tok.set( context->lineNo, context->columnNo, d );
			}
			else
			{
				__float80 val = strtold(start, &end);
				tok.set( context->lineNo, context->columnNo, val );
			}

			// Update cp past end of token
			context->cp = cp;
	
			return !isTokenChar(*cp);
		}
	}

isInt:	
	if(( v >= std::numeric_limits<int32_t>::min()) && ( v <= std::numeric_limits<int32_t>::max()))
		tok.set( context->lineNo, context->columnNo, static_cast<int32_t>(v));
	else if( v >= 0 && v <= std::numeric_limits<uint32_t>::max())
		tok.set( context->lineNo, context->columnNo, static_cast<uint32_t>(v));
	else if(( v >= std::numeric_limits<int64_t>::min()) && ( v <= std::numeric_limits<int64_t>::max()))
		tok.set( context->lineNo, context->columnNo, static_cast<int64_t>(v));
	else if( v >= 0 && v <= std::numeric_limits<uint64_t>::max())
		tok.set( context->lineNo, context->columnNo, static_cast<uint64_t>(v));
	else if(( v >= std::numeric_limits<__int128_t>::max()) && ( v <= std::numeric_limits<__int128_t>::max()))
		tok.set( context->lineNo, context->columnNo, static_cast<__int128_t>(v));
	else
		tok.set( context->lineNo, context->columnNo, static_cast<__uint128_t>(v));

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

#define DEBUG_NEXTCHAR

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
		{
			++context->lineNo;
			context->columnNo = 0;
			context->cp = context->line;
		}
		else
			RET_CHAR(0);
	}

	if( *context->cp )
	{
		++context->columnNo;
		RET_CHAR(*context->cp++);
	}
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
		break;
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

enum Stype
{
	NULL_TERM,
	LEN_PRE,
	LEN_PRE_NULL_TERM
};

static void isString( Parser * context, Token & tok, Stype stype )
{
printf( "%s:%d\n", __FILE__, __LINE__ );
	bool escaped = false;
	
	int c = nextChar( context );
	std::string lexium;
	lexium = c;
	int loc = 0;
	
	while( c )
	{
		if( c == '\\' )
		{
			if( !escaped )
				escaped = true;
			else
				lexium += c;
		}
		else if( escaped )
		{
			escaped = false;
			char es;
			if( escapeChar( c, es ) )
				lexium += es;
				++loc;
		}
		else if( c == '"' )
		{
			if( stype == NULL_TERM )
			{
				if( lexium.size() < 16 )
					tok.set( context->lineNo, context->columnNo, ID::SSTRING_LIT, lexium );
				else
					tok.set( context->lineNo, context->columnNo, ID::STRING_LIT, lexium );
			}
			else if( stype == LEN_PRE )
			{
				if( lexium.size() < 16 )
					tok.set( context->lineNo, context->columnNo, ID::LSSTRING_LIT, lexium );
				else
					tok.set( context->lineNo, context->columnNo, ID::LSTRING_LIT, lexium );
			}
			else // LEN_PRE_NULL_TERM
			{
				if( lexium.size() < 16 )
					tok.set( context->lineNo, context->columnNo, ID::LTSSTRING_LIT, lexium );
				else
					tok.set( context->lineNo, context->columnNo, ID::LTSTRING_LIT, lexium );
			}

			return;
		}
		else
		{
			lexium += c;
			++loc;
		}

		c = nextChar( context );
	}
			
	tok.set( context->lineNo, context->columnNo, ID::INVALID_STRING, lexium );
printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
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
		TODO
//		tok.id = ID::REGEXP_LIT;
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
printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
	while( c && isspace(c) )
		c = nextChar( context );

printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
	if( c == 0 )
		return;

	while(true)
	{
printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
		switch(c)
		{
		case ';':
			context->inSelect = false;
			tok.set( context->lineNo, context->columnNo, ID::SCOLON );
			return;
		case ':':
			tok.set( context->lineNo, context->columnNo, ID::COLON );
			return;
		case ',':
			tok.set( context->lineNo, context->columnNo, ID::COMMA );
			return;
		case '?':
			tok.set( context->lineNo, context->columnNo, ID::QUEST );
			return;
		case '(': 
			tok.set( context->lineNo, context->columnNo, ID::LPAREN );
			return;
		case ')':
			tok.set( context->lineNo, context->columnNo, ID::RPAREN );
			return;
		case '{': 
			tok.set( context->lineNo, context->columnNo, ID::LBRACE );
			return;
		case '}':
			tok.set( context->lineNo, context->columnNo, ID::RBRACE );
			return;
		case '[': 
			tok.set( context->lineNo, context->columnNo, ID::LBRACK );
			return;
		case ']':
			tok.set( context->lineNo, context->columnNo, ID::RBRACK );
			return;
		case '~': 
			tok.set( context->lineNo, context->columnNo, ID::BNOT );
			return;
		case '#':
			tok.set( context->lineNo, context->columnNo, ID::WEAK );
			return;
		}

printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
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
				tok.set( context->lineNo, context->columnNo, ID::NE );
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::NOT );
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
				tok.set( context->lineNo, context->columnNo, ID::MOD_ASS );
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::MOD );
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
				tok.set( context->lineNo, context->columnNo, ID::AND_ASS );
				return;
			}
			else if( n == '&')
			{
				tok.set( context->lineNo, context->columnNo, ID::AND );
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::BAND );
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
				tok.set( context->lineNo, context->columnNo, ID::LBRACK );
			}
			else if( n == '/' )
			{
				char n2 = nextChar(context );
				context->charLookahead[0] = n;
				context->charLookahead[1] = n2;
				tok.set( context->lineNo, context->columnNo, ID::LBRACK );
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::LBRACK );
				return;
			}
		}

		case '*':
		{
			char n = nextChar( context );
			if( n == '=')
			{
				tok.set( context->lineNo, context->columnNo, ID::MUL_ASS );
				return;
			}
			else if( n == '*')
			{
				tok.set( context->lineNo, context->columnNo, ID::EXP );
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::MUL );
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
				tok.set( context->lineNo, context->columnNo, ID::ADD_ASS );
				return;
			}
			else if( n == '+' )
			{
				tok.set( context->lineNo, context->columnNo, ID::INC );
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::ADD );
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
				tok.set( context->lineNo, context->columnNo, ID::SUB_ASS );
				return;
			}
			else if( n == '-' )
			{
				tok.set( context->lineNo, context->columnNo, ID::DEC );
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::SUB );
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
				tok.set( context->lineNo, context->columnNo, ID::DIV_ASS );
				return;
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::DIV );
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
					tok.set( context->lineNo, context->columnNo, ID::DOT_DOT_DOT );
				else
				{
					context->charLookahead[0] = n2;
					tok.set( context->lineNo, context->columnNo, ID::DOT_DOT );
				}
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::DOT );
			}
			return;
		}

		// =
		// ==  EQ
		case '=':
		{
			char n = nextChar( context );
			if( n == '=')
				tok.set( context->lineNo, context->columnNo, ID::EQ );
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::ASSIGN );
			}
			return;
		}

		// <
		// <=	LE
		// <<	SHIFTL
		// <<=	SL_ASS
		case '<':
		{
			char n = nextChar( context );
			if( n == '=')
				tok.set( context->lineNo, context->columnNo, ID::LE );
			else if( n == '<')
			{
				char n2 = nextChar( context );

				if( n2 == '=' )
					tok.set( context->lineNo, context->columnNo, ID::SLFT_ASS );
				else
				{
					context->charLookahead[0] = n2;
					tok.set( context->lineNo, context->columnNo, ID::SLFT );
				}
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::LT );
			}
			return;
		}

		// >
		// >=	GE
		// >>	SHIFTR
		// >>=	SR_ASS
		case '>':
		{
			char n = nextChar( context );
			if( n == '=')
				tok.set( context->lineNo, context->columnNo, ID::GE );
			else if( n == '>')
			{
				char n2 = nextChar( context );

				if( n2 == '=' )
					tok.set( context->lineNo, context->columnNo, ID::SRGHT_ASS );
				else
				{
					context->charLookahead[0] = n2;
					tok.set( context->lineNo, context->columnNo, ID::SRGHT );
				}
			}
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::GT );
			}
			return;
		}

		// ^
		// ^=  XOR_ASS
		case '^':
		{
			char n = nextChar( context );
			if( n == '=')
				tok.set( context->lineNo, context->columnNo, ID::XOR_ASS );
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::XOR );
			}
			return;
		}

		// |
		// |=  OR_ASS
		// ||  OR
		case '|':
		{
			char n = nextChar( context );
			if( n == '=')
				tok.set( context->lineNo, context->columnNo, ID::OR_ASS );
			else if( n == '|')
				tok.set( context->lineNo, context->columnNo, ID::OR );
			else
			{
				context->charLookahead[0] = n;
				tok.set( context->lineNo, context->columnNo, ID::OR );
			}
			return;
		}
		}

printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
		if( isdigit(c))
		{
printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
			if( isNumber( context, c, tok ) )
				return;
	
			int loc = 0;
			std::string lexium;
			lexium += c;
			do
			{
				lexium += c;
				++loc;
				c = nextChar( context );
			} while( c && !isspace(c) );

			tok.set( context->lineNo, context->columnNo, ID::INVALID_NUMBER, lexium );
			return;
		}
		else if( c == '_' )
		{
printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
			int loc = 0;
			std::string lexium;
			lexium = c;
			++loc;
	
			c = nextChar( context );
			while( c == '_' || isalnum(c))
			{
				lexium += c;
				++loc;
				c = nextChar( context );
			}
			context->charLookahead[0] = c;
	
			if( lexium == "_e" )
			{
				tok.set( context->lineNo, context->columnNo, ID::_E );
				return;
			}
			else if( lexium == "_gamma" )
			{
				tok.set( context->lineNo, context->columnNo, ID::_GAMMA );
				return;
			}
			else if( lexium == "_i" )
			{
				tok.set( context->lineNo, context->columnNo, ID::_I );
				return;
			}
			else if( lexium == "_inf" )
			{
				tok.set( context->lineNo, context->columnNo, ID::_INF );
				return;
			}
			else if( lexium == "_nan" )
			{
				tok.set( context->lineNo, context->columnNo, ID::_NAN );
				return;
			}
			else if( lexium == "_phi" )
			{
				tok.set( context->lineNo, context->columnNo, ID::_PHI );
				return;
			}
			else if( lexium == "_pi" )
			{
				tok.set( context->lineNo, context->columnNo, ID::_PI );
				return;
			}

			if( lexium.size() < 16 )
				tok.set( context->lineNo, context->columnNo, ID::SID, lexium );
			else
				tok.set( context->lineNo, context->columnNo, ID::ID, lexium );

			return;
		}
		else if(isalpha(c))
		{
printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
			int loc = 0;

			std::string lexium;
			lexium = c;
			++loc;
	
			char firstChar = c;
			c = nextChar( context );
	
			if( firstChar == 'l' && c == '"' )
			{
				isString( context, tok, LEN_PRE );
				return;
			}

			if( firstChar == 'l' && c == 't' )
			{
				char secondChar = c;
				c = nextChar( context );

				if( c == '"' )
				{
					isString( context, tok, LEN_PRE_NULL_TERM );
					return;
				}
				else
					lexium += secondChar;
			}

			while( c == '_' || isalnum(c))
			{
				lexium += c;
				++loc;
				c = nextChar( context );
			}
			context->charLookahead[0] = c;
	
			for (unsigned int i = 0; i < noOfKeyWords; ++i )
			{
				if( lexium == keyWords[i].lexium )
				{
					tok.set( context->lineNo, context->columnNo, keyWords[i].id );
					if( tok.id() == ID::SELECT )
						context->inSelect = true;
					return;
				}
			}

			if( context->inSelect )
			{
				static const std::map<std::string, ID > sqlReservedWords =
				{
					{ "as",		ID::AS },
					{ "asc",	ID::ASC },
					{ "by",		ID::BY },
					{ "closure",ID::CLOSURE },
					{ "distinct",ID::DISTINCT },
					{ "dsc",	ID::DSC },
					{ "foreign",ID::FOREIGN },
					{ "from", 	ID::FROM },
					{ "group", 	ID::GROUP },
					{ "having", ID::HAVING },
					{ "into", 	ID::INTO },
					{ "join", 	ID::JOIN },
					{ "left", 	ID::LEFT },
					{ "order", 	ID::ORDER },
					{ "outer", 	ID::OUTER },
					{ "percent",ID::PERCENT },
					{ "right", 	ID::RIGHT },
					{ "ties", 	ID::TIES },
					{ "top", 	ID::TOP },
					{ "unique", ID::UNIQUE },
					{ "values", ID::VALUES },
					{ "where", 	ID::WHERE },
					{ "with", 	ID::WITH },
				};

				auto it = sqlReservedWords.find( lexium );
				if( it != sqlReservedWords.end() )
				{
					tok.set( context->lineNo, context->columnNo, it->second );
					return;
				}
			}

			if( lexium.size() < 16 )
				tok.set( context->lineNo, context->columnNo, ID::SID, lexium );
			else
				tok.set( context->lineNo, context->columnNo, ID::ID, lexium );

			return;
		}
		//  Raw string literal
		else if( c == '\'' )
		{
printf( "%s:%d c %c\n", __FILE__, __LINE__, c );
			bool escaped = false;
	
			c = nextChar( context );

			std::string lexium;
			lexium = c;
			int loc = 0;
	
			while( c )
			{
				if( c == '\\' )
				{
					if( !escaped )
						escaped = true;
					else
					{
						lexium += c ;
						++loc;
					}
				}
				else if( escaped )
				{
					escaped = false;
					char es;
					if( escapeChar( c, es ))
						lexium += es;
					++loc;
				}
				else if( c == '\'' )
				{
					if( isRegexp( context, tok ) )
						return;
					if( lexium.size() < 16 )
						tok.set( context->lineNo, context->columnNo,  ID::SSTRING_LIT, lexium );
					else
						tok.set( context->lineNo, context->columnNo,  ID::STRING_LIT, lexium );
					return;
				}
				else
				{
					lexium += c;
					++loc;
				}

				c = nextChar( context );
			}
			
			tok.set( context->lineNo, context->columnNo, ID::INVALID_STRING, lexium );
			return ;
		}
		//  STRING_LIT
		else if( c == '"' )
		{
			isString( context, tok, NULL_TERM );
			return;
		}
	}
}

};

void lexPushBack( Token & tok, Parser * context )
{
	context->lookahead = std::move(tok);
}

void lex( Token & tok, Parser * context )
{
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );
	if( context->lookahead.id() != ID::NIL )
	{
		tok = std::move(context->lookahead);
#define DEBUG_YYLEX
#ifdef DEBUG_YYLEX
	dumpToken( tok );
#endif
		return;
	}

printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );
	nextToken( tok, context );
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );

	if( tok.id() == ID::TYPE || tok.id() == ID::ENUM || tok.id() == ID::INTERFACE || tok.id() == ID::UNION )
		context->typeSeen = true;

printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );
	if( context->typeSeen && tok.isId() )
	{
		context->typeSeen = false;
		context->classes.push(tok.idLexium());
		context->pushSymTbl(tok.idLexium());
	}

printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );
	if( tok.isId() )
	{
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );
		Symbol * sym = context->currSymTbl->find(tok.idLexium());

		if( sym != nullptr )
		{
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );
			if( FunctionType * ft = dynamic_cast<FunctionType *>(sym))
				tok.setNameType( ID::FUNCTION_NAME );
			else if( Type * t = dynamic_cast<Type *>(sym))
				tok.setNameType( ID::TYPE_NAME );
			else if( Alias * a = dynamic_cast<Alias *>(sym))
				tok.setNameType( ID::TYPE_NAME );
			else if( TemplateParam * tp = dynamic_cast<TemplateParam *>(sym))
			{
				Type * typ = tp->type();

				if( typ != nullptr )
					tok.setNameType( ID::VARIABLE_NAME );
				else
					tok.setNameType( ID::TYPE_NAME );
			}
			else if( Variable * v = dynamic_cast<Variable *>(sym))
				tok.setNameType( ID::VARIABLE_NAME );
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );
		}
	}
printf( "%s:%d %s\n", __FILE__, __LINE__, __func__ );

#ifdef DEBUG_YYLEX
	dumpToken( tok );
#endif
}

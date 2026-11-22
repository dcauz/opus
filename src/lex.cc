#include "date.h"
#include "datetime.h"
#include "duration.h"
#include "opus.h"
#include "parser.h"
#include "time.h"
#include "token.h"

#include <cassert>
#include <cctype>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <limits>
#include <string>
#include <map>
#include <inttypes.h>


inline bool is1stTokenChar( char c )
{
  return  (c == '"') ||
      (c == '\'') ||
      (c == '_') ||
      isalpha(c) ||
      isdigit(c);
}

inline bool isTokenChar( char c )
{
  return (c == '_') || isalpha(c) || isdigit(c);
}

inline int D(char c)  { return c - '0'; }

/*
DATE_LIT  
  d"yyyy-mm-dd"

DATETIME_LIT  
      0123456789012345678 9
  d"yyyy-mm-dd hh:mm:ss[.d*]"
*/
void Parser::isDatetime( Token & tok )
{
  size_t len = strlen(this->cp);

  if( len < 11 )
  {
    TODO
    return;
  }

  char * start = this->cp;
  char * cp = start;

  if( len >= 20 &&
    isdigit(cp[0]) && isdigit(cp[1]) && isdigit(cp[2]) && isdigit(cp[3]) &&  // YYYY
    isdigit(cp[5]) && isdigit(cp[6]) &&    // MM
    isdigit(cp[8]) && isdigit(cp[9]) &&   // DD
    isdigit(cp[11]) && isdigit(cp[12]) &&  // hh
    isdigit(cp[14]) && isdigit(cp[15]) &&  // mm
    isdigit(cp[17]) && isdigit(cp[18]) )  // ss
  {
    int y = D(cp[0])*1000 + D(cp[1])*100 + D(cp[2])*10 + D(cp[3]);
    int m = D(cp[5])*10 + D(cp[6]);
    int d = D(cp[8])*10 + D(cp[9]);
    int hour = D(cp[11])*10 + D(cp[12]);
    int min = D(cp[14])*10 + D(cp[15]);
    int sec = D(cp[17])*10 + D(cp[18]);
    int ms = 0;

    if(cp[19] == '.' )
    {
      if(isdigit(cp[20]))
      {
        ms = D(cp[20]);

        int n = 21;
        while(isdigit(cp[n]))
        {
          ms = ms*10 + D(cp[n]);
          ++n;
        }

        if( cp[n] != '"' )
          throw std::runtime_error( "Invalid token" );

        columnNo += n+1;
        this->cp += n+1;
      }
      else
        throw std::runtime_error( "Invalid token" );
    }
    else if( cp[19] == '"' )
    {
      columnNo += 20;
      this->cp += 20;
    }

    tok.set( lineNo, columnNo, Datetime( y, m, d, hour, min, sec, ms ) );
  }
  else if( isdigit(cp[0]) && isdigit(cp[1]) && isdigit(cp[2]) && isdigit(cp[3]) &&  // YYYY
    isdigit(cp[5]) && isdigit(cp[6]) &&                        // MM
    isdigit(cp[8]) && isdigit(cp[9]) &&                       // DD
    cp[10] == '"' ) 
  {
    int y = D(cp[0])*1000 + D(cp[1])*100 + D(cp[2])*10 + D(cp[3]);
    int m = D(cp[5])*10 + D(cp[6]);
    int d = D(cp[8])*10 + D(cp[9]);

    columnNo += 11;
    this->cp += 11;

    tok.set( lineNo, columnNo, Date( y, m, d ) );
  }
}

/*
TIME_LIT    
  t"hh:mm:ss"
  t"hh:mm:ss.ddd"
  t"hh:mm:ss.dddddd"
  t"hh:mm:ss.ddddddddd"
*/
void Parser::isTime( Token & tok )
{
  char * start = this->cp;
  char * cp = start;

  size_t len = strlen(cp);

  if( len > 8 && 
    isdigit(cp[0]) && isdigit(cp[1]) && // hh
    isdigit(cp[3]) && isdigit(cp[4]) &&  // mm
    isdigit(cp[6]) && isdigit(cp[7]) )  // ss
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

      if( cp[n] != '"' )
        throw std::runtime_error( "Invalid token" );

      columnNo += n+1;
      this->cp += n+1;

      tok.set( lineNo, columnNo, 
        Time(   D(cp[0])*10+D(cp[1]), 
            D(cp[3])*10+D(cp[4]),
            D(cp[6])*10+D(cp[7]), 
            ms ) );
    }
    else if( cp[8] == '"' )
    {
      tok.set( lineNo, columnNo,
        Time(  D(cp[0])*10+D(cp[1]), 
            D(cp[3])*10+D(cp[4]),
            D(cp[6])*10+D(cp[7]), 0 ) );

      columnNo += 9;
      this->cp += 9;
    }  
    else
      throw std::runtime_error( "Invalid token" );
  }
}

bool Parser::isInteger( Token & tok )
{
  char * start = this->cp;
  char * cp = start;

  while(isdigit(*cp))
    ++cp;

  Integer * out = new Integer(start,cp);

  tok.set( lineNo, columnNo, out );

  this->cp += cp-start;
  columnNo+= cp-start;

  return true;
}

static void getIntLitToken( unsigned short l, unsigned short c, __uint128_t v, Token & tok )
{
  if( v <= std::numeric_limits<int32_t>::max())
    tok.set( l, c, static_cast<int32_t>(v));
  else if( v <= std::numeric_limits<uint32_t>::max())
    tok.set( l, c, static_cast<uint32_t>(v));
  else if( v <= std::numeric_limits<int64_t>::max())
    tok.set( l, c, static_cast<int64_t>(v));
  else if( v <= std::numeric_limits<uint64_t>::max())
    tok.set( l, c, static_cast<uint64_t>(v));
  else if( v <= std::numeric_limits<__int128_t>::max())
    tok.set( l, c, static_cast<__int128_t>(v));
  else
    tok.set( l, c, static_cast<__uint128_t>(v));
}

bool Parser::isFloat( __uint128_t v, Token & tok )
{
  char * start = this->cp;
  char * cp = start;

  assert( *cp == '.' );

  double secs = v;

  double div = 10;
  ++cp;

  // NOT float: int-lit ..
  if( *cp == '.' )
  {
    getIntLitToken( lineNo, columnNo, v, tok );
	  emplaceLookahead( lineNo, columnNo, ID::DOT_DOT );

    this->cp += 2;
	  columnNo += 2;

	  return true;
  }

  while(*cp && isdigit(*cp))
  {
    int d = *cp - '0';
    secs += d/div;
    div *= 10;

    ++cp;
  }

  char t = 0;
  if( *cp == 'f' || *cp == 'e' || *cp == 'E' )
  {
    t = *cp++;

    int exp = 0;
    while(*cp && isdigit(*cp))
    {
      exp = 10*exp + *cp-'0';
      ++cp;
    }
  }

  if( *cp == 's' )
  {
    if( t != 0 )
      throw std::runtime_error( "Invalid token" );

    tok.set( lineNo, columnNo, Second(secs) );

    ++cp;
    this->cp += cp-start;
    columnNo+= cp-start;
  }
  else
  {
    char * end;
    if( t == 'f' )
    {
      double d = strtod( start, &end );
      tok.set( lineNo, columnNo, static_cast<float>(d));
    }
    else if( t == 'e' )
    {
      double d = strtod( start, &end );
      tok.set( lineNo, columnNo, d );
    }
    else
    {
      __float80 val = strtold(start, &end);
      tok.set( lineNo, columnNo, val );
    }

    this->cp += cp-start;
    columnNo+= cp-start;
  }

  return !isTokenChar(*cp);
}

bool Parser::isNumber( char c, Token & tok )
{
  char * start = this->cp;
  char * cp = start;

  __uint128_t  v = 0;

  if( c == '0' )
  {
    if( *cp == '.' )
      return isFloat( 0, tok );

    if((*cp == 'x' ) || (*cp == 'X' ))   // hexidecimal
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

        if( v > ( std::numeric_limits<__uint128_t>::max() - d )/16)
          // Too big. It is an integer
          throw std::runtime_error( "integer constant is too big" );
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
        if( *cp == 1 && ( v > ( std::numeric_limits<__uint128_t>::max() - d )/2))
          // Too big. It is an integer
          throw std::runtime_error( "integer constant is too big" );
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
        if( *cp != 0 && ( v > ( std::numeric_limits<__uint128_t>::max() - d )/8))
          // Too big. It is an integer
          throw std::runtime_error( "integer constant is too big" );
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
    v = d;

    while(*cp && isdigit(*cp))
    {
      d = *cp - '0';
      if( v > ( std::numeric_limits<__uint128_t>::max() - d )/10)
      {
          // Too big. It is an integer
          return isInteger( tok );
      }

      v = v*10 + d;

      ++cp;
    }

    if( *cp == '.' )
    {
      columnNo += cp - this->cp;
      this->cp = cp;
      return isFloat( v, tok );
    }
    else if( *cp == 'Y' )
    {
      tok.set( lineNo, columnNo, Year(v) );

      this->cp += cp-start+1;
      columnNo+= cp-start+1;

      return true;
    }
    else if( *cp == 'M' )
    {
      tok.set( lineNo, columnNo, Month(v) );

      this->cp += cp-start+1;
      columnNo+= cp-start+1;

      return true;
    }
    else if( *cp == 'D' )
    {
      tok.set( lineNo, columnNo, Day(v) );

      this->cp += cp-start+1;
      columnNo+= cp-start+1;

      return true;
    }
    else if( *cp == 'h' )
    {
      tok.set( lineNo, columnNo, Hour(v) );

      this->cp += cp-start+1;
      columnNo+= cp-start+1;

      return true;
    }
    else if( *cp == 'm' )
    {
      tok.set( lineNo, columnNo, Minute(v) );

      this->cp += cp-start+1;
      columnNo+= cp-start+1;

      return true;
    }
    else if( *cp == 's' )
    {
      tok.set( lineNo, columnNo, Second(v) );

      this->cp += cp-start+1;
      columnNo+= cp-start+1;

      return true;
    }
    else if(isTokenChar(*cp))
      throw std::runtime_error( "Invalid token" );
  }

isInt:
  getIntLitToken( lineNo, columnNo, v, tok );

  // Update cp past end of token
  this->cp = cp;

  return !isTokenChar(*cp);
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
#define RET_CHAR(i)  return i
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
getLine:
		if( fgets( context->line, Parser::MAX_LINE, context->fh ) )
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
  {
    goto getLine;
  }

  RET_CHAR(0);
}

bool escapeChar( char c, char & out )
{
  switch(c)
  {
  default:
    return false;

  case '\\':
    out = 0x5c;  // backslash
    break;
  case '\'':
    out = 0x27;  // single quote
    break;
  case '"':
    out = 0x22;  // double quote
    break;
  case 'a':
    out = 0x07;  // alarm (beep)
    break;
  case 'b':
    out = 0x08;  // backspace
    break;
  case 'f':
    out = 0x0c;  // formfeed
    break;
  case 'n':
    out = 0x0a;  // newline
    break;
  case 'r':
    out = 0x0d;  // carriage return
    break;
  case 't':
    out = 0x09;  // horizontal tab
    break;
  case 'v':
    out = 0x0b;  // vertical tab
    break;
  }

  return true;
}

void Parser::isString( Token & tok, Stype stype )
{
  bool escaped = false;
  
  int c = nextChar( this );
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
          tok.set( lineNo, columnNo, ID::SSTRING_LIT, lexium );
        else
          tok.set( lineNo, columnNo, ID::STRING_LIT, lexium );
      }
      else if( stype == LEN_PRE )
      {
        if( lexium.size() < 16 )
          tok.set( lineNo, columnNo, ID::LSSTRING_LIT, lexium );
        else
          tok.set( lineNo, columnNo, ID::LSTRING_LIT, lexium );
      }
      else if( stype == LEN_PRE_NULL_TERM )
      {
        if( lexium.size() < 16 )
          tok.set( lineNo, columnNo, ID::LTSSTRING_LIT, lexium );
        else
          tok.set( lineNo, columnNo, ID::LTSTRING_LIT, lexium );
      }
      else // REG_EXP
      {
        if( lexium.size() < 16 )
          tok.set( lineNo, columnNo, ID::SREGEXP_LIT, lexium );
        else
          tok.set( lineNo, columnNo, ID::REGEXP_LIT, lexium );
      }

      return;
    }
    else
    {
      lexium += c;
      ++loc;
    }

    c = nextChar( this );
  }
      
  tok.set( lineNo, columnNo, ID::INVALID_STRING, lexium );
}

/*
REGEX_LIT    
  ' 'r
  " "r
*/
bool Parser::isRegexp( Token & )
{
  int c = nextChar( this );

  if( c == 'r' )
  {
    TODO
//    tok.id = ID::REGEXP_LIT;
    return true;
  }
  else
  {
    charLookahead[0] = c;
    return false;
  }
}

static void eatLineComment( Token & tok, Parser * context )
{
	int c = nextChar(context);
    std::string lexium;

	while( c != '\n' )
	{
		lexium += c;
	    c = nextChar(context);
	}

	tok.set( context->lineNo, context->columnNo, ID::L_COMMENT, lexium);
}

static void eatBlockComment( Token & tok, Parser * context )
{
	int c = nextChar(context);
  std::string lexium;

  bool astrixSeen = false;
	while( true )
	{
    if( c == '/' && astrixSeen )
      return;
    else if( c == '*' )
      astrixSeen = true;
    else
      astrixSeen = false;

		lexium += c;
    c = nextChar(context);
	}

	tok.set( context->lineNo, context->columnNo, ID::L_COMMENT, lexium);
}

void Parser::nextToken( Token & tok )
{
  int c = nextChar( this );
  while( c && isspace(c) )
    c = nextChar( this );

  if( c == 0 )
    return;

  while(true)
  {
    switch(c)
    {
    case ';':
      inSelect = false;
      tok.set( lineNo, columnNo, ID::SCOLON );
      return;
    case ':':
      tok.set( lineNo, columnNo, ID::COLON );
      return;
    case ',':
      tok.set( lineNo, columnNo, ID::COMMA );
      return;
    case '?':
      tok.set( lineNo, columnNo, ID::QUEST );
      return;
    case '(': 
      tok.set( lineNo, columnNo, ID::LPAREN );
      return;
    case ')':
      tok.set( lineNo, columnNo, ID::RPAREN );
      return;
    case '{': 
      tok.set( lineNo, columnNo, ID::LBRACE );
      return;
    case '}':
      tok.set( lineNo, columnNo, ID::RBRACE );
      return;
    case ']':
      tok.set( lineNo, columnNo, ID::RBRACKET );
      return;
    }

    switch(c)
    {
    // !
    // .!  POST_EXCLAIM
    // !=  NE
    case '!':
    {
      char n = nextChar( this );
      if( n == '=')
      {
        tok.set( lineNo, columnNo, ID::NE );
        return;
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::NOT );
        return;
      }
    }

    // %
    // %=  MOD_ASS
    case '%':
    {
      char n = nextChar( this );
      if( n == '=')
      {
        tok.set( lineNo, columnNo, ID::MOD_ASS );
        return;
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::MOD );
        return;
      }
    }

    // ~   BNOT (aka RE_MATCH)
    // ~=  BNOT_ASS
    case '~': 
    {
      char n = nextChar( this );
      if( n == '=')
      {
        tok.set( lineNo, columnNo, ID::BNOT_ASS );
        return;
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::RE_MATCH );
        return;
      }
    }

    // &
    // &=  BAND_ASS
    // &&  AND
    // &&=  AND
    case '&':
    {
      char n = nextChar( this );
      if( n == '=')
      {
        tok.set( lineNo, columnNo, ID::BAND_ASS );
        return;
      }
      else if( n == '&')
      {
        char n2 = nextChar( this );
				if( n2 == '=' )
          tok.set( lineNo, columnNo, ID::AND_ASS );
				else
				{
          tok.set( lineNo, columnNo, ID::AND );
          charLookahead[0] = n2;
				}
        return;
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::BAND );
        return;
      }
    }

    case '[':
    {
      char n = nextChar( this );
      if( n == '*')
      {
        char n2 = nextChar( this );
		if( n2 == ']' )
			tok.set( lineNo, columnNo, ID::CRS_PROD );
		else if( n2 == '*' )
		{
          char n3 = nextChar( this );
		  if( n3 == ']' )
		  {
			tok.set( lineNo, columnNo, ID::M_EXP );
		  }
		  else
		  {
            charLookahead[0] = n;
            charLookahead[1] = n2;
            charLookahead[2] = n3;
            tok.set( lineNo, columnNo, ID::LBRACKET );
		  }
		}
		else
		{
          charLookahead[0] = n;
          charLookahead[1] = n2;
          tok.set( lineNo, columnNo, ID::LBRACKET );
		}
      }
      else if( n == '.' )
      {
        char n2 = nextChar( this );

		if( n2 == ']' )
		{
			tok.set( lineNo, columnNo, ID::DOT_PROD );
		}
		else
		{
          charLookahead[0] = n;
          charLookahead[1] = n2;
          tok.set( lineNo, columnNo, ID::LBRACKET );
		}
      }
      else if( n == '/' )
      {
        char n2 = nextChar( this );

		if( n2 == ']' )
			tok.set( lineNo, columnNo, ID::M_DIV );
		else
		{
          charLookahead[0] = n;
          charLookahead[1] = n2;
          tok.set( lineNo, columnNo, ID::LBRACKET );
		}
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::LBRACKET );
      }

      return;
    }

    case '*':
    {
      char n = nextChar( this );
      if( n == '=')
      {
        tok.set( lineNo, columnNo, ID::MUL_ASS );
        return;
      }
      else if( n == '*')
      {
        char n2 = nextChar( this );

        if( n2 == '=' )
        {
          tok.set( lineNo, columnNo, ID::EXP_ASS );
        }
        else
        {
          charLookahead[0] = n2;
          tok.set( lineNo, columnNo, ID::EXP );
        }
        return;
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::MUL );
        return;
      }
    }

    // +
    // .++ POST_INC
    // +=  P_ASS
    // ++  INC
    case '+':
    {
      char n = nextChar( this );
      if( n == '=')
      {
        tok.set( lineNo, columnNo, ID::ADD_ASS );
        return;
      }
      else if( n == '+' )
      {
        tok.set( lineNo, columnNo, ID::INC );
        return;
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::ADD );
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
      char n = nextChar( this );
      if( n == '=')
      {
        tok.set( lineNo, columnNo, ID::SUB_ASS );
        return;
      }
      else if( n == '-' )
      {
        tok.set( lineNo, columnNo, ID::DEC );
        return;
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::SUB );
        return;
      }
    }

    // /
    // /=  DIV_ASS
    // //  line comment
    // /*  block comment
    case '/':
    {
      char n = nextChar( this );
      if( n == '=')
      {
        tok.set( lineNo, columnNo, ID::DIV_ASS );
        return;
      }
	    else if( n == '/' )
	    {
  	     eatLineComment( tok, this );
  		   return;
  	  }
	    else if( n == '*' )
	    {
  	     eatBlockComment( tok, this );
  		   return;
  	  }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::DIV );
        return;
      }
  	  break;
    }

    // .
    // ..  DOT_DOT
    // ... DOT_DOT_DOT
    case '.':
    {
      char n = nextChar( this );
      if( n == '.')
      {
        char n2 = nextChar( this );
        
        if(n2 == '.')
          tok.set( lineNo, columnNo, ID::DOT_DOT_DOT );
        else
        {
          charLookahead[0] = n2;
          tok.set( lineNo, columnNo, ID::DOT_DOT );
        }
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::DOT );
      }
      return;
    }

    // =
    // ==  EQ
    case '=':
    {
      char n = nextChar( this );
      if( n == '=')
        tok.set( lineNo, columnNo, ID::EQ );
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::ASSIGN );
      }
      return;
    }

    // <
    // <=  LE
    // <<  SHIFTL
    // <<=  SL_ASS
    case '<':
    {
      char n = nextChar( this );
      if( n == '=')
	  {
        char n2 = nextChar( this );

		if( n2 == '>' )
          tok.set( lineNo, columnNo, ID::SS );
		else
		{
          charLookahead[0] = n2;
          tok.set( lineNo, columnNo, ID::LE );
		}
	  }
      else if( n == '<')
      {
        char n2 = nextChar( this );

        if( n2 == '=' )
          tok.set( lineNo, columnNo, ID::SLFT_ASS );
        else
        {
          charLookahead[0] = n2;
          tok.set( lineNo, columnNo, ID::SLFT );
        }
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::LT );
      }
      return;
    }

    // >
    // >=  GE
    // >>  SHIFTR
    // >>=  SR_ASS
    case '>':
    {
      char n = nextChar( this );
      if( n == '=')
        tok.set( lineNo, columnNo, ID::GE );
      else if( n == '>')
      {
        char n2 = nextChar( this );

        if( n2 == '=' )
          tok.set( lineNo, columnNo, ID::SRGHT_ASS );
        else
        {
          charLookahead[0] = n2;
          tok.set( lineNo, columnNo, ID::SRGHT );
        }
      }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::GT );
      }
      return;
    }

    // ^
    // ^^
    // ^=  XOR_ASS
    // ^^=  BXOR_ASS
    case '^':
    {
      char n = nextChar( this );
      if( n == '=')
        tok.set( lineNo, columnNo, ID::BXOR_ASS );
	  else if( n == '^' )
	  {
        char n2 = nextChar( this );
		if( n2 == '=' )
          tok.set( lineNo, columnNo, ID::XOR_ASS );
		else
		{
          charLookahead[0] = n2;
          tok.set( lineNo, columnNo, ID::XOR );
		}
	  }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::BXOR );
      }
      return;
    }

    // |   BOR
    // |=  BOR_ASS
    // ||  OR
    // ||= OR_ASS
    case '|':
    {
      char n = nextChar( this );
      if( n == '=')
        tok.set( lineNo, columnNo, ID::BOR_ASS );
      else if( n == '|')
	  {
        char n2 = nextChar( this );
        if( n2 == '=' )	
          tok.set( lineNo, columnNo, ID::OR_ASS );
        else
		{
          charLookahead[0] = n2;
          tok.set( lineNo, columnNo, ID::OR );
		}
	  }
      else
      {
        charLookahead[0] = n;
        tok.set( lineNo, columnNo, ID::BOR );
      }
      return;
    }
    }

    if( isdigit(c))
    {
      if( isNumber( c, tok ) )
        return;
  
      int loc = 0;
      std::string lexium;

      do
      {
        lexium += c;
        ++loc;
        c = nextChar( this );
      } while( c && !isspace(c) );

      tok.set( lineNo, columnNo, ID::INVALID_NUMBER, lexium );
      return;
    }
    else if( c == '_' )
    {
      int loc = 0;
      std::string lexium;
      lexium = c;
      ++loc;
  
      c = nextChar( this );
      while( c == '_' || isalnum(c))
      {
        lexium += c;
        ++loc;
        c = nextChar( this );
      }
      charLookahead[0] = c;
  
      if( lexium == "_e" )
      {
        tok.set( lineNo, columnNo, ID::_E );
        return;
      }
      else if( lexium == "_gamma" )
      {
        tok.set( lineNo, columnNo, ID::_GAMMA );
        return;
      }
      else if( lexium == "_i" )
      {
        tok.set( lineNo, columnNo, ID::_I );
        return;
      }
      else if( lexium == "_inf" )
      {
        tok.set( lineNo, columnNo, ID::_INF );
        return;
      }
      else if( lexium == "_nan" )
      {
        tok.set( lineNo, columnNo, ID::_NAN );
        return;
      }
      else if( lexium == "_phi" )
      {
        tok.set( lineNo, columnNo, ID::_PHI );
        return;
      }
      else if( lexium == "_pi" )
      {
        tok.set( lineNo, columnNo, ID::_PI );
        return;
      }

      if( lexium.size() < 16 )
        tok.set( lineNo, columnNo, ID::SID, lexium );
      else
        tok.set( lineNo, columnNo, ID::ID, lexium );

      return;
    }
    else if(isalpha(c))
    {
      int loc = 0;

      std::string lexium;
      lexium = c;
      ++loc;
  
      char firstChar = c;
      c = nextChar( this );
  
      if( firstChar == 'l' && c == '"' )
      {
        isString( tok, LEN_PRE );
        return;
      }
      else if( firstChar == 'L' && c == '"' )
      {
        isString( tok, LEN_PRE_NULL_TERM );
        return;
      }
      else if( firstChar == 'r' && c == '"' )
      {
        isString( tok, REG_EXP );
        return;
      }
      else if( firstChar == 'd' && c == '"' )
      {
        isDatetime( tok );
        return;
      }
      else if( firstChar == 't' && c == '"' )
      {
        isTime( tok );
        return;
      }

      while( c == '_' || isalnum(c))
      {
        lexium += c;
        ++loc;
        c = nextChar( this );
      }
      charLookahead[0] = c;
  
      for (unsigned int i = 0; i < noOfKeyWords; ++i )
      {
        if( lexium == keyWords[i].lexium )
        {
          tok.set( lineNo, columnNo, keyWords[i].id );
          if( tok.id() == ID::SELECT )
            inSelect = true;
          return;
        }
      }

      if( lexium.size() < 16 )
        tok.set( lineNo, columnNo, ID::SID, lexium );
      else
        tok.set( lineNo, columnNo, ID::ID, lexium );

      return;
    }
    //  Char literal
    else if( c == '\'' )
    {
      bool escaped = false;
  
      c = nextChar( this );

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
          if( isRegexp( tok ) )
            return;
          if( lexium.size() < 16 )
            tok.set( lineNo, columnNo,  ID::CHAR_LIT, lexium );
          else
            tok.set( lineNo, columnNo,  ID::CHAR_LIT, lexium );
          return;
        }
        else
        {
          lexium += c;
          ++loc;
        }

        c = nextChar( this );
      }
      
      tok.set( lineNo, columnNo, ID::INVALID_STRING, lexium );
      return ;
    }
    //  STRING_LIT
    else if( c == '"' )
    {
      isString( tok, NULL_TERM );
      return;
    }
  }
}

void Parser::lex( Token & tok )
{
  if( !lookahead.empty() )
  {
    tok = std::move(lookahead.front());
		lookahead.pop();

// #define DEBUG_YYLEX
#ifdef DEBUG_YYLEX
  dumpToken( __FILE__, __LINE__, tok );
#endif
    return;
  }

  do
  {
    nextToken( tok );
  } while( tok.id() == ID::L_COMMENT || tok.id() == ID::ML_COMMENT );

  if( tok.id() == ID::TYPE || tok.id() == ID::ENUM || tok.id() == ID::INTERFACE || tok.id() == ID::UNION )
    typeSeen = true;

  if( typeSeen && tok.isId() )
  {
    typeSeen = false;
    classes.push(tok.idLexium());
    pushSymTbl(tok.idLexium());
  }

  if( tok.isId() )
  {
    Symbol * sym = currSymTbl->find(tok.idLexium());

    if( sym != nullptr )
    {
      if( dynamic_cast<FunctionType *>(sym))
        tok.setNameType( ID::FUNCTION_NAME );
      else if( dynamic_cast<Type *>(sym))
        tok.setNameType( ID::TYPE_NAME );
      else if( dynamic_cast<Alias *>(sym))
        tok.setNameType( ID::TYPE_NAME );
      else if( TemplateParam * tp = dynamic_cast<TemplateParam *>(sym))
      {
        Type * typ = tp->type();

        if( typ != nullptr )
          tok.setNameType( ID::VARIABLE_NAME );
        else
          tok.setNameType( ID::TYPE_NAME );
      }
      else if( dynamic_cast<Variable *>(sym))
        tok.setNameType( ID::VARIABLE_NAME );
    }
  }

#ifdef DEBUG_YYLEX
  dumpToken( __FILE__, __LINE__, tok );
#endif
}

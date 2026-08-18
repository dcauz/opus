#include <cctype>
#include <iostream>
#include <cstring>
#include <limits>
#include <string>
#include <cstdlib>
#include <vector>

#include "opus.h"
#include "html.h"
#include "html_lex_context.h"


namespace
{
/*

char	Entity 				ISO Latin-1  	name or meaning
-------------------------------------------------------------------------------
– 		&ndash; 			&#8211; 		en dash
— 		&mdash; 			&#8212; 		em dash
¡ 		&iexcl; 			&#161; 			inverted exclamation
¿ 		&iquest; 			&#191; 			inverted question mark
" 		&quot; 				&#34; 			quotation mark
“ 		&ldquo; 			&#8220; 		left double curly quote
” 		&rdquo; 			&#8221; 		right double curly quote
' 	  						&#39; 			apostrophe (single quote)
‘ 		&lsquo; 			&#8216; 		left single curly quote
’ 		&rsquo; 			&#8217; 		right single curly quote
« » 	&laquo; &raquo;	 	&#171; &#187; 	guillemets (used as quotation marks)
		&nbsp; 				&#160; 			non-breaking space
& 		&amp; 				&#38; 			ampersand
¢ 		&cent; 				&#162; 			cent
© 		&copy; 				&#169; 			copyright
÷ 		&divide; 			&#247; 			divide
> 		&gt; 				&#62; 			greater than
< 		&lt; 				&#60; 			less than
µ 		&micro; 			&#181; 			micron
· 		&middot; 			&#183; 			middle dot
¶ 		&para; 				&#182; 			pilcrow (paragraph sign)
± 		&plusmn; 			&#177; 			plus/minus
€ 		&euro; 				&#8364; 		Euro
£ 		&pound; 			&#163; 			British Pound Sterling
® 		&reg; 				&#174; 			registered
§ 		&sect; 				&#167; 			section
™ 		&trade; 			&#153; 			trademark
¥ 		&yen; 				&#165; 			Japanese Yen
° 		&deg; 				&#176; 			Degree
á Á 	&aacute; &Aacute; 	&#225; &#193; 	"a" "A" with acute accent
à À 	&agrave; &Agrave; 	&#224; &#192; 	"a" "A" with grave accent
â Â 	&acirc; &Acirc; 	&#226; &#194; 	"a" "A" with circumflex
å Å 	&aring; &Aring; 	&#229; &#197; 	"a" "A" with ring
ã Ã 	&atilde; &Atilde; 	&#227; &#195; 	"a" "A" with tilde
ä Ä 	&auml; &Auml; 		&#228; &#196; 	"a" "A" with diaeresis/umlaut
æ Æ 	&aelig; &AElig; 	&#230; &#198; 	"ae" "AE" ligature
ç Ç 	&ccedil; &Ccedil; 	&#231; &#199; 	"c"  "C" with cedilla
é É 	&eacute; &Eacute; 	&#233; &#201; 	"e" "E" with acute accent
è È 	&egrave; &Egrave; 	&#232; &#200; 	"e" "E" with grave accent
ê Ê 	&ecirc; &Ecirc; 	&#234; &#202; 	"e" "E" with circumflex
ë Ë 	&euml; &Euml; 		&#235; &#203; 	"e" "E" with diaeresis/umlaut
í Í 	&iacute; &Iacute; 	&#237; &#205; 	"i" "I" with acute accent
ì Ì 	&igrave; &Igrave; 	&#236; &#204; 	"i" "I" with grave accent
î Î 	&icirc; &Icirc; 	&#238; &#206; 	"i" "I" with circumflex
ï Ï 	&iuml; &Iuml; 		&#239; &#207; 	"i" "I" with diaeresis/umlaut
ñ Ñ 	&ntilde; &Ntilde; 	&#241; &#209; 	"n" "N" with tilde
ó Ó 	&oacute; &Oacute; 	&#243; &#211; 	"o" "O" with acute accent
ò Ò 	&ograve; &Ograve; 	&#242; &#210; 	"o" "O" with grave accent
ô Ô 	&ocirc; &Ocirc; 	&#244; &#212; 	"o" "O" with circumflex
ø Ø 	&oslash; &Oslash; 	&#248; &#216; 	"o" "O" with slash
õ Õ 	&otilde; &Otilde; 	&#245; &#213; 	"o" "O" with tilde
ö Ö	 	&ouml; &Ouml; 		&#246; &#214; 	"o" "O" with diaeresis/umlaut
ß 		&szg; 				&#223; 			ess-tsett
ú Ú 	&uacute; &Uacute; 	&#250; &#218; 	"u" "U" with acute accent
ù Ù 	&ugrave; &Ugrave; 	&#249; &#217; 	"u" "U" with grave accent
û Û 	&ucirc; &Ucirc; 	&#251; &#219; 	"u" "U" with circumflex
ü Ü 	&uuml; &Uuml; 		&#252; &#220; 	"u" "U" with diaeresis/umlaut
ÿ 		&yuml; 				&#255; 			"y" with diaeresis/umlaut
´  	  						&#180; 	 		acute accent 
` 	  						&#96; 			grave accent/reversed apostrophe
*/

struct Keyword
{
	int id;
	const char * lexium;
};

Keyword keywords[] =
{
    { DOCTYPE,	"!DOCTYPE" },
    { DOCTYPE,	"!doctype" },

    { A_,	  	"a" },
    { ABBR,	  	"abbr" },
    { ADDRESS,	"address" },
    { AREA,   	"area" },
    { ARTICLE,	"article" },
    { ASIDE, 	"aside" },
    { AUDIO,	"audio" },

    { B_, 		"b" },
    { BASE,		"base" },
    { BDI, 		"bdi" },
    { BDO, 		"bdo" },
    { BLOCKQUOTE, "blockquote" },
    { BODY, 	"body" },
    { BR, 		"br" },
    { BUTTON, 	"button" },

    { CANVAS,	"canvas" },
    { CAPTION,	"caption" },
    { CITE,		"cite" },
    { CODE,		"code" },
    { COL,		"col" },
    { COLGROUP,	"colgroup" },

    { DATA,		"data" },
    { DATALIST,	"datalist" },
    { DD,		"dd" },
    { DEL,		"del" },
    { DFN,		"dfn" },
    { DIV,		"div" },
    { DL,		"dl" },
    { DT,		"dt" },

    { EM, 		"em" },
    { EMBED, 	"embed" },

    { FIELDSET,	"fieldset" },
    { FIGCAPTION,"figcaption" },
    { FIGURE,	"figure" },
    { FOOTER,	"footer" },
    { FORM,		"form" },

    { H1_,		"h1" },
    { H2_, 		"h2" },
    { H3_, 		"h3" },
    { H4_, 		"h4" },
    { H5_, 		"h5" },
    { H6_, 		"h6" },
    { HEAD, 	"head" },
    { HEADER, 	"header" },
    { HR, 		"hr" },
    { HTML, 	"html" },

    { I_, 		"i" },
    { IFRAME, 	"iframe" },
    { IMG, 		"img" },
    { INPUT, 	"input" },
    { INS, 		"ins" },

    { KBD,		"kbd" },
    { KEYGEN,	"keygen" },

    { LABEL,	"label" },
    { LEGEND, 	"legend" },
    { LI, 		"li" },
    { LINK, 	"link" },

    { MAIN,		"main" },
    { MAP, 		"map" },
    { MARK, 	"mark" },
    { MATH, 	"math" },
    { META, 	"meta" },
    { METER, 	"meter" },

    { NAV, 		"nav" },
    { NOSCRIPT, "noscript" },

    { OBJECT, 	"object" },
    { OL, 		"ol" },
    { OPTGROUP, "optgroup" },
    { OPTION, 	"option" },
    { OUTPUT, 	"output" },

    { P_, 		"p" },
    { PARAM, 	"param" },
    { PRE, 		"pre" },
    { PROGRESS, "progress" },

    { Q_, 		"q" },

    { RB, 		"rb" },
    { RP, 		"rp" },
    { RT, 		"rt" },
    { RTC, 		"rtc" },
    { RUBY, 	"ruby" },

    { S_, 		"s" },
    { SAMP, 	"samp" },
    { SCRIPT, 	"script" },
    { SECTION,	"section" },
    { SELECT, 	"select" },
    { SMALL, 	"small" },
    { SOURCE, 	"source" },
    { SPAN, 	"span" },
    { STRONG, 	"strong" },
    { STYLE, 	"style" },
    { SUB, 		"sub" },
    { SUP, 		"sup" },
    { SVG, 		"svg" },

    { TABLE, 	"table" },
    { TBODY, 	"tbody" },
    { TD, 		"td" },
    { TEMPLATE, "template" },
    { TEXT, 	"text" },
    { TEXTAREA, "textarea" },
    { TFOOT, 	"tfoot" },
    { TH, 		"th" },
    { THREAD,	"thread" },
    { TIME, 	"time" },
    { TITLE, 	"title" },
    { TR, 		"tr" },
    { TRACK, 	"track" },

    { U_, 		"u" },
    { UL, 		"ul" },

    { VAR, 		"var" },
    { VIDEO,	"video" },

    { WBR, 		"wbr" }
};

bool searchForTag( const std::string & tag, int & tagId )
{
	auto l = 0;
	auto u = sizeof(keywords)/sizeof(Keyword);

	auto m = (l+u)/2;
	
	while( m > l && m < u )
	{
		if( tag == keywords[m].lexium )
		{
			tagId = keywords[m].id;
			return true;
		}
		else if( tag < keywords[m].lexium )
			u = m;
		else
			l = m;
		m = (l+u)/2;
	}

	if( tag == keywords[m].lexium )
	{
		tagId = keywords[m].id;
		return true;
	}

	return false;
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

int nextChar( YYLTYPE * llocp, HtmlLexContext * context )
{
	if( context->lookahead.size() >= 0 )
	{
		int ans = context->lookahead.top();
		context->lookahead.pop();

		RET_CHAR(ans);
	}	
	else if( !context->cp )
	{
getLine:if( fgets( context->line, HtmlLexContext::MAX_LINE, context->fh ) )
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

bool getAttributes( 
	YYLTYPE 		* llocp, 
	HtmlLexContext	* context,
	std::vector< std::pair<std::string, std::string >> & attrs )
{
	int c = nextChar( llocp, context );
	if( c == '>' )
		return true;
	else
	{
		while( c && isspace(c)) 
			c = nextChar( llocp, context );

		if( !c )
			return false;

		std::string name;
		while( c && isalpha(c))
			name += c;
		
		if( !c )
			return false;

		while( c && isspace(c)) 
			c = nextChar( llocp, context );

		if( !c || c != '=' )
			return false;

		while( c && isspace(c)) 
			c = nextChar( llocp, context );

		if( c == '"' )
		{
			TODO // htmllex
		}
		else if( c == '\'' )
		{
			TODO // htmllex
		}
		else
		{
			TODO // htmllex
		}
	}

	return false;
}

int nextToken( YYSTYPE * lvalp, YYLTYPE * llocp, HtmlLexContext * context )
{
	int c = nextChar( llocp, context );

	if( c == 0 )
		return 0;

	if( context->ignoreWS)
	{
		while( c && isspace(c) )
			c = nextChar( llocp, context );
	}

	if( c == '<' )
	{
		std::string tag;
	
		c = nextChar( llocp, context );
		while(isalnum(c))
			tag += c;

		
		int tagId;
		if( searchForTag( tag, tagId ))
		{
			std::vector< std::pair<std::string, std::string >> attrs;

			if(getAttributes( llocp, context, attrs ))
			{
			}
			else
			{
			}
		}
		else
		{

		}
	
		if( isspace(c))
		{
		}
		else if( c == '>' )
		{
		}
		else
		{
		}
	}
	else
	{
		
	}

return -1;
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
	}
}

#endif

int htmllex( YYSTYPE * lvalp, YYLTYPE * llocp, HtmlLexContext * context )
{
	int token = nextToken( lvalp, llocp, context );

#ifdef DEBUG_YYLEX
//	dump( token, lvalp, llocp );
#endif

	return token;
}

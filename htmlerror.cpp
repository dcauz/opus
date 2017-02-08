#include "htmlerror.h"
#include <iostream>


void htmlerror( YYLTYPE * llocp, HtmlLexContext * context, const char * msg )
{
	std::cerr << "html parse error:" << msg << std::endl;
}

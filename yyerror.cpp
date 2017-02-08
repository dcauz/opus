#include "yyerror.h"
#include <iostream>


void opuserror( YYLTYPE * llocp, ParseContext * pc, const char * msg )
{
	std::cerr << "parse error:" << msg << std::endl;
}

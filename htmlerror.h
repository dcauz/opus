#pragma once

#include "html_lex_context.h"
#include "html.gram.h"


void htmlerror( YYLTYPE * llocp, HtmlLexContext *, const char *);

#pragma once

#include "html_lex_context.h"
#include "html.gram.h"

int htmllex(  YYSTYPE * lvalp, YYLTYPE * llocp, HtmlLexContext * lc );


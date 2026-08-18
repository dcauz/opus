#pragma once

class Parser;
class Token;

void lex( Token & lvalp, Parser * lc );
void lexPushBack( Token & lvalp, Parser * lc );

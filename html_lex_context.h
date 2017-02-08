#pragma once

#include <cstdio>
#include <stack>


struct HtmlLexContext
{
	HtmlLexContext( const char * file );

	static const int MAX_LINE = 2028;

	FILE * fh;
	std::stack<int>  lookahead;
	char line[MAX_LINE];
	char * cp;
	bool ignoreWS;	// HTML parsing: ignore whitespace
};

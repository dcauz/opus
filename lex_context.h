#pragma once
#include <cstdio>

struct LexContext
{
	static const int MAX_LINE = 2028;

	FILE * fh;
	int  lookahead;
	char line[MAX_LINE];
	char * cp;
};

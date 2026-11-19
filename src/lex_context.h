#pragma once
#include <cstdio>
#include <stack>
#include <string>


struct LexContext
{
	static const int MAX_LINE = 2028;

	FILE * fh;
	char line[MAX_LINE];
	char * cp;
	std::stack<std::string> classes;
	bool classSeen;
};

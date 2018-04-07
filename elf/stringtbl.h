#pragma once

#include <string>
#include <vector>


class StringTable
{
public:
	StringTable( int index, const char *, unsigned );

	void dump();

private:
	int index_;
	std::vector<std::string> strings_;
};

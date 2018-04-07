#include "stringtbl.h"


StringTable::StringTable( int index, const char * buff, unsigned size ):index_(index)
{
	const char * cp = buff;
	const char * end = buff + size;

	while( cp < end )
	{
		std::string val = cp;
		strings_.push_back(val);
		cp += val.size()+1;
	}
}


void StringTable::dump()
{
	auto i = strings_.begin();
	auto e = strings_.end();

	while( i != e )
	{
		printf( "%s\n", i->c_str() );
		++i;
	}
}

#include <cstdio>
#include <cstddef>
#include <memory>
#include <string>
#include <elf.h>
#include "file.h"


int main( int argc, char * argv[] )
{
	bool rc = readIdent( argv[1] );

	return rc?0:1;
}

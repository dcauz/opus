#include "log.h"
#include "parser.h"
#include <cstdio>
#include <cstring>
#include <iostream>


int main( int argc, char * argv[] )
{
	if( argc < 2 )
	{
usage:	std::cerr << "usage: " << argv[0] << " [-d|-p] program-files" << std::endl;
		return 1;
	}

	theLog.addLogger( stdout, Log::Level::OUT, Log::Part::ALL );
	theLog.addLogger( stderr, Log::Level::ERR, Log::Part::ALL );

	try
	{
		bool debug = false;
		bool parseOnly = false;

		int arg = 1;
		while( argv[arg][0] == '-' )
		{
			if(strcmp( argv[arg], "-d" ) == 0 )
			{
				debug = true;
				++arg;
			}
			else if(strcmp( argv[arg], "-p" ) == 0 )
			{
				parseOnly = true;
				++arg;
			}
			else
				goto usage;
		}
SNAT
		for( int i = arg; i < argc; ++i )
		{
SNAT
			if(debug)
				printf( "Compile %s\n", argv[i] );
SNAT

			Parser	parser(argv[i]);
			parser.populateGlobalSymTbl();

SNAT
			int rc = parser.parse();

SNAT
			if( parseOnly )
				return rc;

SNAT
			if( !rc )
			{
SNAT
				parser.program().genCode();
SNAT
				parser.program().outputIL();
SNAT
			}
			else
			{
				std::cerr << "compilation failed" << std::endl;
				return 2;
			}
SNAT
		}
SNAT
	}
	catch( const std::string & msg )
	{
		std::cerr << "compile terminated with exception: " << msg << std::endl;
		return 2;
	}
SNAT
	return 0;
}

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

		for( int i = arg; i < argc; ++i )
		{
			if(debug)
				printf( "Compile %d\n", argv[i] );

			Parser	parser(argv[i]);
			parser.populateGlobalSymTbl();

			int rc = parser.parse();

			if( parseOnly )
				return rc;

			if( !rc )
			{
				parser.program().genCode();
				parser.program().outputIL();
			}
			else
			{
				std::cerr << "compilation failed" << std::endl;
				return 2;
			}
		}
	}
	catch( const std::string & msg )
	{
		std::cerr << "compile terminated with exception: " << msg << std::endl;
		return 2;
	}
	return 0;
}

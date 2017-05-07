
#include "opl.h"
#include "html.h"
#include "html_lex_context.h"
#include <iostream>
#include <string>
#include <cstring>


int opusparse( ParseContext * );
int htmlparse( HtmlLexContext * );


int main( int c, char * a [] )
{
	if( c < 2 )
	{
		std::cerr << "usage: " << a[0] << " program-files" << std::endl;
		return 1;
	}

	try
	{
		auto l = strlen(a[1]);
		if( strcmp( a[1] + l - 5, ".opus" ) == 0 )
		{
			ParseContext	pc(a[1]);

			pc.fh = fopen( a[1], "r" );
			pc.lookahead[0] = -1;
			pc.lookahead[1] = -1;
			pc.classSeen = false;
			pc.cp = NULL;

			int rc = opusparse( &pc );

			fclose( pc.fh );

			if( !rc )
			{
				pc.program.genCode();
				pc.program.outputIL();
			}
			else
			{
				std::cerr << "compilation failed" << std::endl;
				return 2;
			}
		}
		else
		{
			HtmlLexContext	lc(a[1]);

			lc.fh = fopen( a[1], "r" );
			lc.cp = NULL;

			int rc = htmlparse( &lc );

			fclose( lc.fh );

			return 2;
		}
	}
	catch( const std::string & msg )
	{
		std::cerr << "compile terminated with exception: " << msg << std::endl;
		return 2;
	}

	return 0;
}

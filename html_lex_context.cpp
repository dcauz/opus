#include "html_lex_context.h"
#include <string>
#include <stdexcept>


HtmlLexContext::HtmlLexContext( const char * file ):cp(nullptr), ignoreWS(true)
{
	fh = fopen( file, "r" );
	if( !fh )
	{
		std::string msg = "Unable to open html file ";
		msg += file;

		throw std::runtime_error( msg );
	}
}

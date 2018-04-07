#pragma once

#include <string>

const char	* pTypeToStr( unsigned t );
const char	* typeToStr( unsigned t );
const char	* machineToStr( unsigned mac );
std::string	pFlagToStr( unsigned f );
const char	* shTypeToStr( unsigned t );
std::string	shFlagToStr( unsigned f );

void dump( const char *, unsigned );

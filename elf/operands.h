#pragma once

#include <string>
#include "opcodes.h"


const char * regStr( 
	     int reg, 
	Register base, 
		 int w, 
		 int s, 
  RegContext context, 
	unsigned prefix );

const char * memStr(
    const char * code,  // IN
        unsigned prefix,// IN
             int s,     // IN
             int w,     // IN
   std::string & op );  // OUT

const char * mod_reg_rm_ops(
	const char * code,		// IN
	unsigned prefix,		// IN
			  int s,		// IN
			  int w,		// IN
	std::string & op1,		// OUT
	std::string & op2 );	// OUT

const char * imm_mem_ops(
	const char * code,		// IN
	unsigned prefix,		// IN
			  int s,		// IN
			  int w,		// IN
	std::string & op1,		// OUT
	std::string & op2 );	// OUT

const char * imm_reg_ops(
	const char * code,		// IN
	unsigned prefix,		// IN
			  int w,		// IN
			  int immSize,	// IN
			 bool useReg,	// IN
	std::string & op1,		// OUT
	std::string & op2 );	// OUT

const char * pop_operand(
	const char * code,		// IN
	unsigned prefix,		// IN
	std::string & op1 );	// OUT


inline void mod_reg_rm( char b, int & mod, int & reg, int & rm )
{
    mod = ( b & 0xc0 ) >> 6;
    reg = ( b & 0x38 ) >> 3;
    rm  = ( b & 0x07 );
}

inline const char * codeToInt( const char * code, int len, int & v )
{
	v = 0;
	for( int i = 0; i < len; ++i )
	{
		unsigned c =  code[i];
		v = c + (v << 8);
	}

	return code+len;
}

inline const char * imm8( const char * code, char * buff )
{
    char imm = 0x00ff & *code++;

	if( imm < 0 )
		sprintf( buff, "-0x%x", -imm );
	else
		sprintf( buff, "0x%x", imm );

    return code;
}

inline const char * imm16( const char * code, char * buff )
{
	const unsigned char * uc = reinterpret_cast<const unsigned char *>(code);
    unsigned imm = *uc++;
    imm += *uc << 8;

	if(static_cast<int>(imm) < 0 )
		sprintf( buff, "-0x%x", -imm );
	else
		sprintf( buff, "0x%x", imm );

    return code+2;
}

inline const char * imm32( const char * code, char * buff )
{
	const unsigned char * uc = reinterpret_cast<const unsigned char *>(code);
    unsigned imm = *uc++;
    imm += *uc++ << 8;
    imm += *uc++ << 16;
    imm += *uc << 24;

	if(static_cast<int>(imm) < 0 )
		sprintf( buff, "-0x%x", -imm );
	else
		sprintf( buff, "0x%x", imm );

    return code+4;
}


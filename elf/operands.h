#pragma once

#include <string>
#include "opcodes.h"


const char * VEX2( const char *, unsigned & );
const char * VEX3( const char *, unsigned & );
int vvvv( unsigned );

void dumpPrefix( unsigned prefix );
void dumpModRegRM( unsigned code );

const char * regToStr( Register r );

const char * regStr( 
	     int reg, 
	Register base, 
		 int w, 
  RegContext context, 
	unsigned prefix,
		 int op2Size=-1);

const char * memStr(
    const char * code,  // IN
        unsigned prefix,// IN
             int s,     // IN
             int w,     // IN
   std::string & op );  // OUT

const char * mod_reg_rm_ops(
	const char * code,		// IN
	unsigned prefix,		// IN
		   OpRegs ors,		// IN
			  int w,		// IN
	std::string & op1,		// OUT
	std::string & op2, 		// OUT
			int op1Size=-1,	// IN
			int op2Size=-1,	// IN
			int dispMul=-1);// IN

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


inline int mod( char b )
{
    return ( b & 0xc0 ) >> 6;
}

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

inline const char * uimm8( const char * code, char * buff )
{
    unsigned char imm = 0x00ff & *code++;

	sprintf( buff, "0x%x", imm );

    return code;
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

inline const char * imm8( const char * code, char * buff, int dispMult )
{
    char imm = 0x00ff & *code++;

	if( dispMult < 0 )
	{
		if( imm < 0 )
			sprintf( buff, "-0x%x", -imm );
		else
			sprintf( buff, "0x%x", imm );
	}
	else
	{
		if( imm < 0 )
			sprintf( buff, "-0x%x", -imm*dispMult );
		else
			sprintf( buff, "0x%x", imm*dispMult );
	}

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

inline bool isPrefix(char pref, unsigned & prefix )
{
	switch(pref)
	{	
	default:
		return false;
	case 0x26:	prefix |= PRE_26;	break;
	case 0x2e:	prefix |= PRE_BHNT;	break;
	case 0x36:	prefix |= PRE_36; 	break;
	case 0x3e:	prefix |= PRE_3E; 	break;
	case 0x40:	prefix |= pref; 	break;
	case 0x41:	prefix |= pref; 	break;
	case 0x42:	prefix |= pref; 	break;
	case 0x43:	prefix |= pref; 	break;
	case 0x44:	prefix |= pref; 	break;
	case 0x45:	prefix |= pref; 	break;
	case 0x46:	prefix |= pref; 	break;
	case 0x47:	prefix |= pref; 	break;
	case 0x48:	prefix |= pref; 	break;
	case 0x49:	prefix |= pref; 	break;
	case 0x4a:	prefix |= pref; 	break;
	case 0x4b:	prefix |= pref; 	break;
	case 0x4c:	prefix |= pref; 	break;
	case 0x4d:	prefix |= pref; 	break;
	case 0x4e:	prefix |= pref; 	break;
	case 0x4f:	prefix |= pref; 	break;
	case 0x64:	prefix |= PRE_64; 	break;
	case 0x65:	prefix |= PRE_65; 	break;
	case 0x66:	prefix |= PRE_OS; 	break;
	case 0x67:	prefix |= PRE_AS; 	break;
	case -14:	prefix |= PRE_NE; 	break;
	case -13:	prefix |= PRE_REP;	break;
	}

	return true;
}

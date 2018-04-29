#include <cstdio>
#include <cmath>
#include "../opus.h"
#include "operands.h"
#include "opcodes.h"


const char * regToStr( Register r )
{
	switch(r)
	{
	default:	
		return "ERROR";

	case ES:	return "%es"; case CS:		return "%cs";
	case SS:	return "%ss"; case DS:		return "%ds";
	case FS:	return "%fs"; case GS:		return "%gs";

	case AL:	return "%al";  case CL:		return "%cl";
	case DL:	return "%dl";  case BL:		return "%bl";
	case AH:	return "%ah";  case CH:		return "%ch";
	case DH:	return "%dh";  case BH:		return "%bh";
	case SPL:	return "%spl"; case BPL:	return "%bpl";
	case SIL:	return "%sil"; case DIL:	return "%dil";
	case R8B:	return "%r8b"; case R9B:	return "%r9b";
	case R10B:	return "%r10b";case R11B:	return "%r11b";
	case R12B:	return "%r12b";case R13B:	return "%r13b";
	case R14B:	return "%r14b";case R15B:	return "%r15b";

	case AX:	return "%ax";  case CX:		return "%cx";
	case DX:	return "%dx";  case BX:		return "%bx";
	case SP:	return "%sp";  case BP:		return "%bp";
	case SI:	return "%si";  case DI:		return "%di";
	case R8W:	return "%r8w"; case R9W:	return "%r9w";
	case R10W:	return "%r10w";case R11W:	return "%r11w";
	case R12W:	return "%r12w";case R13W:	return "%r13w";
	case R14W:	return "%r14w";case R15W:	return "%r15w";

	case EAX:	return "%eax"; case ECX:	return "%ecx";
	case EDX:	return "%edx"; case EBX:	return "%ebx";
	case ESP:	return "%esp"; case EBP:	return "%ebp";
	case ESI:	return "%esi"; case EDI:	return "%edi";
	case R8D:	return "%r8d"; case R9D:	return "%r9d";
	case R10D:	return "%r10d";case R11D:	return "%r11d";
	case R12D:	return "%r12d";case R13D:	return "%r13d";
	case R14D:	return "%r14d";case R15D:	return "%r15d";

	case RAX:	return "%rax"; case RCX:	return "%rcx";
	case RDX:	return "%rdx"; case RBX:	return "%rbx";
	case RSP:	return "%rsp"; case RBP:	return "%rbp";
	case RSI:	return "%rsi"; case RDI:	return "%rdi";
	case R8:	return "%r8";  case R9:		return "%r9";
	case R10:	return "%r10"; case R11:	return "%r11";
	case R12:	return "%r12"; case R13:	return "%r13";
	case R14:	return "%r14"; case R15:	return "%r15";

	case ST0:	return "%st0"; case ST1:	return "%st1";
	case ST2:	return "%st2"; case ST3:	return "%st3";
	case ST4:	return "%st4"; case ST5:	return "%st5";
	case ST6:	return "%st6"; case ST7:	return "%st7";

	case MM0:	return "%mm0"; case MM1:	return "%mm1";
	case MM2:	return "%mm2"; case MM3:	return "%mm3";
	case MM4:	return "%mm4"; case MM5:	return "%mm5";
	case MM6:	return "%mm6"; case MM7:	return "%mm7";

	case XMM0:	return "%xmm0"; case XMM1:	return "%xmm1";
	case XMM2:	return "%xmm2"; case XMM3:	return "%xmm3";
	case XMM4:	return "%xmm4"; case XMM5:	return "%xmm5";
	case XMM6:	return "%xmm6"; case XMM7:	return "%xmm7";
	case XMM8:	return "%xmm8"; case XMM9:	return "%xmm9";
	case XMM10:	return "%xmm10";case XMM11:	return "%xmm11";
	case XMM12:	return "%xmm12";case XMM13:	return "%xmm13";
	case XMM14:	return "%xmm14";case XMM15:	return "%xmm15";
	case XMM16:	return "%xmm16";case XMM17:	return "%xmm17";
	case XMM18:	return "%xmm18";case XMM19:	return "%xmm19";
	case XMM20:	return "%xmm20";case XMM21:	return "%xmm21";
	case XMM22:	return "%xmm22";case XMM23:	return "%xmm23";
	case XMM24:	return "%xmm24";case XMM25:	return "%xmm25";
	case XMM26:	return "%xmm26";case XMM27:	return "%xmm27";
	case XMM28:	return "%xmm28";case XMM29:	return "%xmm29";
	case XMM30:	return "%xmm30";case XMM31:	return "%xmm31";

	case YMM0:	return "%ymm0"; case YMM1:	return "%ymm1";
	case YMM2:	return "%ymm2"; case YMM3:	return "%ymm3";
	case YMM4:	return "%ymm4"; case YMM5:	return "%ymm5";
	case YMM6:	return "%ymm6"; case YMM7:	return "%ymm7";
	case YMM8:	return "%ymm8"; case YMM9:	return "%ymm9";
	case YMM10:	return "%ymm10";case YMM11:	return "%ymm11";
	case YMM12:	return "%ymm12";case YMM13:	return "%ymm13";
	case YMM14:	return "%ymm14";case YMM15:	return "%ymm15";
	case YMM16:	return "%ymm16";case YMM17:	return "%ymm17";
	case YMM18:	return "%ymm18";case YMM19:	return "%ymm19";
	case YMM20:	return "%ymm20";case YMM21:	return "%ymm21";
	case YMM22:	return "%ymm22";case YMM23:	return "%ymm23";
	case YMM24:	return "%ymm24";case YMM25:	return "%ymm25";
	case YMM26:	return "%ymm26";case YMM27:	return "%ymm27";
	case YMM28:	return "%ymm28";case YMM29:	return "%ymm29";
	case YMM30:	return "%ymm30";case YMM31:	return "%ymm31";

	case CR0:	return "%cr0";  case CR1:	return "%cr1";
	case CR2:	return "%cr2";  case CR3:	return "%cr3";
	case CR4:	return "%cr4";  case CR5:	return "%cr5";
	case CR6:	return "%cr6";  case CR7:	return "%cr7";
	case CR8:	return "%cr8";  case CR9:	return "%cr9";
	case CR10:	return "%cr10"; case CR11:	return "%cr11";
	case CR12:	return "%cr12"; case CR13:	return "%cr13";
	case CR14:	return "%cr14"; case CR15:	return "%cr15";

	case DR0:	return "%db0";  case DR1:	return "%db1";
	case DR2:	return "%db2";  case DR3:	return "%db3";
	case DR4:	return "%db4";  case DR5:	return "%db5";
	case DR6:	return "%db6";  case DR7:	return "%db7";
	case DR8:	return "%db8";  case DR9:	return "%db9";
	case DR10:	return "%db10"; case DR11:	return "%db11";
	case DR12:	return "%db12"; case DR13:	return "%db13";
	case DR14:	return "%db14"; case DR15:	return "%db15";
	}
}

inline Register	reg8to16( Register r )
{
	return static_cast<Register>((r&0xffef)+64);
}

inline Register	reg8to32( Register r )
{
	return static_cast<Register>((r&0xffef)+128);
}

inline Register	reg8to64( Register r )
{
	if(r < AX )
		return static_cast<Register>((r&0xffef)+256);
	else
		return r;
}

inline Register	reg16to32( Register r )
{
	return static_cast<Register>((r&0xffef)+64);
}

inline Register	reg16to64( Register r )
{
	return static_cast<Register>((r&0xffef)+192);
}

inline Register	reg32to64( Register r )
{
	return static_cast<Register>((r&0xffef)+128);
}

inline Register	regAHtoSPL( Register r )
{
	if( (r > BL ) && (r <= BH ))
		return static_cast<Register>((r&0xffef)+16);
	else
		return r;
}

inline Register regToR(Register reg)
{
	// AL-CH, SPL-DIL 	=> R8B - R15B
	// AX-DI 			=> R8W - R15W
	// EAX-EDI 			=> R8D - R15D
	// RAX-RDI 			=> R8  - R15
	// CR0 - CR7		=> CR8 - CR15
	// DR0 - DR7		=> DR8 - DR15
	// XMM0 - XMM7		=> XMM8 - XMM15
	// YMM0 - YMM7		=> YMM8 - YMM15

	if( (reg >= CR0 && reg < CR8 ) ||
	    (reg >= DR0 && reg < DR8 ) ||
	    (reg >= XMM0 && reg < XMM8 ) ||
	    (reg >= YMM0 && reg < YMM8 ))
		return static_cast<Register>(reg+8);
	else
		return static_cast<Register>((reg&0xef)+24);
}

const char * memStr(
	const char * code,	// IN
		unsigned prefix,// IN
			 int s,		// IN
			 int w,		// IN
   std::string & op )	// OUT
{
	int mod;
	int reg;
	int rm;
	mod_reg_rm( *code++, mod, reg, rm );

	switch(mod)
	{
	case RM:
		switch(rm)
		{
		case 0:	
		case 1:	
		case 2:	
		case 3:	
		case 5:	// disp32 when mod=00. Else, EBP	R13	
		case 6:
		case 7:
		{
			op = "(";
			op += regStr( rm, AL, w, Base, prefix );
			op += ")";
			break;
		}
		case 4:	// Determined by SIB
		{
			int scale;
			int index;
			int base;

			mod_reg_rm( *code++, scale, index, base );

			const char * b = regStr( base, AL, w, Base, prefix );

			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, w, Index, prefix );

				char addr[32];
				sprintf( addr, "(%s,%s,%d)", b, i, static_cast<int>(pow(2,scale)) );
				op = addr;
			}
			else
			{
				if( base != 5 )
				{
					char addr[32];
					sprintf( addr, "(%s)", b );
					op = addr;
				}
				else
				{
					char imm[16];
					code = imm32(code, imm );
					op = imm;
				}
			}
			break;
		}
		}
		break;
	case RM_disp8:
		switch(rm)
		{
		case 0:
		case 1:
		case 2:
		case 3:
		case 5:
		case 6:
		case 7:
		{
			char disp[16];
			code = imm8( code, disp );
			op = disp;
			op += "(";
			op += regStr( rm, AL, w, Base, prefix );
			op += ")";
			break;
		}
		case 4:	// Determined by SIB	R12	
		{
			int scale;
			int index;
			int base;

			mod_reg_rm( *code++, scale, index, base );

			char imm[16];
			code = imm8( code, imm );

			const char * b = regStr( base, AL, w, Base, prefix );

			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, w, Index, prefix );

				char addr[32];
				sprintf( addr, "%s(%s,%s,%d)", imm, b, i, static_cast<int>(pow(2,scale)) );
				op = addr;
			}
			else
			{
				char addr[32];
				sprintf( addr, "%s(%s)", imm, b );
				op = addr;
			}
			break;
		}
		}
		break;
	case RM_disp32:
		switch(rm)
		{
		case 0:
		case 1:
		case 2:	
		case 3:	
		case 5:	// disp32 when mod=00. Else, EBP	R13	
		case 6:
		case 7:
			char disp[16];
			code = imm32( code, disp );
			op = disp;
			op += "(";
			op += regStr( rm, AL, w, Base, prefix );
			op += ")";
			break;
		case 4:	
		{
			int scale;
			int index;
			int base;

			mod_reg_rm( *code++, scale, index, base );

			char imm[16];
			code = imm32( code, imm );

			const char * b = regStr( base, AL, w, Base, prefix );

			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, w, Index, prefix );

				char addr[32];
				sprintf( addr, "%s(%s,%s,%d)", imm, b, i, static_cast<int>(pow(2,scale)) );
				op = addr;
			}
			else
			{
				char addr[32];
				sprintf( addr, "%s(%s)", imm, b );
				op = addr;
			}
			break;
		}
		}
		break;

	case RM_regs:
		// This function should not be called for mod = 11
		op = "ERROR";
		break;
	}

	return code;
}

const char * regStr( 
	     int reg, 
	Register base, 
		 int w, 
  RegContext context, 
	unsigned prefix,
		 int opSize )
{
//printf( "%s:%d reg %d base %d w %d prefix %x context %d opsize %d\n", __FILE__, __LINE__, reg, base, w, prefix, context, opSize );
	Register r = static_cast<Register>(reg+base);

	if( prefix & REX)
		r = regAHtoSPL( r );

	if(opSize > 0 )
	{
		if((( context == Reg  && ( prefix & REX_R ) == REX_R)) ||
		( context == Reg2 && ( prefix & REX_B ) == REX_B))
			r = regToR(r);	

		if( opSize == 16 )
			r =reg8to16(r);
		else if( opSize == 32 )
			r =reg8to32(r);
		else if( opSize == 64 )
			r =reg8to64(r);

		return regToStr(r);
	}

	switch(context)
	{
	default:	
		r = ERROR;	
		break;

	case Reg:
		if(( prefix & REX_R ) == REX_R)
		{
			r = regToR(r);	
		}

		if( (prefix & REX_W ) == REX_W )
			r = reg8to64(r);	
		else if(w)
		{
			if( prefix & PRE_OS )
				r = reg8to16(r);
			else
				r = reg8to32(r);	
		}
		break;
	case Reg2:
		if(( prefix & REX_B ) == REX_B)
		{
			r = regToR(r);	
		}

		if(( prefix & REX_W ) == REX_W )
			r = reg8to64(r);	
		else if(w)
		{
			if( prefix & PRE_OS )
				r = reg8to16(r);
			else
				r = reg8to32(r);	
		}
		break;
	case Index:
		if(( prefix & REX_X ) == REX_X )
		{
			r = regToR(r);	
		}

		if( prefix & PRE_AS )
			r = reg8to32(r);	
		else
			r = reg8to64(r);	
		break;
	case Base:
		if(( prefix & REX_B ) == REX_B)
		{
			r = regToR(r);
		}

		if( prefix & PRE_AS )
			r = reg8to32(r);	
		else
			r = reg8to64(r);	
		break;
	}

	return regToStr(r);
}

Register opReg( OpRegs ors, bool left )
{
	switch(ors)
	{
	case OpRegs::AL:		return AL;
	case OpRegs::ST0:		return ST0;
	case OpRegs::MM0:		return MM0;
	case OpRegs::XMM0:		return XMM0;
	case OpRegs::YMM0:		return YMM0;
	case OpRegs::CR0:		return CR0;
	case OpRegs::DR0:		return DR0;

	case OpRegs::AL_ST0:	return left?AL:ST0;	
	case OpRegs::ST0_AL:	return left?ST0:AL;

	case OpRegs::AL_MM0:	return left?AL:MM0;
	case OpRegs::MM0_AL:	return left?MM0:AL;

	case OpRegs::AL_YMM0:	return left?AL:YMM0;
	case OpRegs::YMM0_AL:	return left?YMM0:AL;

	case OpRegs::AL_XMM0:	return left?AL:XMM0;
	case OpRegs::XMM0_AL:	return left?XMM0:AL;

	case OpRegs::AL_CR0:	return left?AL:CR0;
	case OpRegs::CR0_AL:	return left?CR0:AL;

	case OpRegs::AL_DR0:	return left?AL:DR0;
	case OpRegs::DR0_AL:	return left?DR0:AL;
	}
}

const char * mod_reg_rm_ops(
	const char * code,		// IN
	unsigned 	  prefix,	// IN
		   OpRegs opRegs,	// IN
			  int w,		// IN
	std::string & op1,		// OUT
	std::string & op2,		// OUT
			int op2Size )	// IN
{
	int mod;
	int reg;
	int rm;
	mod_reg_rm( *code++, mod, reg, rm );

//printf( "%s:%d mod %d reg %d rm %d\n", __FILE__, __LINE__, mod, reg, rm );
	switch(mod)
	{
	case RM:
		switch(rm)
		{
		case 0:	
		case 1:	
		case 2:	
		case 3:	
		case 5:	// disp32 when mod=00. Else, EBP	R13	
		case 6:
		case 7:
		{
			op1 =  regStr( reg, opReg(opRegs,true), w, Reg, prefix );
			op2 = "(";
			op2 += regStr( rm, AL, w, Base, prefix );
			op2 += ")";
			break;
		}
		case 4:	// Determined by SIB
		{
			int scale;
			int index;
			int base;

			mod_reg_rm( *code++, scale, index, base );

			const char * b = regStr( base, AL, w, Base, prefix );

			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, w, Index, prefix );

				char addr[32];
				sprintf( addr, "(%s,%s,%d)", b, i, static_cast<int>(pow(2,scale)) );
				op2 = addr;
			}
			else
			{
				char addr[32];
				sprintf( addr, "(%s)", b );
				op2 = addr;
			}
			op1 =  regStr( reg, opReg(opRegs, true), w, Reg, prefix );
			break;
		}
		}
		break;
	case RM_disp8:
		switch(rm)
		{
		case 0:
		case 1:
		case 2:
		case 3:
		case 5:
		case 6:
		case 7:
		{
			op1 =  regStr( reg, opReg(opRegs,true), w, Reg, prefix );

			char disp[16];
			code = imm8( code, disp );
			op2 = disp;
			op2 += "(";
			op2 += regStr( rm, AL, w, Base, prefix );
			op2 += ")";
			break;
		}
		case 4:	// Determined by SIB	R12	
		{
			int scale;
			int index;
			int base;

			mod_reg_rm( *code++, scale, index, base );

			char imm[16];
			code = imm8( code, imm );

			const char * b = regStr( base, AL, w, Base, prefix );

			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, w, Index, prefix );

				char addr[32];
				sprintf( addr, "%s(%s,%s,%d)", imm, b, i, static_cast<int>(pow(2,scale)) );
				op2 = addr;
			}
			else
			{
				char addr[32];
				sprintf( addr, "%s(%s)", imm, b );
				op2 = addr;
			}
			op1 =  regStr( reg, opReg(opRegs,true), w, Reg, prefix );
			break;
		}
		}
		break;
	case RM_disp32:
		switch(rm)
		{
		case 0:
		case 1:
		case 2:	
		case 3:	
		case 5:
		case 6:
		case 7:
		{
			op1 =  regStr( reg, opReg(opRegs,true), w, Reg, prefix );

			char disp[16];
			code = imm32( code, disp );
			op2 = disp;
			op2 += "(";
			op2 += regStr( rm, AL, w, Base, prefix );
			op2 += ")";
			break;
		}
		case 4:	
		{
			int scale;
			int index;
			int base;

			mod_reg_rm( *code++, scale, index, base );

			char imm[16];
			code = imm32( code, imm );

			const char * b = regStr( base, AL, w, Base, prefix );
	
			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, w, Index, prefix );

				char addr[32];
				sprintf( addr, "%s(%s,%s,%d)", imm, b, i, static_cast<int>(pow(2,scale)) );
				op2 = addr;
			}
			else
			{
				char addr[32];
				sprintf( addr, "%s(%s)", imm, b );
				op2 = addr;
			}
			op1 =  regStr( reg, opReg(opRegs,true), w, Reg, prefix );
			break;
		}
		}
		break;

	case RM_regs:
		op1 = regStr( reg,  opReg(opRegs,true), w, Reg, prefix );
		op2 = regStr( rm,  opReg(opRegs,false), w, Reg2, prefix, op2Size );
		break;
	}

	return code;
}

const char * imm_reg_ops(
	const char * code,		// IN
		 unsigned prefix,	// IN
			  int w,		// IN
			  int immSize,	// IN
			 bool useReg,	// IN
	std::string & op1,		// OUT
	std::string & op2 )		// OUT
{
	int mod;
	int reg;
	int rm;
	mod_reg_rm( *code++, mod, reg, rm );

	// Skip past SIB byte
	if(mod != RM_regs )
		++code;

	if( !useReg )
		op1 = regStr( rm, AL, w, Reg, prefix );
	else
		op1 = regStr( reg, AL, w, Reg, prefix );
	
	char buff[16];
	if(immSize == 32)
		code = imm32( code, buff );
	else
		code = imm8( code, buff );

	op2 = buff;


	return code;
}

const char * imm_mem_ops(
	const char * code,		// IN
	unsigned 	  prefix,	// IN
			  int s,		// IN
			  int w,		// IN
	std::string & op1,		// OUT
	std::string & op2 )		// OUT
{
	int mod;
	int reg;
	int rm;
	mod_reg_rm( *code++, mod, reg, rm );

	switch(mod)
	{
	case RM:
	{
		switch(rm)
		{
		case 0:
		case 1:
		case 2:
		case 3:
		case 5:
		case 6:
		case 7:
		{
			// mod:reg:r/m:disp:imm
			char imm[16];
			code = imm8(code, imm);

			op1 = imm;

			op2 = "(";
			op2 += regStr( rm, AL, w, Base, prefix );
			op2 += ")";
			break;
		}
		case 4:
		{
			int scale = (*code & 0xc0) >> 6;
			int index = (*code & 0x38) >> 3;
			int base  = *code & 0x07;

			++code;

			const char * b = regStr( base,  AL, 0, Base, prefix );

			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, 0, Index,prefix );

				char buff[128];
				sprintf( buff, "(%s,%s,%d)", b, i, static_cast<int>(pow(2, scale)));
				op2 = buff;
			}
			else
			{
				if( base != 5 )
				{
					char buff[128];
					sprintf( buff, "(%s)", b );
					op2 = buff;
				}
				else
				{
TODO
				}
			}

			char imm[16];
			code = imm8(code, imm);
			op1 = imm;
		}
		}
		break;
	}
	case RM_disp8:
	{
		switch(rm)
		{
		case 0:
		case 1:
		case 2:
		case 3:
		case 5:
		case 6:
		case 7:
		{
			// mod:reg:r/m:disp:imm
			char disp[16];
			char imm[16];

			code = imm8(code, disp);
			code = imm8(code, imm);

			op1 = imm;

			op2 = disp;
			op2 += "(";
			op2 += regStr( rm, AL, w, Base, prefix );
			op2 += ")";
			break;
		}
		case 4:
		{
			int scale = (*code & 0xc0) >> 6;
			int index = (*code & 0x38) >> 3;
			int base  = *code & 0x07;

			++code;

			const char * b = regStr( base,  AL, 0, Base, prefix );

			char disp[12];
			code = imm8(code, disp);
			
			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, 0, Index,prefix );

				char buff[128];
				sprintf( buff, "%s(%s,%s,%d)", disp, b, i, static_cast<int>(pow(2, scale)));
				op2 = buff;
			}
			else
			{
				char buff[128];
				sprintf( buff, "%s(%s)", disp, b );
				op2 = buff;
			}

			char imm[16];
			code = imm8(code, imm);
			op1 = imm;
		}
		}
		break;
	}
	case RM_disp32:
	{
		switch(rm)
		{
		case 0:
		case 1:
		case 2:
		case 3:
		case 5:
		case 6:
		case 7:
		{
			// mod:reg:r/m:disp:imm
			char disp[16];
			char imm[16];

			code = imm32(code, disp);
			code = imm8(code, imm);

			op1 = imm;

			op2 = disp;
			op2 += "(";
			op2 += regStr( rm, AL, w, Base, prefix );
			op2 += ")";
			break;
		}
		case 4:
		{
			int scale = (*code & 0xc0) >> 6;
			int index = (*code & 0x38) >> 3;
			int base  = *code & 0x07;

			++code;

			char disp[16];
			code = imm32(code, disp);
			
			const char * b = regStr( base,  AL, 0, Base, prefix );

			if( index != 4 || ( (prefix & REX_X ) == REX_X ))
			{
				const char * i = regStr( index, AL, 0, Index,prefix );

				char buff[128];
				sprintf( buff, "%s(%s,%s,%d)", disp, b, i, static_cast<int>(pow(2, scale)));
				op2 = buff;
			}
			else
			{
				char buff[128];
				sprintf( buff, "%s(%s)", disp, b );
				op2 = buff;
			}

			char imm[16];
			code = imm8(code, imm);
			op1 = imm;
			break;
		}
		}
		break;
	}
	case RM_regs:
TODO
		break;
	}

	return code;
}

const char * reg8( int reg, int w, unsigned prefix )
{
	int so  = prefix & PRE_OS;
	int rex = prefix & REX;
	prefix &= REX_MASK;


	switch(reg)
	{
	default:
		return "ERROR";

	case 0:	
		return prefix ? 
			((prefix & REX_R)?
				((prefix & REX_W)?
					"%r8":
					(so?
						"%r8w":
						(w?"%r8d":"%r8b")
					)
				):
			"%ral"):
			(w?(so?"%ax":"%eax"):"%al");
	case 1:	
		return prefix ? 
			((prefix & REX_R)?
				((prefix & REX_W)?
					"%r9":
					(so?
						"%r9w":
						(w?"%r9d":"%r9b")
					)
				):
			"%rcl"):
			(w?(so?"%cx":"%ecx"):"%cl");
	case 2:	
		return prefix ? 
			((prefix & REX_R)?
				((prefix & REX_W)?
					"%r10":
					(so?
						"%r19w":
						(w?"%r10d":"%r10b")
					)
				):
			"%rdx"):
			(w?(so?"%dx":"%edx"):"%dl");
	case 3:	
		return prefix ? 
			((prefix & REX_R)?
				((prefix & REX_W)?
					"%r11":
					(so?
						"%r11w":
						(w?"%r11d":"%r11b")
					)
				):
			"%rbx"):
			(w?(so?"%bx":"%ebx"):"%bl");
	case 4:	
		return prefix ? 
			((prefix & REX_R)?
				((prefix & REX_W)?
					"%r12":
					(so?
						"%r12w":
						(w?"%r12d":"%r12b")
					)
				):
			"%rsp"):
			(w?(so?"%sp":"%esp"):(rex?"%sp":"%ah"));
	case 5:	
		return prefix ? 
			((prefix & REX_R)?
				((prefix & REX_W)?
					"%r13":
					(so?
						"%r13w":
						(w?"%r13d":"%r13b")
					)
				):
			"%rbp"):
			(w?(so?"%bp":"%ebp"):(rex?"%bp":"%ch"));
	case 6:	
		return prefix ? 
			((prefix & REX_R)?
				((prefix & REX_W)?
					"%r14":
					(so?
						"%r14w":
						(w?"%r14d":"%r14b")
					)
				):
			"%rsi"):
			(w?(so?"%si":"%esi"):(rex?"%sil":"%dh"));
	case 7:	
		return prefix ? 
			((prefix & REX_R)?
				((prefix & REX_W)?
					"%r15":
					(so?
						"%r15w":
						(w?"%r15d":"%r15b")
					)
				):
			"%rdi"):
			(w?(so?"%di":"%edi"):(rex?"%dil":"%bh"));
	}	
}

const char * reg32_64( int reg, unsigned prefix )
{
	int so  = 0; // prefix & PRE_OS;
	int ao  = 0; // prefix & PRE_AS;
	int rex = prefix & REX;
	prefix &= REX_MASK;

	switch(reg)
	{
	default:
		return "ERROR";

	case 0:	
		return prefix ? 
			"%rax":
			(so?"%ax":"%eax");
	case 1:	
		return prefix ? 
			"%rcx":
			(so?"%cx":"%ecx");
	case 2:	
		return prefix ? 
			"%rdx":
			(so?"%dx":"%edx");
	case 3:	
		return prefix ? 
			"%rbx":
			(so?"%bx":"%ebx");
	case 4:	
		return prefix ? 
			"%rsp":
			(so?"%sp":"%esp");
	case 5:	
		return prefix ? 
			"%rbp":
			(so?"%bp":"%ebp");
	case 6:	
		return prefix ? 
			"%rsi":
			(so?"%si":"%esi");
	case 7:	
		return prefix ? 
			"%rdi":
			(so?"%di":"%edi");
	}	
}

const char * pop_operand(const char * code, unsigned prefix, std::string & op )
{
	int mod = (*code & 0xc0) >> 6;
	int rm  = *code & 0x07;

	++code;

	// If rm == 4, then there is a SIB byte
	if( rm == 4 )
	{
		// Special SIB value => imm32
		if( *code == 0x25 )
		{
			char disp[16];
			code = imm32(++code, disp);
			op = disp;
			return code;
		}

		int scale = (*code & 0xc0) >> 6;
		int index = (*code & 0x38) >> 3;
		int base  = *code & 0x07;

		++code;

		char disp[16];
		disp[0] = 0;

		switch(mod)
		{
		case RM:
			// no displacement
			break;
		case RM_disp8:
			code = imm8(code, disp);
			break;
		case RM_disp32:
			code = imm32(code, disp);
			break;
		case RM_regs:
			TODO
			break;
		}

		const char * b = regStr( base,  AL, 0, Base, prefix );

		if( index != 4 || ( (prefix & REX_X ) == REX_X ))
		{
			const char * i = regStr( index, AL, 0, Index,prefix );

			char buff[128];
			sprintf( buff, "%s(%s,%s,%d)", disp, b, i, static_cast<int>(pow(2, scale)));
			op = buff;
		}
		else
		{
			char buff[128];
			sprintf( buff, "%s(%s)", disp, b );
		}
	}
	else
	{
		const char * r = regStr( rm, AL, 0, Base, prefix );

		char disp[16];
		disp[0] = 0;

		switch(mod)
		{
		case RM:
			// no displacement
			break;
		case RM_disp8:
			code = imm8(code, disp);
			break;
		case RM_disp32:
			code = imm32(code, disp);
			break;
		case RM_regs:
			TODO
			break;
		}

		char buff[128];
		sprintf( buff, "%s(%s)", disp, r );
		op = buff;
	}

	return code;
}


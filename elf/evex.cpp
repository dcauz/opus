
#include "../opus.h"
#include "evex.h"
#include "opcodes.h"
#include "operands.h"


struct Evex
{
	bool	R;
	bool	X;
	bool	B;
	bool	Rprime;
	bool	W;
	bool	z;
	bool	L;
	bool	Lprime;
	bool	b;
	bool	Vprime;

	int		mm;
	int		vvvv;
	int		pp;
	int		aaa;

	void dump()
	{
		printf( "\nR:%c ", R?'T':'F' );
		printf( "X:%c ", X?'T':'F' );
		printf( "B:%c ", B?'T':'F' );
		printf( "Rprime:%c ", Rprime?'T':'F' );
		printf( "W:%c ", W?'T':'F' );
		printf( "z:%c ", z?'T':'F' );
		printf( "L:%c ", L?'T':'F' );
		printf( "Lprime:%c ", Lprime?'T':'F' );
		printf( "b:%c ", b?'T':'F' );
		printf( "Vprime:%c ", Vprime?'T':'F' );

		printf( "mm:%d ", mm );
		printf( "vvvv:%d ", vvvv );
		printf( "pp:%d ", pp );
		printf( "aaa:%d\n", aaa );
	}
};

// 0  1  2  3  4      5      6     7                   8/11
// 62 e1 e2 e3 opcode ModR/M [SIB] [disp32 or disp8*N] [immed]
//
//     7  6  5  4  3  2  1  0
// e1  R  X  B  R' 0  0  m  m	P[7:0]
// e2  W  v  v  v  v  1  p  p	P[15:8]
// e3  z  L' L  b  V' a  a  a	P[23:16]
//
// EVEX.RXB		Combine with ModR/M.reg, ModR/M.rm (base,index/vidx)
// EVEX.R'		Combine with EVEX.R and ModR/M.reg
// EVEX.mm		Identical to low two bits of VEX.mmmmm
//
// EVEX.W		Osize promotion/Opcode extension
// EVEX.vvvv	Same as VEX.vvvv
// EVEX.pp		Identical to VEX.pp
//
// EVEX.z		Zeroing/Merging
// EVEX.L'L		Vector length/RC
// EVEX.b		Broadcast/RC/SAE Context
// EVEX.V'		Combine with EVEX.vvvv or when VSIB present
// EVEX.aaa		Embedded opmask register specifier
//
//
const char * EVEX( const char * code, Evex & evex, unsigned & prefix )
{
	evex.R = (*code & 0x80 ) != 0;
	evex.X = (*code & 0x40 ) != 0;
	evex.B = (*code & 0x20 ) != 0;
	evex.Rprime = (*code & 0x10 ) != 0;
	evex.mm = (*code & 0x3);

	++code;

	evex.W 		= (*code & 0x80) != 0;
	evex.vvvv	= (*code & 0x78) >> 3;

    // pp=1: prefix |= PRE_OS
    // pp=2: prefix |= PRE_REP
    // pp=3: prefix |= PRE_NE
	//
	evex.pp		= (*code & 0x3);

	++code;

	evex.z		= (*code & 0x80) != 0;
	evex.L		= (*code & 0x40) != 0;
	evex.Lprime	= (*code & 0x20) != 0;
	evex.b		= (*code & 0x10) != 0;
	evex.Vprime	= (*code & 0x08) != 0;
	evex.aaa    = (*code & 0x07);

	prefix |= PRE_EVEX;
	if( !evex.R )
		prefix |= REX_R;
	if( !evex.B )
		prefix |= REX_B;
	if( !evex.X )
		prefix |= REX_X;

	if( evex.Rprime )
		prefix |= PRE_Rprime;

	return ++code;
}


const char * disEVEX( const char * code, unsigned prefix )
{
	Evex evex;
	code = EVEX( code, evex, prefix );

	switch(*code)
	{
	default:
printf( "EVEX opcode %x\n", *code );
TODO
		break;

	case 0x00:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpshufb %s,%%ymm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpshufb %s,%%zmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpshufb %s,%%xmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x04:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.W )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
			printf( "vpmaddubsw %s,%s", op2.c_str(), op1.c_str() );
		}
		else if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaddubsw %s,%%ymm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaddubsw %s,%%zmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaddubsw %s,%%xmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x0b:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhrsw %s,%%ymm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhrsw %s,%%zmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhrsw %s,%%xmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x0f:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
		
			char imm[12];
			code = uimm8( code, imm );

			printf( "vpalignr $%s,%s,%%ymm%d,%s", imm, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
		
			char imm[12];
			code = uimm8( code, imm );

			printf( "vpalignr $%s,%s,%%zmm%d,%s", imm, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
		
			char imm[12];
			code = uimm8( code, imm );

			printf( "vpalignr $%s,%s,%%xmm%d,%s", imm, op2.c_str(), evex.vvvv, op1.c_str() );
		}

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x10:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.W )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
			printf( "vmovupd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vmovss %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vmovss %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vmovss %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x11:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( evex.W )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
			printf( "vmovupd %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vmovss %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vmovss %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vmovss %s,%s\n", op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0x12:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if(evex.pp == 2)
		{
			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
				printf( "vmovsldup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
				printf( "vmovsldup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
				printf( "vmovsldup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
		}
		else if(evex.pp == 3)
		{
			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
				printf( "vmovddup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
				printf( "vmovddup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
				printf( "vmovddup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
		}
		else
		{
			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
				printf( "vmovhlps %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
				printf( "vmovhlps %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
				if( evex.pp == 1 )
					printf( "vmovlpd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				else
					printf( "vmovhlps %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			}
		}
		break;
	}
	case 0x13:
	{
		std::string op1;
		std::string	op2;

		if( evex.mm == 1 )
		{
     		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vmovlpd %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else // mm == 2
		{
			if( evex.Lprime )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );
				printf( "vcvtph2ps %s,%s", op2.c_str(), op1.c_str() );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );
				printf( "vcvtph2ps %s,%s", op2.c_str(), op1.c_str() );
			}
			else
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
				printf( "vcvtph2ps %s,%s", op2.c_str(), op1.c_str() );
			}

			if( evex.aaa )
				printf( "{%%k%d}\n", evex.aaa );
			else
				printf( "\n" );
		}
		break;
	}
	case 0x14:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if(evex.mm == 1)
		{
			if(evex.pp == 0)
			{
				if( evex.Lprime )
				{
   		    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpcklps %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
				else if( evex.L )
				{
			       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpcklps %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
				else
				{
   		    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpcklps %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
			}
			else
			{
				if( evex.Lprime )
				{
   		    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpcklpd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
				else if( evex.L )
				{
			       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpcklpd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
				else
				{
   		    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpcklpd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
			}
		}
		else
		{
			std::string op1;
			std::string op2;

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, 32);	

			char imm[12];
			code = imm8( code, imm );

			printf( "vpextrb $%s,%s,%s\n", imm, op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0x15:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if(evex.mm == 1)
		{
			if(evex.pp == 0)
			{
				if( evex.Lprime )
				{
	   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpckhps %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
				else if( evex.L )
				{
			       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpckhps %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
				else
				{
	   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpckhps %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
			}
			else
			{
				if( evex.Lprime )
				{
	   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpckhpd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
				else if( evex.L )
				{
			       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpckhpd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
				else
				{
	   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
					printf( "vunpckhpd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
				}
			}
		}
		else
		{
			std::string op1;
			std::string op2;

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, 32, 2);	

			char imm[12];
			code = imm8( code, imm );

			printf( "vpextrw $%s,%s,%s\n", imm, op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0x16:
	{
		std::string op1;
		std::string	op2;

		if(evex.pp == 0)
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			if( !evex.Vprime )
				evex.vvvv += 16;

			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
				printf( "vmovlhps %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
				printf( "vmovlhps %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
				printf( "vmovlhps %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			}
		}
		else if(evex.pp == 2)
		{
			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
				printf( "vmovshdup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
				printf( "vmovshdup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
				printf( "vmovshdup %s,%s", op2.c_str(), op1.c_str() );
				if( evex.aaa )
					printf( "{%%k%d}\n", evex.aaa );
				else
					printf( "\n" );
			}
		}
		else if( evex.mm == 3 )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, 32);	

			char imm[12];
			code = imm8( code, imm );

			char inst = evex.W ? 'q':'d';
			printf( "vpextr%c $%s,%s,%s\n", inst, imm, op1.c_str(), op2.c_str() );
		}
		else
		{
			evex.vvvv = evex.vvvv ^ 0xf;
		
			if( !evex.Vprime )
				evex.vvvv += 16;

      		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vmovhpd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x17:
	{
		std::string op1;
		std::string op2;

		if( evex.mm == 1 )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vmovhpd %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, 32 );	

			char imm[12];
			code = imm8( code, imm );

			printf( "vextractps $%s,%s,%s\n", imm, op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0x1c:
	{
		std::string op1;
		std::string op2;

		if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op2, op1 );
		else if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op2, op1 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op2, op1 );

		if( evex.aaa )
			printf( "vpabsb %s,%s{%%k%d}\n", op1.c_str(), op2.c_str(), evex.aaa );
		else
			printf( "vpabsb %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x1d:
	{
		std::string op1;
		std::string op2;

		if( evex.mm == 2 )
		{
			if( evex.Lprime )
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op2, op1 );
			else if( evex.L )
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op2, op1 );
			else
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op2, op1 );

			if( evex.aaa )
				printf( "vpabsw %s,%s{%%k%d}\n", op1.c_str(), op2.c_str(), evex.aaa );
			else
				printf( "vpabsw %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else // mm == 3
		{
			if( evex.Lprime )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );

				char imm[12];
				code = imm8( code, imm );

				printf( "vcvtps2ph $%s,%s,%s", imm, op1.c_str(), op2.c_str() );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );

				char imm[12];
				code = imm8( code, imm );

				printf( "vcvtps2ph $%s,%s,%s", imm, op1.c_str(), op2.c_str() );
			}
			else
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

				char imm[12];
				code = imm8( code, imm );

				printf( "vcvtps2ph $%s,%s,%s", imm, op1.c_str(), op2.c_str() );
			}

			if( evex.aaa )
				printf( "{%%k%d}\n", evex.aaa );
			else
				printf( "\n" );
		}
		break;
	}
	case 0x1e:
	{
		std::string op1;
		std::string op2;

		if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op2, op1 );
		else if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op2, op1 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op2, op1 );

		if( evex.aaa )
			printf( "vpabsd %s,%s{%%k%d}\n", op1.c_str(), op2.c_str(), evex.aaa );
		else
			printf( "vpabsd %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x20:
	{
		std::string op1;
		std::string op2;

		if( evex.mm == 3 )
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			if( !evex.Vprime )
				evex.vvvv += 16;

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, 32);	

			char imm[12];
			code = imm8( code, imm );

			printf( "vpinsrb $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
			if( evex.L )
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );	
			else if( evex.Lprime )
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
			else
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpmovsxbw %s,%s", op2.c_str(), op1.c_str() );

			if( evex.aaa )
				printf( "{%%k%d}\n", evex.aaa );
			else
				printf( "\n" );
		}
		break;
	}
	case 0x21:
	{
		std::string op1;
		std::string op2;

		if( evex.mm == 3 )
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			if( !evex.Vprime )
				evex.vvvv += 16;

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

			char imm[12];
			code = imm8( code, imm );

			printf( "vinsertps $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
			if( evex.L && !evex.Lprime )
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_XMM0, 0, op1, op2 );	
			else if( !evex.L && evex.Lprime )
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
			else
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

			printf( "vpmovsxbd %s,%s", op2.c_str(), op1.c_str() );

			if( evex.aaa )
				printf( "{%%k%d}\n", evex.aaa );
			else
				printf( "\n" );
		}
		break;
	}
	case 0x22:
	{
		std::string op1;
		std::string op2;

		if( evex.mm == 3 )
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			if( !evex.Vprime )
				evex.vvvv += 16;

			char inst;
			int opSize;

			if( evex.W )
			{
				inst = 'q';
				opSize = 64;
			}
			else
			{
				inst = 'd';
				opSize = 32;
			}

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, opSize );	

			char imm[12];
			code = imm8( code, imm );

			printf("vpinsr%c $%s,%s,%%xmm%d,%s\n", inst, imm, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
			if( evex.L && !evex.Lprime )
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_XMM0, 0, op1, op2 );	
			else if( !evex.L && evex.Lprime )
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
			else
				code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			
			printf( "vpmovsxbq %s,%s", op2.c_str(), op1.c_str() );

			if( evex.aaa )
				printf( "{%%k%d}\n", evex.aaa );
			else
				printf( "\n" );
		}
		break;
	}
	case 0x23:
	{
		std::string op1;
		std::string op2;

		if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );	
		else if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		printf( "vpmovsxwd %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x24:
	{
		std::string op1;
		std::string op2;

		if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_XMM0, 0, op1, op2 );	
		else if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		printf( "vpmovsxwq %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x25:
	{
		std::string op1;
		std::string op2;

		if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );	
		else if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		printf( "vpmovsxdq %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}

	case 0x28:
	{
		std::string op1;
		std::string	op2;

   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
		printf( "vmovapd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x29:
	{
		std::string op1;
		std::string	op2;

   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
		printf( "vmovapd %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x2a:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;
		if( evex.W )
			prefix |= REX_W;

		if( evex.mm == 2 )
		{
			if( evex.Lprime )
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
				printf( "vmovntdqa %s,%s\n", op2.c_str(), op1.c_str() );
			}
			else if( evex.L )
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
				printf( "vmovntdqa %s,%s\n", op2.c_str(), op1.c_str() );
			}
			else
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
				printf( "vmovntdqa %s,%s\n", op2.c_str(), op1.c_str() );
			}
		}
		else
		{
	   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 1, op1, op2, -1, -1, 16 );
			if( evex.pp == 3 )
				printf( "vcvtsi2sd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			else
				printf( "vcvtsi2ss %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x2b:
	{
		std::string op1;
		std::string	op2;

		if( evex.mm == 1 )
		{
			if( evex.Lprime )
			{
   				code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
				if( evex.pp == 1 )
					printf( "vmovntpd %s,%s\n", op1.c_str(), op2.c_str() );
				else
					printf( "vmovntps %s,%s\n", op1.c_str(), op2.c_str() );
			}
			else if( evex.L )
			{
   				code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
				if( evex.pp == 1 )
					printf( "vmovntpd %s,%s\n", op1.c_str(), op2.c_str() );
				else
					printf( "vmovntps %s,%s\n", op1.c_str(), op2.c_str() );
			}
			else
			{
   				code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
				if( evex.pp == 1 )
					printf( "vmovntpd %s,%s\n", op1.c_str(), op2.c_str() );
				else
					printf( "vmovntps %s,%s\n", op1.c_str(), op2.c_str() );
			}
		}
		else
		{
			evex.vvvv = evex.vvvv ^ 0xf;
			if( !evex.Vprime )
				evex.vvvv += 16;

			if( evex.Lprime )
			{
   				code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
				printf( "vpackusdw %s,%%ymm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else if( evex.L )
			{
   				code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
				printf( "vpackusdw %s,%%zmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else
			{
   				code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
				printf( "vpackusdw %s,%%xmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
			}

			if( evex.aaa )
				printf( "{%%k%d}\n", evex.aaa );
			else
				printf( "\n" );
		}
		break;
	}
	case 0x2c:
	{
		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;
		if( evex.W )
			prefix |= REX_W;

   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 1, op1, op2 );
		if( evex.pp == 3 )
			printf( "vcvttsd2si %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "vcvttss2si %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x2d:
	{
		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;
		if( evex.W )
			prefix |= REX_W;

   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 1, op1, op2 );
		if( evex.pp == 3 )
			printf( "vcvtsd2si %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "vcvtss2si %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x2e:
	{
		std::string op1;
		std::string	op2;

   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
		if( evex.pp == 1 )
			printf( "vucomisd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "vucomiss %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x2f:
	{
		std::string op1;
		std::string	op2;

		if( evex.pp == 1 )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vcomisd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vcomiss %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}

	case 0x30:
	{
		std::string op1;
		std::string	op2;

		if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );	
		else if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpmovzxbw %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );

		break;
	}
	case 0x31:
	{
		std::string op1;
		std::string	op2;

		if( evex.L && !evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_XMM0, 0, op1, op2 );	
		else if( !evex.L && evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		printf( "vpmovzxbd %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );

		break;
	}
	case 0x32:
	{
		std::string op1;
		std::string	op2;

		if( evex.L && !evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_XMM0, 0, op1, op2 );	
		else if( !evex.L && evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		
		printf( "vpmovzxbq %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );

		break;
	}

	case 0x33:
	{
		std::string op1;
		std::string op2;

		if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );	
		else if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		printf( "vpmovzxwd %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x34:
	{
		std::string op1;
		std::string op2;

		if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_XMM0, 0, op1, op2 );	
		else if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		printf( "vpmovzxwq %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x35:
	{
		std::string op1;
		std::string op2;

		if( evex.L )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );	
		else if( evex.Lprime )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		printf( "vpmovzxdq %s,%s", op2.c_str(), op1.c_str() );

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}

	case 0x38:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminsb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminsb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminsb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x39:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		const char inst = evex.W ? 'q':'d';

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmins%c %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmins%c %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmins%c %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x3a:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminuw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminuw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminuw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x3b:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		char l = ( evex.W == 1 ) ? 'q':'d';

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminu%c %s,%%ymm%d,%s", l, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminu%c %s,%%zmm%d,%s", l, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminu%c %s,%%xmm%d,%s", l, op2.c_str(), evex.vvvv, op1.c_str() );
		}

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0x3c:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxsb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxsb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxsb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x3d:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		const char inst = evex.W ? 'q':'d';

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxs%c %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxs%c %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxs%c %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x3e:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxuw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxuw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxuw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x3f:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		const char inst = evex.W ? 'q':'d';

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxu%c %s,%%ymm%d,%s", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxu%c %s,%%zmm%d,%s", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxu%c %s,%%xmm%d,%s", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}

	case 0x40:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string	op2;

		const char inst = evex.W ? 'q':'d';

		if( evex.Lprime )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmull%c %s,%%ymm%d,%s", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmull%c %s,%%zmm%d,%s", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmull%c %s,%%xmm%d,%s", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}

	case 0x51:
	{
		std::string op1;
		std::string	op2;

		const char * inst;
		int dispN;

		if( evex.pp == 2 )
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			if( !evex.Vprime )
				evex.vvvv += 16;

			inst = "vsqrtss";
			dispN= 4;

			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
			}
		}
		else if( evex.pp == 3 )
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			if( !evex.Vprime )
				evex.vvvv += 16;

			inst = "vsqrtsd";
			dispN= 16;

			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
			}
		}
		else if( evex.pp == 1 )
		{
			inst = "vsqrtpd";
			dispN= 16;

			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
			}
		}
		else
		{
			inst = "vsqrtps";
			dispN= 16;

			if( evex.Lprime )
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
			}
			else if( evex.L )
			{
		       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
			}
			else
			{
   	    		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
				printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
			}
		}

		break;
	}
	case 0x54:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 1 )
		{
			inst = "vandpd";
			dispN= 4;
		}
		else
		{
			inst = "vandps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x55:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 1 )
		{
			inst = "vandnpd";
			dispN= 4;
		}
		else
		{
			inst = "vandnps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x56:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 1 )
		{
			inst = "vorpd";
			dispN= 4;
		}
		else
		{
			inst = "vorps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x57:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 1 )
		{
			inst = "vxorpd";
			dispN= 4;
		}
		else
		{
			inst = "vxorps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x58:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 2 )
		{
			inst = "vaddss";
			dispN= 4;
		}
		else if( evex.pp == 1 )
		{
			inst = "vaddpd";
			dispN= 16;
		}
		else if( evex.pp == 3 )
		{
			inst = "vaddsd";
			dispN= 16;
		}
		else
		{
			inst = "vaddps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x59:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 2 )
		{
			inst = "vmulss";
			dispN= 4;
		}
		else if( evex.pp == 3 )
		{
			inst = "vmulsd";
			dispN= 16;
		}
		else if( evex.pp == 1 )
		{
			inst = "vmulpd";
			dispN= 16;
		}
		else
		{
			inst = "vmulps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x5a:
	{
		std::string op1;
		std::string	op2;

		if(evex.pp == 1 )
		{
			if( evex.L )
		   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_ZMM0, 0, op1, op2 );
			else if( evex.Lprime )
		   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_YMM0, 0, op1, op2 );
			else
		   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		}
		else
		{
			if( evex.L )
		   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );
			else if( evex.Lprime )
		   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );
			else
		   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		}

		if( evex.aaa )
		{
			if(evex.pp == 1 )
				printf( "vcvtpd2ps %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
			else if(evex.pp == 2 )
			{
				evex.vvvv = evex.vvvv ^ 0xf;

				if( !evex.Vprime )
					evex.vvvv += 16;

				printf( "vcvtss2sd %s,%%xmm%d,%s{%%k%d}\n", op2.c_str(), evex.vvvv, op1.c_str(),
					evex.aaa );
			}
			else if(evex.pp == 3 )
			{
				evex.vvvv = evex.vvvv ^ 0xf;

				if( !evex.Vprime )
					evex.vvvv += 16;

				printf( "vcvtsd2ss %s,%%xmm%d,%s{%%k%d}\n", op2.c_str(), evex.vvvv, op1.c_str(),
					evex.aaa );
			}
			else
				printf( "vcvtps2pd %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
		}
		else
		{
			if(evex.pp == 1 )
				printf( "vcvtpd2ps %s,%s\n", op2.c_str(), op1.c_str() );
			else if(evex.pp == 2 )
			{
				evex.vvvv = evex.vvvv ^ 0xf;

				if( !evex.Vprime )
					evex.vvvv += 16;

				printf( "vcvtss2sd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else if(evex.pp == 3 )
			{
				evex.vvvv = evex.vvvv ^ 0xf;

				if( !evex.Vprime )
					evex.vvvv += 16;

				printf( "vcvtsd2ss %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else
				printf( "vcvtps2pd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x5b:
	{
		std::string op1;
		std::string	op2;

		if( evex.Lprime )
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
		else if( evex.L )
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
		else
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

		if( evex.pp == 2 )
		{
			if( evex.aaa )
				printf( "vcvttps2dq %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
			else
				printf( "vcvttps2dq %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( evex.pp == 1 )
		{
			if( evex.aaa )
				printf( "vcvtps2dq %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
			else
				printf( "vcvtps2dq %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{	
			if( evex.aaa )
				printf( "vcvtdq2ps %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
			else
				printf( "vcvtdq2ps %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x5c:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 2 )
		{
			inst = "vsubss";
			dispN= 4;
		}
		else if( evex.pp == 1 )
		{
			inst = "vsubpd";
			dispN= 16;
		}
		else if( evex.pp == 3 )
		{
			inst = "vsubsd";
			dispN= 16;
		}
		else
		{
			inst = "vsubps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x5d:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 2 )
		{
			inst = "vminss";
			dispN= 4;
		}
		else if( evex.pp == 3 )
		{
			inst = "vminsd";
			dispN= 16;
		}
		else if( evex.pp == 1 )
		{
			inst = "vminpd";
			dispN= 4;
		}
		else
		{
			inst = "vminps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x5e:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 2 )
		{
			inst = "vdivss";
			dispN= 4;
		}
		else if( evex.pp == 3 )
		{
			inst = "vdivsd";
			dispN= 16;
		}
		else if( evex.pp == 1 )
		{
			inst = "vdivpd";
			dispN= 16;
		}
		else
		{
			inst = "vdivps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x5f:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst;
		int dispN;

		if( evex.pp == 2 )
		{
			inst = "vmaxss";
			dispN= 4;
		}
		else if( evex.pp == 3 )
		{
			inst = "vmaxsd";
			dispN= 16;
		}
		else if( evex.pp == 1 )
		{
			inst = "vmaxpd";
			dispN= 4;
		}
		else
		{
			inst = "vmaxps";
			dispN= 16;
		}

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, dispN );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}

	case 0x60:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklbw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklbw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklbw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x61:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklwd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklwd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklwd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x62:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckldq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckldq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckldq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x63:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpacksswb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpacksswb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpacksswb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x67:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpackuswb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpackuswb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpackuswb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x68:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhbw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhbw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhbw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x69:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhwd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhwd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhwd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x6a:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhdq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhdq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhdq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x6b:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpackssdw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpackssdw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpackssdw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x6c:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklqdq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklqdq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpcklqdq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x6d:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhqdq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhqdq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpunpckhqdq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x6e:
	{
		std::string op1;
		std::string	op2;

		if( evex.W )
		{
        	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, -1, 8 );
			printf( "vmovq %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, -1, 4 );
			printf( "vmovd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x6f:
	{
		std::string op1;
		std::string	op2;

		if( evex.L )
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
		else if( evex.Lprime )
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
		else
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

		if( evex.pp == 2 )
		{
			if( evex.W)
			{
				if( evex.aaa == 0 )
					printf( "vmovdqu64 %s,%s\n", op2.c_str(), op1.c_str() );
				else
					printf( "vmovdqu64 %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
			}
			else
			{
				if( evex.aaa == 0 )
					printf( "vmovdqu32 %s,%s\n", op2.c_str(), op1.c_str() );
				else
					printf( "vmovdqu32 %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
			}
		}
		else
		{
			if( evex.W)
			{
				if( evex.aaa == 0 )
					printf( "vmovdqa64 %s,%s\n", op2.c_str(), op1.c_str() );
				else
					printf( "vmovdqa64 %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
			}
			else
			{
				if( evex.aaa == 0 )
					printf( "vmovdqa32 %s,%s\n", op2.c_str(), op1.c_str() );
				else
					printf( "vmovdqa32 %s,%s{%%k%d}\n", op2.c_str(), op1.c_str(), evex.aaa );
			}
		}
		break;
	}
	case 0x70:
	{
		std::string op1;
		std::string	op2;

		if( evex.L )
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
		else if( evex.Lprime )
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
		else
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

		char imm[12];
		code = uimm8( code, imm );

		if( evex.pp == 1 )
		{
			if(evex.aaa)
				printf( "vpshufd $%s,%s,%s{%%k%d}\n", imm,op2.c_str(), op1.c_str(), evex.aaa );
			else
				printf( "vpshufd $%s,%s,%s\n", imm,op2.c_str(), op1.c_str() );
		}
		else
		{
			if(evex.aaa)
				printf( "vpshuflw $%s,%s,%s{%%k%d}\n", imm,op2.c_str(), op1.c_str(), evex.aaa );
			else
				printf( "vpshuflw $%s,%s,%s\n", imm,op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x73:
	{
		std::string op1;
		std::string	op2;

		evex.vvvv = evex.vvvv ^ 0xf;
		if( !evex.Vprime )
			evex.vvvv += 16;
		const char * r2;

		int reg = ((*++code) & 0x38 ) >> 3;

		if( evex.L )
		{
	       	code = mod_reg_rm_ops( code, prefix, OpRegs::ZMM0, 0, op1, op2 );
			r2 = regToStr(static_cast<Register>(ZMM0+evex.vvvv));
		}
		else if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
			r2 = regToStr(static_cast<Register>(YMM0+evex.vvvv));
		}
		else
		{
	       	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			r2 = regToStr(static_cast<Register>(XMM0+evex.vvvv));
		}

		char imm[12];
		code = uimm8( code, imm );

		if( reg == 3 )
			printf( "vpsrldq $%s,%s,%s\n", imm,op2.c_str(), r2 );
		else
			printf( "vpslldq $%s,%s,%s\n", imm,op2.c_str(), r2 );
		break;
	}
	case 0x7e:
	{
		std::string op1;
		std::string	op2;

		if( evex.W )
		{
        	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, -1, 8 );
			printf( "vmovq %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, -1, 4 );
			printf( "vmovd %s,%s\n", op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0x7f:
	{
		std::string op1;
		std::string	op2;

		if( evex.L )
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2 );
		else if( evex.Lprime )
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
		else
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

		if( evex.pp == 2 )
		{
			if( evex.W )
			{
				if( evex.aaa == 0 )
					printf( "vmovdqu64 %s,%s\n", op1.c_str(), op2.c_str() );
				else
					printf( "vmovdqu64 %s,%s{%%k%d}\n", op1.c_str(), op2.c_str(), evex.aaa );
			}
			else
			{
				if( evex.aaa == 0 )
					printf( "vmovdqu32 %s,%s\n", op1.c_str(), op2.c_str() );
				else
					printf( "vmovdqu32 %s,%s{%%k%d}\n", op1.c_str(), op2.c_str(), evex.aaa );
			}
		}
		else
		{
			if( evex.W )
			{
				if( evex.aaa == 0 )
					printf( "vmovdqa64 %s,%s\n", op1.c_str(), op2.c_str() );
				else
					printf( "vmovdqa64 %s,%s{%%k%d}\n", op1.c_str(), op2.c_str(), evex.aaa );
			}
			else
			{
				if( evex.aaa == 0 )
					printf( "vmovdqa32 %s,%s\n", op1.c_str(), op2.c_str() );
				else
					printf( "vmovdqa32 %s,%s{%%k%d}\n", op1.c_str(), op2.c_str(), evex.aaa );
			}
		}
		break;
	}

	case 0xffffffc2:
	{
		std::string op1;
		std::string op2;

		evex.vvvv = evex.vvvv ^ 0xf;
		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.pp == 3 )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::K0_XMM0, 0, op1, op2 );	

			char imm[12];
			code = uimm8( code, imm );

			long i = strtol( imm, nullptr, 16 );
	
			const char * inst;
			switch(i)
			{
			case 0:  inst = "vcmpeqsd";		break;
			case 1:  inst = "vcmpltsd";		break;
			case 2:  inst = "vcmplesd";		break;
			case 3:  inst = "vcmpunordsd";	break;
			case 4:  inst = "vcmpneqsd";	break;
			case 5:  inst = "vcmpnltsd";	break;
			case 6:  inst = "vcmpnlesd";	break;
			case 7:  inst = "vcmpordsd";	break;
			case 8:  inst = "vcmpeq_uqsd";	break;
			case 9:  inst = "vcmpngesd";	break;
			case 10: inst = "vcmpngtsd";	break;
			case 11: inst = "vcmpfalsesd";	break;
			case 12: inst = "vcmpneq_oqsd";	break;
			case 13: inst = "vcmpgesd";		break;
			case 14: inst = "vcmpgtsd";		break;
			case 15: inst = "vcmptruesd";	break;
			case 16: inst = "vcmpeq_ossd";	break;
			case 17: inst = "vcmplt_oqsd";	break;
			case 18: inst = "vcmple_oqsd";	break;
			case 19: inst = "vcmpunord_ssd";break;
			case 20: inst = "vcmpneq_ussd";	break;
			case 21: inst = "vcmpnlt_uqsd";	break;
			case 22: inst = "vcmpnle_uqsd";	break;
			case 23: inst = "vcmpord_ssd";	break;
			case 24: inst = "vcmpeq_ussd";	break;
			case 25: inst = "vcmpnge_uqsd";	break;
			case 26: inst = "vcmpngt_uqsd";	break;
			case 27: inst = "vcmpfalse_ossd";break;
			case 28: inst = "vcmpneq_ossd";	break;
			case 29: inst = "vcmpge_oqsd";	break;
			case 30: inst = "vcmpgt_oqsd";	break;
			case 31: inst = "vcmptrue_ussd";break;
			}

			if( i >= 32 )
				printf( "vcmpsd $%s,%s,%%xmm%d,%s{%%k%d}\n", imm, op2.c_str(), evex.vvvv, 
					op1.c_str(), evex.aaa );
			else
				printf( "%s %s,%%xmm%d,%s{%%k%d}\n", inst, op2.c_str(), evex.vvvv, op1.c_str(), 
					evex.aaa );
		}
		else if( evex.L )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::K0_ZMM0, 0, op1, op2 );	

			char imm[12];
			code = imm8( code, imm );

			if( evex.aaa == 0 )
				printf( "vcmppd $%s,%s,%%zmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str());
			else
				printf( "vcmppd $%s,%s,%%zmm%d,%s{%%k%d}\n", imm, op2.c_str(), evex.vvvv, 
					op1.c_str(), evex.aaa );
		}
		else if( evex.Lprime )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::K0_YMM0, 0, op1, op2 );	

			char imm[12];
			code = imm8( code, imm );

			if( evex.aaa == 0 )
				printf( "vcmppd $%s,%s,%%ymm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str());
			else
				printf( "vcmppd $%s,%s,%%ymm%d,%s{%%k%d}\n", imm, op2.c_str(), evex.vvvv, 
					op1.c_str(), evex.aaa );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::K0_XMM0, 0, op1, op2 );	

			char imm[12];
			code = imm8( code, imm );

			if( evex.aaa == 0 )
				printf( "vcmppd $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
			else
				printf( "vcmppd $%s,%s,%%xmm%d,%s{%%k%d}\n", imm, op2.c_str(), evex.vvvv, 
					op1.c_str(), evex.aaa );
		}
		break;
	}

	case 0xffffffc4:
	{
		std::string op1;
		std::string op2;

		evex.vvvv = evex.vvvv ^ 0xf;
		if( !evex.Vprime )
			evex.vvvv += 16;

		int opSize = 32;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, opSize, 2 );	

		char imm[12];
		code = imm8( code, imm );

		printf( "vpinsrw $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
		break;
	}
	case 0xffffffc5:
	{
		std::string op1;
		std::string op2;

		evex.vvvv = evex.vvvv ^ 0xf;
		if( !evex.Vprime )
			evex.vvvv += 16;

		int opSize = evex.W ? 64:32;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 0, op1, op2, opSize );	

		char imm[12];
		code = imm8( code, imm );

		printf( "vpextrw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffc6:
	{
		std::string op1;
		std::string	op2;

		evex.vvvv = evex.vvvv ^ 0xf;
		if( !evex.Vprime )
			evex.vvvv += 16;

		char imm[12];

		if( evex.pp == 1 )
		{
			if( evex.Lprime )
			{
	       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
				code = imm8( code, imm );
				printf( "vshufpd $%s,%s,%%ymm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else if( evex.L )
			{
	       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
				code = imm8( code, imm );
				printf( "vshufpd $%s,%s,%%zmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else
			{
	       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
				code = imm8( code, imm );
				printf( "vshufpd $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
			}
		}
		else
		{
			if( evex.Lprime )
			{
	       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
				code = imm8( code, imm );
				printf( "vshufps $%s,%s,%%ymm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else if( evex.L )
			{
	       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
				code = imm8( code, imm );
				printf( "vshufps $%s,%s,%%zmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
			}
			else
			{
	       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
				code = imm8( code, imm );
				printf( "vshufps $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
			}
		}
		break;
	}

	case 0xffffffd1:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrlw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrlw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrlw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffd2:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrld %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrld %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrld %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffd3:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrlq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrlq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsrlq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffd4:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffd5:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmullw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmullw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmullw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffd8:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubusb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubusb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubusb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffd9:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubusw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubusw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubusw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffda:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminub %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminub %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminub %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffdb:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst = evex.W ? "vpandq" : "vpandd";

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffdc:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddusb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddusb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddusb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffdd:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddusw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddusw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddusw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffde:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxub %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxub %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxub %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffdf:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst = evex.W ? "vpandnq" : "vpandnd";

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}

	case 0xffffffe0:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst = "vpavgb";

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}

	case 0xffffffe1:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst = "vpsraw";

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffe2:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst = evex.W ? "vpsraq" : "vpsrad";

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffe3:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst = "vpavgw";

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}

	case 0xffffffe4:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhuw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhuw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhuw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffe5:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmulhw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffe6:
	{
		std::string op1;
		std::string	op2;

		if( evex.Lprime )
		{
			if( evex.pp == 2 )
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );
				printf( "vcvtdq2pd %s,%s", op2.c_str(), op1.c_str() );
			}
			else if( evex.pp == 1 )
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_YMM0, 0, op1, op2 );
				printf( "vcvttpd2dq %s,%s", op2.c_str(), op1.c_str() );
			}
			else
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_YMM0, 0, op1, op2 );
				printf( "vcvtpd2dq %s,%s", op2.c_str(), op1.c_str() );
			}
		}
		else if( evex.L )
		{
			if( evex.pp == 2 )
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0_YMM0, 0, op1, op2 );
				printf( "vcvtdq2pd %s,%s", op2.c_str(), op1.c_str() );
			}
			else if( evex.pp == 1 )
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_ZMM0, 0, op1, op2 );
				printf( "vcvttpd2dq %s,%s", op2.c_str(), op1.c_str() );
			}
			else
			{
	   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0_ZMM0, 0, op1, op2 );
				printf( "vcvtpd2dq %s,%s", op2.c_str(), op1.c_str() );
			}
		}
		else
		{
	   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

			if( evex.pp == 2 )
			{
				printf( "vcvtdq2pd %s,%s", op2.c_str(), op1.c_str() );
			}
			else if( evex.pp == 1 )
			{
				printf( "vcvttpd2dq %s,%s", op2.c_str(), op1.c_str() );
			}
			else
			{
				printf( "vcvtpd2dq %s,%s", op2.c_str(), op1.c_str() );
			}
		}

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0xffffffe7:
	{
		std::string op1;
		std::string	op2;

		if( evex.Lprime )
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2 );
		else
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "vmovntdq %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffe8:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubsb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubsb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubsb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffe9:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubsw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubsw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubsw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffea:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminsw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminsw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpminsw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffeb:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst = evex.W ? "vporq" : "vpord";

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffec:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddsb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddsb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddsb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffed:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddsw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddsw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddsw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffee:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxsw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxsw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaxsw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xffffffef:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		const char * inst = evex.W ? "vpxorq" : "vpxord";

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%zmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}

	case 0xfffffff1:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsllw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsllw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsllw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffff2:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpslld %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpslld %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpslld %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffff3:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsllq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsllq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsllq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffff4:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmuludq %s,%%ymm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmuludq %s,%%zmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmuludq %s,%%xmm%d,%s", op2.c_str(), evex.vvvv, op1.c_str() );
		}

		if( evex.aaa )
			printf( "{%%k%d}\n", evex.aaa );
		else
			printf( "\n" );
		break;
	}
	case 0xfffffff5:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaddwd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaddwd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpmaddwd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffff6:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsadbw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsadbw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsadbw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffff8:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffff9:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffffa:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffffb:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpsubq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffffc:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddb %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffffd:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0xfffffffe:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
			printf( "vpaddd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	}

	return code;
}

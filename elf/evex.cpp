
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
// EVEX.mm		Identical to low two bits of VEX.mmmmm
// EVEX.pp		Identical to VEX.pp
// EVEX.RXB		Combine with ModR/M.reg, ModR/M.rm (base,index/vidx)
// EVEX.R'		Combine with EVEX.R and ModR/M.reg
// EVEX.X		Combine with EVEX.B and ModR/M.rm, when SIB/VSIB absent
// EVEX.vvvv	Same as VEX.vvvv
// EVEX.V'		Combine with EVEX.vvvv or when VSIB present
// EVEX.aaa		Embedded opmask register specifier
// EVEX.W		Osize promotion/Opcode extension
// EVEX.z		Zeroing/Merging
// EVEX.b		Broadcast/RC/SAE Context
// EVEX.L'L		Vector length/RC
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
	evex.pp		= (*code & 0x3);

	++code;

	evex.z		= (*code & 0x80) != 0;
	evex.L		= (*code & 0x40) != 0;
	evex.Lprime	= (*code & 0x20) != 0;
	evex.b		= (*code & 0x10) != 0;
	evex.Vprime	= (*code & 0x08) != 0;
	evex.aaa    = (*code & 0x03);

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

	case 0x10:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
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

		if( evex.Lprime )
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
			printf( "vmovhlps %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	case 0x14:
	{
		if(evex.pp == 0)
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			std::string op1;
			std::string	op2;

			if( !evex.Vprime )
				evex.vvvv += 16;

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
		if(evex.pp == 0)
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			std::string op1;
			std::string	op2;

			if( !evex.Vprime )
				evex.vvvv += 16;

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
		if(evex.pp == 0)
		{
			evex.vvvv = evex.vvvv ^ 0xf;

			std::string op1;
			std::string	op2;

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
		else
		{
			std::string op1;
			std::string op2;

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, 32);	

			char imm[12];
			code = imm8( code, imm );

			char inst = evex.W ? 'q':'d';
			printf( "vpextr%c $%s,%s,%s\n", inst, imm, op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0x20:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		if( !evex.Vprime )
			evex.vvvv += 16;

		std::string op1;
		std::string op2;

		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, 32);	

		char imm[12];
		code = imm8( code, imm );

		printf( "vpinsrb $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), evex.vvvv, op1.c_str() );
		break;
	}
	case 0x22:
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

		std::string op1;
		std::string op2;

		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, opSize );	

		char imm[12];
		code = imm8( code, imm );

		printf( "vpinsr%c $%s,%s,%%xmm%d,%s\n", inst, imm, op2.c_str(), evex.vvvv, op1.c_str() );
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

   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 1, op1, op2, -1, -1, 16 );
		printf( "vcvtsi2ss %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
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
		printf( "vcvtss2si %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x2e:
	{
		std::string op1;
		std::string	op2;

   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
		printf( "vucomiss %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x2f:
	{
		std::string op1;
		std::string	op2;

   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, -1, 16 );
		printf( "vcomiss %s,%s\n", op2.c_str(), op1.c_str() );
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

		inst = "vandps";
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

		inst = "vandnps";
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

		inst = "vorps";
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

		inst = "vxorps";
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

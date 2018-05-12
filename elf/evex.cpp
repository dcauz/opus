
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
	case 0x60:
	{
		evex.vvvv = evex.vvvv ^ 0xf;

		std::string op1;
		std::string	op2;

		if( !evex.Vprime )
			evex.vvvv += 16;

		if( evex.Lprime )
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpcklbw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpcklbw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpcklwd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpcklwd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckldq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckldq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpacksswb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpacksswb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpackuswb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpackuswb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckhbw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckhbw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckhwd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckhwd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckhdq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckhdq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpackssdw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpackssdw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpcklqdq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpcklqdq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckhqdq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpunpckhqdq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
        	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, 8 );
			printf( "vmovq %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, 4 );
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
        	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, 8 );
			printf( "vmovq %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, 4 );
			printf( "vmovd %s,%s\n", op1.c_str(), op2.c_str() );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddq %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddq %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddq %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddsb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddsb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddsw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddsw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddsw %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddb %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddb %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddw %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddw %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
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
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::YMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddd %s,%%ymm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else if( evex.L )
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::ZMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddd %s,%%zmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		else
		{
	       	code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, -1, 16 );
			printf( "vpaddd %s,%%xmm%d,%s\n", op2.c_str(), evex.vvvv, op1.c_str() );
		}
		break;
	}
	}

	return code;
}

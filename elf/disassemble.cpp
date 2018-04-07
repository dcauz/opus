#include "../opus.h"
#include "opcodes.h"
#include "operands.h"

#include "dis_0.h"
#include "dis_1.h"
#include "dis_2.h"
#include "dis_3.h"
#include "dis_5.h"
#include "dis_6.h"
#include "dis_7.h"
#include "dis_8.h"
#include "dis_9.h"
#include "dis_a.h"
#include "dis_b.h"
#include "dis_c.h"
#include "dis_d.h"
#include "dis_e.h"
#include "dis_f.h"

// http://ref.x86asm.net/coder64.html
// http://www.mathemainzel.info/files/x86asmref.html

bool disassemble( const char * code, const char *end )
{
	const char * start = code;
	unsigned prefix = 0;

	bool printOff = true;
	while( code < end )
	{
		if(printOff)
		{
			printf( "%6.1lx:", code-start );
			prefix = 0;
		}
		else
			printOff = true;

		switch(*code)
		{
		case 0x00:	code = dis_00(++code, prefix); break;
		case 0x01:	code = dis_01(++code, prefix); break;
		case 0x02:	code = dis_02(++code, prefix); break;
		case 0x03:	code = dis_03(++code, prefix); break;

		case 0x04:	code = dis_04(++code, prefix); break;
		case 0x05:	code = dis_05(++code, prefix); break;
		case 0x06:	code = dis_06(++code, prefix); break;
		case 0x07:	code = dis_07(++code, prefix); break;

		case 0x08:	code = dis_08(++code, prefix); break;
		case 0x09:	code = dis_09(++code, prefix); break;
		case 0x0a:	code = dis_0a(++code, prefix); break;
		case 0x0b:	code = dis_0b(++code, prefix); break;

		case 0x0c:	code = dis_0c(++code, prefix); break;
		case 0x0d:	code = dis_0d(++code, prefix); break;
		case 0x0e:	code = dis_0e(++code, prefix); break;
		case 0x0f:	code = dis_0f(++code, prefix); break;
	
		case 0x10:	code = dis_10(++code, prefix); break;
		case 0x11:	code = dis_11(++code, prefix); break;
		case 0x12:	code = dis_12(++code, prefix); break;
		case 0x13:	code = dis_13(++code, prefix); break;

		case 0x14:	code = dis_14(++code, prefix); break;
		case 0x15:	code = dis_15(++code, prefix); break;
		case 0x16:	code = dis_16(++code, prefix); break;
		case 0x17:	code = dis_17(++code, prefix); break;

		case 0x18:	code = dis_18(++code, prefix); break;
		case 0x19:	code = dis_19(++code, prefix); break;
		case 0x1a:	code = dis_1a(++code, prefix); break;
		case 0x1b:	code = dis_1b(++code, prefix); break;

		case 0x1c:	code = dis_1c(++code, prefix); break;
		case 0x1d:	code = dis_1d(++code, prefix); break;
		case 0x1e:	code = dis_1e(++code, prefix); break;
		case 0x1f:	code = dis_1f(++code, prefix); break;
	
		case 0x20:	code = dis_20(++code, prefix); break;
		case 0x21:	code = dis_21(++code, prefix); break;
		case 0x22:	code = dis_22(++code, prefix); break;
		case 0x23:	code = dis_23(++code, prefix); break;

		case 0x24:	prefix |= PRE_24; ++code; printOff=false; break;
		case 0x25:	code = dis_25(++code, prefix); break;
		case 0x26:	prefix |= PRE_26; ++code; printOff=false; break;
		case 0x27:	code = dis_27(++code, prefix); break;

		case 0x28:	code = dis_28(++code, prefix); break;
		case 0x29:	code = dis_29(++code, prefix); break;
		case 0x2a:	code = dis_2a(++code, prefix); break;
		case 0x2b:	code = dis_2b(++code, prefix); break;

		case 0x2c:	code = dis_2c(++code, prefix); break;
		case 0x2d:	code = dis_2d(++code, prefix); break;
		case 0x2e:	prefix |= PRE_BHNT; ++code; printOff=false; break;
		case 0x2f:	code = dis_2f(++code, prefix); break;
	
		case 0x30:	code = dis_30(++code, prefix); break;
		case 0x31:	code = dis_31(++code, prefix); break;
		case 0x32:	code = dis_32(++code, prefix); break;
		case 0x33:	code = dis_33(++code, prefix); break;

		case 0x34:	code = dis_34(++code, prefix); break;
		case 0x35:	code = dis_35(++code, prefix); break;
		case 0x36:	prefix |= PRE_36; ++code; printOff=false; break;
		case 0x37:	code = dis_37(++code, prefix); break;

		case 0x38:	code = dis_38(++code, prefix); break;
		case 0x39:	code = dis_39(++code, prefix); break;
		case 0x3a:	code = dis_3a(++code, prefix); break;
		case 0x3b:	code = dis_3b(++code, prefix); break;

		case 0x3c:	code = dis_3c(++code, prefix); break;
		case 0x3d:	code = dis_3d(++code, prefix); break;
		case 0x3e:	prefix |= PRE_3E; ++code; printOff=false; break;
		case 0x3f:	code = dis_3f(++code, prefix); break;
	
		case 0x40:	prefix |= *code; ++code; printOff=false; break;
		case 0x41:	prefix |= *code; ++code; printOff=false; break;
		case 0x42:	prefix |= *code; ++code; printOff=false; break;
		case 0x43:	prefix |= *code; ++code; printOff=false; break;
		case 0x44:	prefix |= *code; ++code; printOff=false; break;
		case 0x45:	prefix |= *code; ++code; printOff=false; break;
		case 0x46:	prefix |= *code; ++code; printOff=false; break;
		case 0x47:	prefix |= *code; ++code; printOff=false; break;
		case 0x48:	prefix |= *code; ++code; printOff=false; break;
		case 0x49:	prefix |= *code; ++code; printOff=false; break;
		case 0x4a:	prefix |= *code; ++code; printOff=false; break;
		case 0x4b:	prefix |= *code; ++code; printOff=false; break;
		case 0x4c:	prefix |= *code; ++code; printOff=false; break;
		case 0x4d:	prefix |= *code; ++code; printOff=false; break;
		case 0x4e:	prefix |= *code; ++code; printOff=false; break;
		case 0x4f:	prefix |= *code; ++code; printOff=false; break;
	
		case 0x50:	
		case 0x51:	
		case 0x52:	
		case 0x53:	
		case 0x54:	
		case 0x55:	
		case 0x56:	
		case 0x57:	code = dis_push(code, prefix); break;
		case 0x58:	
		case 0x59:	
		case 0x5a:	
		case 0x5b:	
		case 0x5c:	
		case 0x5d:	
		case 0x5e:	
		case 0x5f:	code = dis_pop(code, prefix); break;
	
		case 0x60:	code = dis_60(++code, prefix); break;
		case 0x61:	code = dis_61(++code, prefix); break;
		case 0x62:	code = dis_62(++code, prefix); break;
		case 0x63:	code = dis_63(++code, prefix); break;

		case 0x64:	prefix |= PRE_64; ++code; printOff=false; break;
		case 0x65:	prefix |= PRE_65; ++code; printOff=false; break;
		case 0x66:	prefix |= PRE_OS; ++code; printOff = false; break;
		case 0x67:	prefix |= PRE_AS; ++code; printOff = false; break;

		case 0x68:	code = dis_68(++code, prefix); break;
		case 0x69:	code = dis_69(++code, prefix); break;
		case 0x6a:	code = dis_6a(++code, prefix); break;
		case 0x6b:	code = dis_6b(++code, prefix); break;
		case 0x6c:	code = dis_6c(++code, prefix); break;
		case 0x6d:	code = dis_6d(++code, prefix); break;
		case 0x6e:	code = dis_6e(++code, prefix); break;
		case 0x6f:	code = dis_6f(++code, prefix); break;
	
		case 0x70:	code = dis_70(++code, prefix); break;
		case 0x71:	code = dis_71(++code, prefix); break;
		case 0x72:	code = dis_72(++code, prefix); break;
		case 0x73:	code = dis_73(++code, prefix); break;
		case 0x74:	code = dis_74(++code, prefix); break;
		case 0x75:	code = dis_75(++code, prefix); break;
		case 0x76:	code = dis_76(++code, prefix); break;
		case 0x77:	code = dis_77(++code, prefix); break;
		case 0x78:	code = dis_78(++code, prefix); break;
		case 0x79:	code = dis_79(++code, prefix); break;
		case 0x7a:	code = dis_7a(++code, prefix); break;
		case 0x7b:	code = dis_7b(++code, prefix); break;
		case 0x7c:	code = dis_7c(++code, prefix); break;
		case 0x7d:	code = dis_7d(++code, prefix); break;
		case 0x7e:	code = dis_7e(++code, prefix); break;
		case 0x7f:	code = dis_7f(++code, prefix); break;
	
		case -128:	code = dis_80(++code, prefix); break;	// 0x80
		case -127:	code = dis_81(++code, prefix); break;	// 0x81
		case -126:	code = dis_82(++code, prefix); break;	// 0x82
		case -125:	code = dis_83(++code, prefix); break;	// 0x83
		case -124:	code = dis_84(++code, prefix); break;	// 0x84
		case -123:	code = dis_85(++code, prefix); break;	// 0x85
		case -122:	code = dis_86(++code, prefix); break;	// 0x86
		case -121:	code = dis_87(++code, prefix); break;	// 0x87
		case -120:	code = dis_88(++code, prefix); break;	// 0x88
		case -119:	code = dis_89(++code, prefix); break;	// 0x89
		case -118:	code = dis_8a(++code, prefix); break;	// 0x8a
		case -117:	code = dis_8b(++code, prefix); break;	// 0x8b
		case -116:	code = dis_8c(++code, prefix); break;	// 0x8c
		case -115:	code = dis_8d(++code, prefix); break;	// 0x8d
		case -114:	code = dis_8e(++code, prefix); break;	// 0x8e
		case -113:	code = dis_8f(++code, prefix); break;	// 0x8f
	
		case -112:	code = dis_90(++code, prefix); break;	// 0x90
		case -111:	code = dis_91(++code, prefix); break;	// 0x91
		case -110:	code = dis_92(++code, prefix); break;	// 0x92
		case -109:	code = dis_93(++code, prefix); break;	// 0x93
		case -108:	code = dis_94(++code, prefix); break;	// 0x94
		case -107:	code = dis_95(++code, prefix); break;	// 0x95
		case -106:	code = dis_96(++code, prefix); break;	// 0x96
		case -105:	code = dis_97(++code, prefix); break;	// 0x97
		case -104:	code = dis_98(++code, prefix); break;	// 0x98
		case -103:	code = dis_98(++code, prefix); break;	// 0x99
		case -102:	code = dis_9a(++code, prefix); break;	// 0x9a
		case -101:	code = dis_9b(++code, prefix); break;	// 0x9b
		case -100:	code = dis_9c(++code, prefix); break;	// 0x9c
		case -99:	code = dis_9d(++code, prefix); break;	// 0x9d
		case -98:	code = dis_9e(++code, prefix); break;	// 0x9e
		case -97:	code = dis_9f(++code, prefix); break;	// 0x9f
	
		case -96:	code = dis_a0(++code, prefix); break;	// 0xa0
		case -95:	code = dis_a1(++code, prefix); break;	// 0xa1
		case -94:	code = dis_a2(++code, prefix); break;	// 0xa2
		case -93:	code = dis_a3(++code, prefix); break;	// 0xa3
		case -92:	code = dis_a4(++code, prefix); break;	// 0xa4
		case -91:	code = dis_a5(++code, prefix); break;	// 0xa5
		case -90:	code = dis_a6(++code, prefix); break;	// 0xa6
		case -89:	code = dis_a7(++code, prefix); break;	// 0xa7
		case -88:	code = dis_a8(++code, prefix); break;	// 0xa8
		case -87:	code = dis_a9(++code, prefix); break;	// 0xa9
		case -86:	code = dis_aa(++code, prefix); break;	// 0xaa
		case -85:	code = dis_ab(++code, prefix); break;	// 0xab
		case -84:	code = dis_ac(++code, prefix); break;	// 0xac
		case -83:	code = dis_ad(++code, prefix); break;	// 0xad
		case -82:	code = dis_ae(++code, prefix); break;	// 0xae
		case -81:	code = dis_af(++code, prefix); break;	// 0xaf
	
		case -80:	code = dis_b0(++code, prefix); break;	// 0xb0
		case -79:	code = dis_b1(++code, prefix); break;	// 0xb1
		case -78:	code = dis_b2(++code, prefix); break;	// 0xb2
		case -77:	code = dis_b3(++code, prefix); break;	// 0xb3
		case -76:	code = dis_b4(++code, prefix); break;	// 0xb4
		case -75:	code = dis_b5(++code, prefix); break;	// 0xb5
		case -74:	code = dis_b6(++code, prefix); break;	// 0xb6
		case -73:	code = dis_b7(++code, prefix); break;	// 0xb7
		case -72:	code = dis_b8(++code, prefix); break;	// 0xb8
		case -71:	code = dis_b9(++code, prefix); break;	// 0xb9
		case -70:	code = dis_ba(++code, prefix); break;	// 0xba
		case -69:	code = dis_bb(++code, prefix); break;	// 0xbb
		case -68:	code = dis_bc(++code, prefix); break;	// 0xbc
		case -67:	code = dis_bd(++code, prefix); break;	// 0xbd
		case -66:	code = dis_be(++code, prefix); break;	// 0xbe
		case -65:	code = dis_bf(++code, prefix); break;	// 0xbf
	
		case -64:	code = dis_c0(++code, prefix); break;	// 0xc0
		case -63:	code = dis_c1(++code, prefix); break;	// 0xc1
		case -62:	code = dis_c2(++code, prefix); break;	// 0xc2
		case -61:	code = dis_c3(++code, prefix); break;	// 0xc3
		case -60:	code = dis_c4(++code, prefix); break;	// 0xc4
		case -59:	code = dis_c5(++code, prefix); break;	// 0xc5
		case -58:	code = dis_c6(++code, prefix); break;	// 0xc6
		case -57:	code = dis_c7(++code, prefix); break;	// 0xc7
		case -56:	code = dis_c8(++code, prefix); break;	// 0xc8
		case -55:	code = dis_c9(++code, prefix); break;	// 0xc9
		case -54:	code = dis_ca(++code, prefix); break;	// 0xca
		case -53:	code = dis_cb(++code, prefix); break;	// 0xcb
		case -52:	code = dis_cc(++code, prefix); break;	// 0xcc
		case -51:	code = dis_cd(++code, prefix); break;	// 0xcd
		case -50:	code = dis_ce(++code, prefix); break;	// 0xce
		case -49:	code = dis_cf(++code, prefix); break;	// 0xcf
	
		case -48:	code = dis_d0(++code, prefix); break;	// 0xd0
		case -47:	code = dis_d1(++code, prefix); break;	// 0xd1
		case -46:	code = dis_d2(++code, prefix); break;	// 0xd2
		case -45:	code = dis_d3(++code, prefix); break;	// 0xd3
		case -44:	code = dis_d4(++code, prefix); break;	// 0xd4
		case -43:	code = dis_d5(++code, prefix); break;	// 0xd5
		case -42:	code = dis_d6(++code, prefix); break;	// 0xd6
		case -41:	code = dis_d7(++code, prefix); break;	// 0xd7
		case -40:	code = dis_d8(++code, prefix); break;	// 0xd8
		case -39:	code = dis_d9(++code, prefix); break;	// 0xd9
		case -38:	code = dis_da(++code, prefix); break;	// 0xda
		case -37:	code = dis_db(++code, prefix); break;	// 0xdb
		case -36:	code = dis_dc(++code, prefix); break;	// 0xdc
		case -35:	code = dis_dd(++code, prefix); break;	// 0xdd
		case -34:	code = dis_de(++code, prefix); break;	// 0xde
		case -33:	code = dis_df(++code, prefix); break;	// 0xdf
	
		case -32:	code = dis_e0(++code, prefix); break;	// 0xe0
		case -31:	code = dis_e1(++code, prefix); break;	// 0xe1
		case -30:	code = dis_e2(++code, prefix); break;	// 0xe2
		case -29:	code = dis_e3(++code, prefix); break;	// 0xe3
		case -28:	code = dis_e4(++code, prefix); break;	// 0xe4
		case -27:	code = dis_e5(++code, prefix); break;	// 0xe5
		case -26:	code = dis_e6(++code, prefix); break;	// 0xe6
		case -25:	code = dis_e7(++code, prefix); break;	// 0xe7
		case -24:	code = dis_e8(++code, prefix); break;	// 0xe8
		case -23:	code = dis_e9(++code, prefix); break;	// 0xe9
		case -22:	code = dis_ea(++code, prefix); break;	// 0xea
		case -21:	code = dis_eb(++code, prefix); break;	// 0xeb
		case -20:	code = dis_ec(++code, prefix); break;	// 0xec
		case -19:	code = dis_ed(++code, prefix); break;	// 0xed
		case -18:	code = dis_ee(++code, prefix); break;	// 0xee
		case -17:	code = dis_ef(++code, prefix); break;	// 0xef
	
		case -16:	prefix |= PRE_LOCK; ++code; printOff=false; break;
		case -15:	code = dis_f1(++code, prefix); break;	// 0xf1
		case -14:	prefix |= PRE_NE; ++code; printOff=false; break;
		case -13:	prefix |= PRE_REP; ++code; printOff=false; break;
		case -12:	code = dis_f4(++code, prefix); break;	// 0xf4
		case -11:	code = dis_f5(++code, prefix); break;	// 0xf5
		case -10:	code = dis_ff(++code, prefix); break;	// 0xf6
		case -9:	code = dis_f7(++code, prefix); break;	// 0xf7
		case -8:	code = dis_f8(++code, prefix); break;	// 0xf8
		case -7:	code = dis_f9(++code, prefix); break;	// 0xf9
		case -6:	code = dis_fa(++code, prefix); break;	// 0xfa
		case -5:	code = dis_fb(++code, prefix); break;	// 0xfb
		case -4:	code = dis_fc(++code, prefix); break;	// 0xfc
		case -3:	code = dis_fd(++code, prefix); break;	// 0xfd
		case -2:	code = dis_fe(++code, prefix); break;	// 0xfe
		case -1:	code = dis_ff(++code, prefix); break;	// 0xff
		}
	}
}

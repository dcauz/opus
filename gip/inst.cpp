#include "inst.h"
#include <map>
#include <cstring>
#include <sstream>
#include <algorithm>
#include <iostream>


using namespace std;

// reg.len.pos
// imm.len.pos
//
MC_Comp::MC_Comp( const std::string & lexium, int & offset ):value_(0),position_(0),offset_(offset)
{
	if(( lexium.substr(0,4) == "reg:") || ( lexium.substr(0,4) == "imm:" ))
	{
		isConst_ = false;
		const char * cp = lexium.c_str()+4;
		char * end;

		len_ = strtol( cp, &end, 10 );
		position_ = strtol( end+1, nullptr, 10 );
	}
	else
	{
		isConst_ = true;

		if( lexium[0] == '0' &&  lexium[1] == 'b' )
		{
			char * end;
			value_ = strtol( lexium.c_str()+2, &end, 2 );
			len_ = end - lexium.c_str() - 2;
			position_ = offset_;
		}
		else // lexium[0] == '0' &&  lexium[1] == 'x'
		{
			char * end;
			value_ = strtol( lexium.c_str()+2, &end, 16 );
			len_ = 8;
			position_ = offset_;
		}
	}
	offset += len_;
}

void SimplePrefix::setType( const std::string & token )
{
	struct Name { const char * n; int l; uint8_t encoding; };

	static const Name names [] =
	{
		{ "as", 2, 10 },
		{ "bhnt", 4, 10 },
		{ "bnht", 4, 10 },
		{ "cs", 2, 10 },
		{ "ds", 2, 10 },
		{ "es", 2, 10 },
		{ "lock", 4, 10 },
		{ "ne", 2, 10 },
		{ "os", 2, 10 },
		{ "rep", 3, 10 },
		{ "rex", 3, 10 },
		{ "ss", 2, 10 },
	};

	for( int i = 0; i < sizeof(names); ++i )
	{
		if( strncmp( token.c_str(), names[i].n, names[i].l ) == 0 )
		{
			type_ = names[i].encoding;
			return;
		}
	}

	throw "Invalid prefix";
}

void SimplePrefix::prepend( vector<uint8_t> & vec ) const
{
	vec.push_back(type_);
}

bool Evex::hasNonConstBytes() const
{
	return vvvv == 0xff || aaa == 0xff;
}

// 0  1  2  3  4      5      6     7                   8/11
// 62 e1 e2 e3 opcode ModR/M [SIB] [disp32 or disp8*N] [immed]
//
//     7  6  5  4  3  2  1  0
// e1  R  X  B  R' 0  0  m  m   P[7:0]
// e2  W  v  v  v  v  1  p  p   P[15:8]
// e3  z  L' L  b  V' a  a  a   P[23:16]
//
void Evex::prepend( vector<uint8_t> & vec ) const
{
	vec.push_back(0x62);
	uint8_t b = (R << 7) + (X << 6) + (B << 5) + (Rp << 4) + mm;
	vec.push_back(b);
	if(vvvv != 0xff )
	{
		b = (W << 7) + (vvvv << 3) + (1 << 2) + pp;
		vec.push_back(b);

		if(aaa != 0xff )
		{
			b = (z << 7) + (Lp << 6) + (L << 5) + 
				(b << 4) + (Vp << 3) + aaa;
			vec.push_back(b);
		}
	}
}

void Evex::setB(char c)
{
	if( c == 'B' || c == '1' )
		B = 1;
}

void Evex::setR(char c)
{
	if( c == 'R' || c == '1' )
		R = 1;
}

void Evex::setX(char c)
{
	if( c == 'X' || c == '1' )
		X = 1;
}

void Evex::setRp( const char * cp )
{
	if( (cp[0] == 'R' && cp[1] == '\'') || cp[0] == '1' )
		Rp = 1;
}

void Evex::setW(char c)
{
	if( c == 'W' || c == '1' )
		W = 1;
}

void Evex::setz(char c)
{
	if( c == 'z' || c == '1' )
		z = 1;
}

void Evex::setLp(const char * cp )
{
	if( ( cp[0] == 'L' && cp[1] == '\'') || cp[0] == '1' )
		Lp = 1;
}

void Evex::setL(char c)
{
	if( c == 'L' || c == '1' )
		L = 1;
}

void Evex::setb(char c)
{
	if( c == 'b' || c == '1' )
		b = 1;
}

void Evex::setVp(const char * cp )
{
	if( ( cp[0] == 'V' && cp[1] == '\'') || cp[0] == '1' )
		Vp = 1;
}

void Rex::prepend( vector<uint8_t> & vec ) const
{
	uint8_t ans = 0x40;

	if( R ) ans |= 8;
	if( X ) ans |= 4;
	if( B ) ans |= 2;
	if( W ) ans |= 1;

	vec.push_back(ans);
}

void Rex::setB(char c)
{
	if( c == 'B' || c == '1' )
		B = 1;
}

void Rex::setR(char c)
{
	if( c == 'R' || c == '1' )
		R = 1;
}

void Rex::setW(char c)
{
	if( c == 'W' || c == '1' )
		W = 1;
}

void Rex::setX(char c)
{
	if( c == 'X' || c == '1' )
		X = 1;
}

bool Vex2::hasNonConstBytes() const
{
	return vvvv == 0xff;
}

// c5: R vvvv L pp
//     7 6-3  2 10
//
void Vex2::prepend( vector<uint8_t> & vec ) const
{
	vec.push_back(0xc5);
	if( vvvv != 0xff )
	{
		uint8_t b = (R << 7) + (vvvv << 3) + (L << 2) + pp;
		vec.push_back(b);
	}
}

void Vex2::setR(char c)
{
	if( c == 'R' || c == '1' )
		R = 1;
}

void Vex2::setL(char c)
{
	if( c == 'L' || c == '1' )
		L = 1;
}

bool Vex3::hasNonConstBytes() const
{
	return vvvv == 0xff || mmmm == 0xff;
}

// c4: RXB:0mmmm W vvvv L pp
//     765 4-0   7 6-3  2 10
//
void Vex3::prepend( vector<uint8_t> & vec ) const
{
	vec.push_back(0xc4);

	if( mmmm != 0xff )
	{
		uint8_t b = (R << 7) + (X << 6) + (B << 5) + mmmm; 
		vec.push_back(b);
		if( vvvv != 0xff )
		{
			b = (W << 7) + (vvvv << 3) + (L << 2) + pp;
			vec.push_back(b);
		}
	}
}

void Vex3::setB(char c)
{
	if( c == 'B' || c == '1' )
		B = 1;
}

void Vex3::setR(char c)
{
	if( c == 'R' || c == '1' )
		R = 1;
}

void Vex3::setX(char c)
{
	if( c == 'X' || c == '1' )
		X = 1;
}

void Vex3::setW(char c)
{
	if( c == 'W' || c == '1' )
		W = 1;
}

void Vex3::setL(char c)
{
	if( c == 'L' || c == '1' )
		L = 1;
}

void Vex3::setmmmm(char const * cp )
{
	if( strncmp( cp, "mmmm", 4 ) == 0 || strncmp( cp, "****", 4 ) == 0 )
		mmmm = 0xff;
	else 
	{
		for( int i = 0; i < 4; ++i )
		{
			mmmm = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				mmmm += (cp[i] - '0') << (3-i);
			else
				throw "Invalid mmmm value";
		}
	}
}

void Vex2::setvvvv(char const * cp )
{
	if( strncmp( cp, "vvvv", 4 ) == 0 || strncmp( cp, "****", 4 ) == 0 )
		vvvv = 0xff;
	else 
	{
		for( int i = 0; i < 4; ++i )
		{
			vvvv = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				vvvv += (cp[i] - '0') << (3-i);
			else
				throw "Invalid vvvv value";
		}
	}
}

void Vex2::setpp(const char * cp )
{
	if( strncmp( cp, "pp", 2 ) == 0 || strncmp( cp, "**", 2 ) == 0 )
		pp = 0xff;
	else 
	{
		for( int i = 0; i < 2; ++i )
		{
			pp = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				pp += (cp[i] - '0') << (1-i);
			else
				throw "Invalid pp value";
		}
	}
}

void Vex3::setvvvv(char const * cp )
{
	if( strncmp( cp, "vvvv", 4 ) == 0 || strncmp( cp, "****", 4 ) == 0 )
		vvvv = 0xff;
	else 
	{
		for( int i = 0; i < 4; ++i )
		{
			vvvv = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				vvvv += (cp[i] - '0') << (3-i);
			else
				throw "Invalid vvvv value";
		}
	}
}

void Vex3::setpp(char const * cp )
{
	if( strncmp( cp, "pp", 2 ) == 0 || strncmp( cp, "**", 2 ) == 0 )
		pp = 0xff;
	else 
	{
		for( int i = 0; i < 2; ++i )
		{
			pp = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				pp += (cp[i] - '0') << (1-i);
			else
				throw "Invalid pp value";
		}
	}
}

void Evex::setaaa(char const * cp )
{
	if( strncmp( cp, "aaa", 3 ) == 0 || strncmp( cp, "***", 3 ) == 0 )
		aaa = 0xff;
	else 
	{
		for( int i = 0; i < 3; ++i )
		{
			aaa = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				aaa += (cp[i] - '0') << (2-i);
			else
				throw "Invalid aaa value";
		}
	}
}

void Evex::setvvvv(char const * cp )
{
	if( strncmp( cp, "vvvv", 4 ) == 0 || strncmp( cp, "****", 4 ) == 0 )
		vvvv = 0xff;
	else 
	{
		for( int i = 0; i < 4; ++i )
		{
			vvvv = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				vvvv += (cp[i] - '0') << (3-i);
			else
				throw "Invalid vvvv value";
		}
	}
}

void Evex::setpp(char const * cp )
{
	if( strncmp( cp, "pp", 2 ) == 0 || strncmp( cp, "**", 2 ) == 0 )
		pp = 0xff;
	else 
	{
		for( int i = 0; i < 2; ++i )
		{
			pp = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				pp += (cp[i] - '0') << (1-i);
			else
				throw "Invalid pp value";
		}
	}
}

void Evex::setmm(char const * cp )
{
	if( strncmp( cp, "mm", 2 ) == 0 || strncmp( cp, "**", 2 ) == 0 )
		mm = 0xff;
	else 
	{
		for( int i = 0; i < 2; ++i )
		{
			mm = 0;
			if( cp[i] == '0' || cp[i] == '1' )
				mm += (cp[i] - '0') << (1-i);
			else
				throw "Invalid mm value";
		}
	}
}

const char * lexium[] =
{
	"aaa",
	"aad",
	"aam",
	"aas",
	"adc",
	"adcx",
	"add",
	"addpd",
	"addps",
	"addsd",
	"addss",
	"addsubpd",
	"addsubps",
	"adox",
	"aesdec",
	"aesdeclast",
	"aesenc",
	"aesenclast",
	"aesimc",
	"aeskeygenassist",
	"and",
	"andn",
	"andnpd",
	"andnps",
	"andpd",
	"andps",
	"arpl",
	"bextr",
	"blendpd",
	"blendps",
	"blendvpd",
	"blendvps",
	"blsi",
	"blsmsk",
	"blsr",
	"bound",
	"bsf",
	"bsr",
	"bswap",
	"bt",
	"btc",
	"btr",
	"bts",
	"bzhi",
	"call",
	"cbw",
	"cdq",
	"cdqe",
	"clac",
	"clc",
	"cld",
	"clflush",
	"clflushopt",
	"cli",
	"clts",
	"clwb",
	"cmc",
	"cmovCC",
	"cmp",
	"cmppd",
	"cmpps",
	"cmps",
	"cmpsb %%es:(%%rdi),%%ds:(%%rsi)",
	"cmpsd",
	"cmpsq",
	"cmpss",
	"cmpsw %%es:(%%rdi),%%ds:(%%rsi)",
	"cmpxchg",
	"cmpxchg16b",
	"cmpxchg8b",
	"comisd",
	"comiss",
	"cpuid",
	"cqo",
	"crc32",
	"cvtdq2pd",
	"cvtdq2ps",
	"cvtpd2dq",
	"cvtpd2pi",
	"cvtpd2ps",
	"cvtpi2pd",
	"cvtpi2ps",
	"cvtps2dq",
	"cvtps2pd",
	"cvtps2pi",
	"cvtsd2si",
	"cvtsd2ss",
	"cvtsi2sd",
	"cvtsi2ss",
	"cvtss2sd",
	"cvtss2si",
	"cvttpd2dq",
	"cvttpd2pi",
	"cvttps2dq",
	"cvttps2pi",
	"cvttsd2si",
	"cvttss2si",
	"cwd",
	"cwde",
	"cwq",
	"daa",
	"das",
	"dec",
	"div",
	"divpd",
	"divps",
	"divsd",
	"divss",
	"dppd",
	"dpps",
	"elfo",
	"emms",
	"enter",
	"extractps",
	"f2xm1",
	"fabs",
	"fadd",
	"faddp",
	"fbld",
	"fbstp",
	"fchs",
	"fclex",
	"fcmovCC",
	"fcom %%st(1)",
	"fcomi",
	"fcomip",
	"fcomp %%st(1)",
	"fcompp",
	"fcos",
	"fdecstp",
	"fdiv",
	"fdivp",
	"fdivr",
	"fdivrp",
	"ffree",
	"fiadd",
	"ficom",
	"ficomp",
	"fidiv",
	"fidivr",
	"fild",
	"fimul",
	"fincstp",
	"finit",
	"fist",
	"fistp",
	"fisttp",
	"fisub",
	"fisubr",
	"fld",
	"fld1",
	"fldcw",
	"fldenv",
	"fldl2e",
	"fldl2t",
	"fldlg2",
	"fldln2",
	"fldpi",
	"fldz",
	"fmul",
	"fmulp",
	"fnclex",
	"fninit",
	"fnop",
	"fnsave",
	"fnstcw",
	"fnstenv",
	"fnstsw",
	"fpatan",
	"fprem",
	"fprem1",
	"fptan",
	"frndint",
	"frstor",
	"fsave",
	"fscale",
	"fsin",
	"fsincos",
	"fsqrt",
	"fst",
	"fstcw",
	"fstenv",
	"fstp",
	"fstsw",
	"fsub",
	"fsubp",
	"fsubr",
	"fsubrp",
	"ftst",
	"fucom %%st(1)",
	"fucomi",
	"fucomp %%st(1)",
	"fucompp %%st(1)",
	"fwait",
	"fxam",
	"fxch %%st(1)",
	"fxrstor",
	"fxsave",
	"fxtract",
	"fyl2x",
	"fyl2xp1",
	"getsec",
	"haddpd",
	"haddps",
	"hlt",
	"hsubpd",
	"hsubps",
	"idiv",
	"imul",
	"in",
	"inc",
	"insb (%%dx),%%es:(%%edi)",
	"insertps",
	"insl (%%dx),%%es:(%%edi)",
	"insw (%%dx),%%es:(%%edi)",
	"int",
	"int0",
	"int3",
	"invd",
	"invept",
	"invlpg",
	"invpcid",
	"invvpid",
	"iret",
	"iretd",
	"jCC",
	"jmp",
	"kaddb",
	"kaddd",
	"kaddq",
	"kaddw",
	"kandb",
	"kandd",
	"kandnb",
	"kandnd",
	"kandnq",
	"kandnw",
	"kandq",
	"kandw",
	"kmovb",
	"kmovd",
	"kmovq",
	"kmovw",
	"knotb",
	"knotd",
	"knotq",
	"knotw",
	"korb",
	"kord",
	"korq",
	"kortestb",
	"kortestd",
	"kortestq",
	"kortestw",
	"korw",
	"kshiftlb",
	"kshiftld",
	"kshiftlq",
	"kshiftlw",
	"kshiftrb",
	"kshiftrd",
	"kshiftrq",
	"kshiftrw",
	"ktestb",
	"ktestd",
	"ktestq",
	"ktestw",
	"kunpckbd",
	"kunpckbq",
	"kunpckbw",
	"kxnorb",
	"kxnord",
	"kxnorq",
	"kxnorw",
	"kxorrb",
	"kxorrd",
	"kxorrq",
	"kxorrw",
	"lahf",
	"lar",
	"lddqu",
	"ldmxcsr",
	"lds",
	"lea",
	"leaveq",
	"les",
	"lfence",
	"lfs",
	"lgdt",
	"lgs",
	"lidt",
	"lldt",
	"lmsw",
	"lock",
	"lodsb %%ds:(%%rsi),%%al",
	"lodsd %%ds:(%%rsi),%%eax",
	"lodsq %%ds:(%%rsi),%%rax",
	"lodsw %%ds:(%%rsi),%%ax",
	"loop",
	"loopCC",
	"lsl",
	"lss",
	"ltr",
	"lzcnt",
	"maskmovdqu",
	"maskmovq",
	"maxpd",
	"maxps",
	"maxsd",
	"maxss",
	"mfence",
	"minpd",
	"minps",
	"minsd",
	"minss",
	"monitor",
	"mov",
	"movapd",
	"movaps",
	"movbe",
	"movd",
	"movddup",
	"movdq2q",
	"movdqa",
	"movdqu",
	"movhlps",
	"movhpd",
	"movhps",
	"movlhps",
	"movlpd",
	"movlps",
	"movmskpd",
	"movmskps",
	"movntdq",
	"movntdqa",
	"movnti",
	"movntpd",
	"movntps",
	"movntq",
	"movq",
	"movq2dq",
	"movs",
	"movsb %%ds:(%%rsi),%%es:(%%rdi)",
	"movsd %%ds:(%%rsi),%%es:(%%rdi)",
	"movshdup",
	"movsldup",
	"movsq %%ds:(%%rsi),%%es:(%%rdi)",
	"movss",
	"movsw %%ds:(%%rsi),%%es:(%%rdi)",
	"movsx",
	"movsxd",
	"movupd",
	"movups",
	"movzx",
	"mpsadbw",
	"mul",
	"mulpd",
	"mulps",
	"mulsd",
	"mulss",
	"mulx",
	"mwait",
	"neg",
	"nop",
	"not",
	"or",
	"orpd",
	"orps",
	"out",
	"outs",
	"outsb %%ds:(%%esi),(%%dx)",
	"outsd %%ds:(%%rsi),(%%dx)",
	"outsw %%ds:(%%rsi),(%%dx)",
	"pabsb",
	"pabsd",
	"pabsq",
	"pabsw",
	"packssdw",
	"packsswb",
	"packusdw",
	"packuswb",
	"paddb",
	"paddd",
	"paddq",
	"paddsb",
	"paddsw",
	"paddusb",
	"paddusw",
	"paddw",
	"palignr",
	"pand",
	"pandd",
	"pandn",
	"pandnd",
	"pandnq",
	"pandq",
	"pause",
	"pavgb",
	"pavgw",
	"pblendvb",
	"pblendw",
	"pclmulqdq",
	"pcmpeqb",
	"pcmpeqd",
	"pcmpeqq",
	"pcmpeqw",
	"pcmpestri",
	"pcmpestrm",
	"pcmpgtb",
	"pcmpgtd",
	"pcmpgtq",
	"pcmpgtw",
	"pcmpistri",
	"pcmpistrm",
	"pcommit",
	"pdep",
	"pext",
	"pextrb",
	"pextrd",
	"pextrq",
	"pextrw",
	"phaddd",
	"phaddsw",
	"phaddw",
	"phminposuw",
	"phsubsw",
	"phsubw",
	"pinsrb",
	"pinsrd",
	"pinsrq",
	"pinsrw",
	"pmaddubsw",
	"pmaddwd",
	"pmaxsb",
	"pmaxsd",
	"pmaxsq",
	"pmaxsw",
	"pmaxub",
	"pmaxud",
	"pmaxuq",
	"pmaxuw",
	"pminsb",
	"pminsd",
	"pminsq",
	"pminsw",
	"pminub",
	"pminud",
	"pminuq",
	"pminuw",
	"pmovmskb",
	"pmovsxbd",
	"pmovsxbq",
	"pmovsxbw",
	"pmovsxdq",
	"pmovsxwd",
	"pmovsxwq",
	"pmovzxbd",
	"pmovzxbq",
	"pmovzxbw",
	"pmovzxdq",
	"pmovzxwd",
	"pmovzxwq",
	"pmuldq",
	"pmulhrsw",
	"pmulhuw",
	"pmulhw",
	"pmulld",
	"pmullq",
	"pmullw",
	"pmulq",
	"pmuludq",
	"pop",
	"popa",
	"popad",
	"popcnt",
	"popeg",
	"popf",
	"popfd",
	"popfq",
	"por",
	"pord",
	"porq",
	"prefetchh",
	"prefetchw",
	"prefetchwt1",
	"prold",
	"prolq",
	"prolvd",
	"prolvq",
	"prord",
	"prorq",
	"prorvd",
	"prorvq",
	"psadbw",
	"pshufb",
	"pshufd",
	"pshufhw",
	"pshuflw",
	"pshufw",
	"psignb",
	"psignd",
	"psignw",
	"pslld",
	"pslldq",
	"psllq",
	"psllw",
	"psrad",
	"psraq",
	"psraw",
	"psrld",
	"psrldq",
	"psrlq",
	"psrlw",
	"psubb",
	"psubd",
	"psubq",
	"psubsb",
	"psubsw",
	"psubusb",
	"psubusw",
	"psubw",
	"ptest",
	"punpckhbw",
	"punpckhdq",
	"punpckhqdq",
	"punpckhwd",
	"punpcklbw",
	"punpckldq",
	"punpcklqdq",
	"punpcklwd",
	"push",
	"pusha",
	"pushad",
	"pusheg ",
	"pushfd",
	"pushfq",
	"pxor",
	"pxord",
	"pxorq",
	"rcl",
	"rcpps",
	"rcpss",
	"rcr",
	"rdfsbase",
	"rdgsbase",
	"rdmsr",
	"rdpmc",
	"rdtsc",
	"rdtscp",
	"rep",
	"repe",
	"repne",
	"repnz",
	"repz",
	"retq",
	"rol",
	"ror",
	"rorx",
	"roundpd",
	"roundps",
	"roundsd",
	"roundss",
	"rsm",
	"rsqrtps",
	"rsqrtss",
	"sal",
	"sar",
	"sbb",
	"scas",
	"scasb",
	"scasd",
	"scasw",
	"setCC",
	"sfence",
	"sgdt",
	"sha1msg1",
	"sha1msg2",
	"sha1nexte",
	"sha1rnds4",
	"sha256msg1",
	"sha256msg2",
	"sha256rnds2",
	"shl",
	"shld",
	"shr",
	"shrd",
	"shufpd",
	"shufps",
	"sidt",
	"sldt",
	"smsw",
	"sqrtpd",
	"sqrtps",
	"sqrtsd",
	"sqrtss",
	"stac",
	"stc",
	"std",
	"sti",
	"stmxcsr",
	"stosb %%al,%%es:(%%rdi)",
	"stosd %%eax,%%es:(%%rdi)",
	"stosq %%rax,%%es:(%%rdi)",
	"stosw %%ax,%%es:(%%rdi)",
	"str",
	"sub",
	"subpd",
	"subps",
	"subsd",
	"subss",
	"swapgs",
	"syscall",
	"sysenter",
	"sysexit",
	"sysret",
	"test",
	"tzcnt",
	"ucomisd",
	"ucomiss",
	"ud2",
	"unpckhpd",
	"unpckhps",
	"unpcklpd",
	"unpcklps",
	"vaddpd",
	"vaddps",
	"vaddsd",
	"vaddss",
	"valignd",
	"valignq",
	"vandnpd",
	"vandnps",
	"vandpd",
	"vandps",
	"vblendmpd",
	"vblendmps",
	"vbroadcast",
	"vbroadcastf128",
	"vbroadcastf32x2",
	"vbroadcastf32x4",
	"vbroadcastf32x8",
	"vbroadcastf64x2",
	"vbroadcastf64x4",
	"vbroadcasti128",
	"vbroadcasti32x2",
	"vbroadcasti32x4",
	"vbroadcasti32x8",
	"vbroadcasti64x2",
	"vbroadcasti64x4",
	"vbroadcastsd",
	"vbroadcastss",
	"vcmppd",
	"vcmpps",
	"vcmpsd",
	"vcmpss",
	"vcomisd",
	"vcomiss",
	"vcompresspd",
	"vcompressps",
	"vcvtdq2pd",
	"vcvtdq2ps",
	"vcvtpd2dq",
	"vcvtpd2ps",
	"vcvtpd2qq",
	"vcvtpd2udq",
	"vcvtpd2uqq",
	"vcvtph2ps",
	"vcvtps2dq",
	"vcvtps2pd",
	"vcvtps2ph",
	"vcvtps2qq",
	"vcvtps2udq",
	"vcvtps2uqq",
	"vcvtqq2pd",
	"vcvtqq2ps",
	"vcvtsd2si",
	"vcvtsd2ss",
	"vcvtsd2usi",
	"vcvtsi2sd",
	"vcvtsi2ss",
	"vcvtss2sd",
	"vcvtss2si",
	"vcvtss2usi",
	"vcvttpd2dq",
	"vcvttpd2qq",
	"vcvttpd2udq",
	"vcvttpd2uqq",
	"vcvttps2dq",
	"vcvttps2qq",
	"vcvttps2udq",
	"vcvttps2uqq",
	"vcvttsd2si",
	"vcvttsd2usi",
	"vcvttss2si",
	"vcvttss2usi",
	"vcvtudq2pd",
	"vcvtudq2ps",
	"vcvtuqq2pd",
	"vcvtuqq2ps",
	"vcvtusi2sd",
	"vcvtusi2ss",
	"vdbpsadbw",
	"vdivpd",
	"vdivps",
	"vdivsd",
	"vdivss",
	"verr",
	"verw",
	"vexp2pd",
	"vexp2ps",
	"vexpandpd",
	"vexpandps",
	"vextractf128",
	"vextractf32x2",
	"vextractf32x4",
	"vextractf32x8",
	"vextractf64x2",
	"vextractf64x4",
	"vextracti128",
	"vextracti32x2",
	"vextracti32x4",
	"vextracti32x8",
	"vextracti64x2",
	"vextracti64x4",
	"vextractps",
	"vfixupimmpd",
	"vfixupimmps",
	"vfixupimmsd",
	"vfixupimmss",
	"vfmadd132pd",
	"vfmadd132ps",
	"vfmadd132sd",
	"vfmadd132ss",
	"vfmadd213pd",
	"vfmadd213ps",
	"vfmadd213sd",
	"vfmadd213ss",
	"vfmadd232pd",
	"vfmadd232ps",
	"vfmadd232sd",
	"vfmadd232ss",
	"vfmaddsub132pd",
	"vfmaddsub132ps",
	"vfmaddsub213pd",
	"vfmaddsub213ps",
	"vfmaddsub232pd",
	"vfmaddsub232ps",
	"vfmsub132ps",
	"vfmsub132sd",
	"vfmsub132ss",
	"vfmsub213pd",
	"vfmsub213ps",
	"vfmsub213sd",
	"vfmsub213ss",
	"vfmsub232pd",
	"vfmsub232ps",
	"vfmsub232sd",
	"vfmsub232ss",
	"vfmsubadd132pd",
	"vfmsubadd132ps",
	"vfmsubadd213pd",
	"vfmsubadd213ps",
	"vfmsubadd232pd",
	"vfmsubadd232ps",
	"vfnmadd132pd",
	"vfnmadd132ps",
	"vfnmadd132sd",
	"vfnmadd132ss",
	"vfnmadd213pd",
	"vfnmadd213ps",
	"vfnmadd213sd",
	"vfnmadd213ss",
	"vfnmadd231pd",
	"vfnmadd231ps",
	"vfnmadd231sd",
	"vfnmadd231ss",
	"vfnmsub132pd",
	"vfnmsub132ps",
	"vfnmsub132sd",
	"vfnmsub132ss",
	"vfnmsub213pd",
	"vfnmsub213ps",
	"vfnmsub213sd",
	"vfnmsub213ss",
	"vfnmsub231pd",
	"vfnmsub231ps",
	"vfnmsub231sd",
	"vfnmsub231ss",
	"vfpclasspd",
	"vfpclassps",
	"vfpclasssd",
	"vfpclassss",
	"vgatherdpd",
	"vgatherdps",
	"vgatherpf0dpd",
	"vgatherpf0dps",
	"vgatherpf0qpd",
	"vgatherpf0qps",
	"vgatherpf1dpd",
	"vgatherpf1dps",
	"vgatherpf1qpd",
	"vgatherpf1qps",
	"vgatherqpd",
	"vgatherqps",
	"vgetexppd",
	"vgetexpps",
	"vgetexpsd",
	"vgetexpss",
	"vgetmantpd",
	"vgetmantps",
	"vgetmantsd",
	"vgetmantss",
	"vinsertf128",
	"vinsertf32x2",
	"vinsertf32x4",
	"vinsertf32x8",
	"vinsertf64x2",
	"vinsertf64x4",
	"vinserti128",
	"vinserti32x2",
	"vinserti32x4",
	"vinserti32x8",
	"vinserti64x2",
	"vinserti64x4",
	"vinsertps",
	"vmaskmov",
	"vmaxpd",
	"vmaxps",
	"vmaxsd",
	"vmaxss",
	"vmcall",
	"vmclear",
	"vmfunc",
	"vminpd",
	"vminps",
	"vminsd",
	"vminss",
	"vmlaunch",
	"vmovapd",
	"vmovaps",
	"vmovd",
	"vmovddup",
	"vmovdqa",
	"vmovdqa32",
	"vmovdqa64",
	"vmovdqu",
	"vmovdqu16",
	"vmovdqu32",
	"vmovdqu64",
	"vmovdqu8",
	"vmovhlps",
	"vmovhpd",
	"vmovhps",
	"vmovlhps",
	"vmovlpd",
	"vmovlps",
	"vmovntdq",
	"vmovntdqa",
	"vmovntpd",
	"vmovntps",
	"vmovq",
	"vmovsd",
	"vmovshdup",
	"vmovsldup",
	"vmovss",
	"vmovupd",
	"vmovups",
	"vmptrld",
	"vmread",
	"vmresume",
	"vmulpd",
	"vmulps",
	"vmulsd",
	"vmulss",
	"vmwrite",
	"vmxoff",
	"vmxon",
	"vorpd",
	"vorps",
	"vpabsb",
	"vpabsd",
	"vpabsq",
	"vpabsw",
	"vpackssdw",
	"vpacksswb",
	"vpackusdw",
	"vpackuswb",
	"vpaddb",
	"vpaddd",
	"vpaddq",
	"vpaddsb",
	"vpaddsw",
	"vpaddusb",
	"vpaddusw",
	"vpaddw",
	"vpalignr",
	"vpand",
	"vpandd",
	"vpandn",
	"vpandnd",
	"vpandnq",
	"vpandq",
	"vpavgb",
	"vpavgw",
	"vpblendd",
	"vpblendmb",
	"vpblendmd",
	"vpblendmq",
	"vpblendmw",
	"vpbroadcast",
	"vpbroadcastb",
	"vpbroadcastd",
	"vpbroadcastmb2q",
	"vpbroadcastmw2d",
	"vpbroadcastq",
	"vpbroadcastw",
	"vpcmpb",
	"vpcmpd",
	"vpcmpeqb",
	"vpcmpeqd",
	"vpcmpeqq",
	"vpcmpeqw",
	"vpcmpgtb",
	"vpcmpgtd",
	"vpcmpgtq",
	"vpcmpgtw",
	"vpcmpq",
	"vpcmpub",
	"vpcmpud",
	"vpcmpuq",
	"vpcmpuw",
	"vpcmpw",
	"vpcompressd",
	"vpcompressq",
	"vpconflictd",
	"vpconflictq",
	"vperm2f128",
	"vperm2i128",
	"vpermb",
	"vpermd",
	"vpermi2b",
	"vpermi2d",
	"vpermi2pd",
	"vpermi2ps",
	"vpermi2q",
	"vpermi2w",
	"vpermilpd",
	"vpermilps",
	"vpermpd",
	"vpermps",
	"vpermq",
	"vpermt2b",
	"vpermt2d",
	"vpermt2pd",
	"vpermt2ps",
	"vpermt2q",
	"vpermt2w",
	"vpermw",
	"vpexpandd",
	"vpexpandq",
	"vpextrb",
	"vpextrd",
	"vpextrq",
	"vpextrw",
	"vpgatherdd",
	"vpgatherdq",
	"vpgatherqd",
	"vpgatherqq",
	"vpinsrb",
	"vpinsrd",
	"vpinsrq",
	"vpinsrw",
	"vplzcntd",
	"vplzcntq",
	"vpmadd52huq",
	"vpmadd52luq",
	"vpmaddubsw",
	"vpmaddwd",
	"vpmaskmov",
	"vpmaxsb",
	"vpmaxsd",
	"vpmaxsq",
	"vpmaxsw",
	"vpmaxub",
	"vpmaxud",
	"vpmaxuq",
	"vpmaxuw",
	"vpminsb",
	"vpminsd",
	"vpminsq",
	"vpminsw",
	"vpminub",
	"vpminud",
	"vpminuq",
	"vpminuw",
	"vpmovb2m",
	"vpmovd2m",
	"vpmovdb",
	"vpmovdw",
	"vpmovm2b",
	"vpmovm2d",
	"vpmovm2q",
	"vpmovm2w",
	"vpmovq2m",
	"vpmovqb",
	"vpmovqd",
	"vpmovqw",
	"vpmovsdb",
	"vpmovsdw",
	"vpmovsqb",
	"vpmovsqd",
	"vpmovsqw",
	"vpmovswb",
	"vpmovsxbd",
	"vpmovsxbq",
	"vpmovsxbw",
	"vpmovsxdq",
	"vpmovsxwd",
	"vpmovsxwq",
	"vpmovusdb",
	"vpmovusdw",
	"vpmovusqb",
	"vpmovusqd",
	"vpmovusqw",
	"vpmovuswb",
	"vpmovw2m",
	"vpmovwb",
	"vpmovzxbd",
	"vpmovzxbq",
	"vpmovzxbw",
	"vpmovzxdq",
	"vpmovzxwd",
	"vpmovzxwq",
	"vpmulhrsw",
	"vpmulhuw",
	"vpmulhw",
	"vpmulld",
	"vpmullq",
	"vpmullw",
	"vpmulq",
	"vpmultishiftqb",
	"vpmuludq",
	"vpor",
	"vpord",
	"vporq",
	"vpravd",
	"vprold",
	"vprolq",
	"vprolvd",
	"vprolvq",
	"vprord",
	"vprorq",
	"vprorvd",
	"vprorvq",
	"vpsadbw",
	"vpscatterdd",
	"vpscatterdq",
	"vpscatterqd",
	"vpscatterqq",
	"vpshufb",
	"vpshufd",
	"vpshufhw",
	"vpshuflw",
	"vpslld",
	"vpslldq",
	"vpsllq",
	"vpsllvd",
	"vpsllvq",
	"vpsllvw",
	"vpsllw",
	"vpsrad",
	"vpsraq",
	"vpsravd",
	"vpsravq",
	"vpsravw",
	"vpsraw",
	"vpsrld",
	"vpsrldq",
	"vpsrlq",
	"vpsrlvd",
	"vpsrlvq",
	"vpsrlvw",
	"vpsrlw",
	"vpsubb",
	"vpsubd",
	"vpsubq",
	"vpsubsb",
	"vpsubsw",
	"vpsubusb",
	"vpsubusw",
	"vpsubw",
	"vpternlogd",
	"vpternlogq",
	"vptestmb",
	"vptestmd",
	"vptestmq",
	"vptestmw",
	"vptestnmb",
	"vptestnmd",
	"vptestnmq",
	"vptestnmw",
	"vptestpd",
	"vptestps",
	"vpunpckhbw",
	"vpunpckhdq",
	"vpunpckhqdq",
	"vpunpckhwd",
	"vpunpcklbw",
	"vpunpckldq",
	"vpunpcklqdq",
	"vpunpcklwd",
	"vrangepd",
	"vrangeps",
	"vrangesd",
	"vrangess",
	"vrcp14pd",
	"vrcp14ps",
	"vrcp14sd",
	"vrcp14ss",
	"vrcp28pd",
	"vrcp28ps",
	"vrcp28sd",
	"vrcp28ss",
	"vreducepd",
	"vreduceps",
	"vreducesd",
	"vreducess",
	"vrndscalepd",
	"vrndscaleps",
	"vrndscalesd",
	"vrndscaless",
	"vrsqrt14pd",
	"vrsqrt14ps",
	"vrsqrt14sd",
	"vrsqrt14ss",
	"vrsqrt28pd",
	"vrsqrt28ps",
	"vrsqrt28sd",
	"vrsqrt28ss",
	"vscalefpd",
	"vscalefps",
	"vscalefsd",
	"vscalefss",
	"vscatterdpd",
	"vscatterdps",
	"vscatterdqpd",
	"vscatterdqps",
	"vscatterpf0dpd",
	"vscatterpf0dps",
	"vscatterpf0qpd",
	"vscatterpf0qps",
	"vscatterpf1dpd",
	"vscatterpf1dps",
	"vscatterpf1qpd",
	"vscatterpf1qps",
	"vshuff32x4",
	"vshuff64x4",
	"vshuffi32x2",
	"vshuffi64x2",
	"vshufpd",
	"vshufps",
	"vsqrtpd",
	"vsqrtps",
	"vsqrtsd",
	"vsqrtss",
	"vsubpd",
	"vsubps",
	"vsubsd",
	"vsubss",
	"vucomisd",
	"vucomiss",
	"vunpckhpd",
	"vunpckhps",
	"vunpcklpd",
	"vunpcklps",
	"vxorpd",
	"vxorps",
	"vzeroall",
	"vzeroupper",
	"wait",
	"wbinvd",
	"wrfsbase",
	"wrgsbase",
	"wrmsr",
	"xabort",
	"xacquire",
	"xadd",
	"xbegin",
	"xchg",
	"xend",
	"xgetbv",
	"xlat",
	"xlatb",
	"xor",
	"xorpd",
	"xorps",
	"xrelease",
	"xrstor",
	"xrstors",
	"xsave",
	"xsavec",
	"xsaveopt",
	"xsaves",
	"xsetbv",
	"xtest",
};

vector<uint8_t> Instruction::prefix() const
{
	vector<uint8_t>	ans;
	for( const auto & p:prefix_)
	{
		// If prefix has some leading constant bytes, prepend them to the
		// total prefix
		p->prepend(ans);

		// If the prefix has any non-constant bytes, we are done
		if(p->hasNonConstBytes())
			return move(ans);
	}

	// prepend the opcode_ to the end of ans;
	copy(opcode_.begin(), opcode_.end(), back_inserter(ans));
	return ans;
}

bool operator < ( const Instruction & i1, const Instruction & i2 )
{
	if( i1.inst_ < i2.inst_ )
		return true;
	else if( i1.inst_ == i2.inst_ )
	{
		auto it1 = i1.operands_.begin();
		auto et1 = i1.operands_.end();
		auto it2 = i2.operands_.begin();
		auto et2 = i2.operands_.end();

		while( it1 != et2 && it2 != et2 )
		{
			if( *it1 > *it2 )
				return false;
			else if( *it1 < *it2 )
				return true;

			++it1;
			++it2;
		}

		// If their prefix are equal then i1 < it2 only if 
		// it2.operand_ is longer
		return it2 != et2;
	}
	return false;
}

Nmemonic Instruction::nmemonic(const std::string & lex )
{
	static auto end = ::lexium + sizeof(::lexium)/sizeof(char *);
	auto p = equal_range( ::lexium, end, lex.c_str(),
		[] ( const char * a, const char * b ) { return strcmp(a,b)<0; } );

	if(p.first < end )
		return static_cast<Nmemonic>(p.first-::lexium);
	return Nmemonic::invalid;
}

const char  * Instruction::lexium( Nmemonic nm )
{
	return ::lexium[static_cast<int>(nm)];
}

string argToString( Otype operand, const MC_Comp & arg )
{
	string ans;

	int byte = arg.offset()/8;
	int bit  = arg.offset()%8;

	switch(operand)
	{
    case Otype::ADDR_R:           
		ans = "(%%r10)";
		break;
    case Otype::ADDR_R_R:          
		ans = "(%%r10,%%r11,2)";
		break;
    case Otype::ADDR_R_X:
		ans = "(%%ax,%%r10,2)";
		break;
    case Otype::ADDR_RD:
		ans = "(%%r10d)";
		break;
    case Otype::ADDR_RD_RD:
		ans = "(%%r10d,%%r12d,8)";
		break;
    case Otype::ADDR_RD_XD:
		ans = "(%%r10d,%%ax,1)";
		break;
    case Otype::ADDR_RW:
		ans = "(%%r10w)";
		break;
    case Otype::ADDR_RW_RW:
		ans = "(%%r10w,%%r1w)";
		break;
    case Otype::ADDR_RW_XW:
		ans = "(%%r10w,%%eax)";
		break;
    case Otype::ADDR_X:
	{
		stringstream ss;
		int b = arg.offset()/8;
		int o = arg.offset()%8;
		ss << "indirect(xq_reg(reg(code[" << b << "]," << o << "))).c_str()";
		ans = ss.str();
		break;
	}
    case Otype::ADDR_X_R:
		ans = "(%%rax,%%r10)";
		break;
    case Otype::ADDR_X_X:
		ans = "(%%rax,%%rbx)";
		break;
    case Otype::ADDR_XD:
		ans = "(%%eax)";
		break;
    case Otype::ADDR_XD_RD:
		ans = "(%%eax,%%r1d)";
		break;
    case Otype::ADDR_XD_XD:
		ans = "(%%ax,%%dx,4)";
		break;
    case Otype::ADDR_XW:
		ans = "(%%eax)";
		break;
    case Otype::ADDR_XW_RW:
		ans = "(%%eax,%%r10w)";
		break;
    case Otype::ADDR_XW_XW:
		ans = "(%%eax,%%ebx,2)";
		break;
    case Otype::CR:
		ans = "%%cr0";
		break;
    case Otype::DR:
		ans = "%%dr0";
		break;
    case Otype::IMM8:
		ans = "imm8";
		break;
    case Otype::IMM32:
		ans = "imm32";
		break;
    case Otype::K:
		ans = "%%k1";
		break;
    case Otype::MM:
		ans = "%%mm0";
		break;
    case Otype::R:
		ans = "%%r10";
		break;
    case Otype::RB:
		ans = "%%r10b";
		break;
    case Otype::RD:
		ans = "%%r10d";
		break;
    case Otype::RW:
		ans = "%%r10w";
		break;
    case Otype::SR:
		ans = "%%sr1";
		break;
    case Otype::ST:
		ans = "%%st1";
		break;
    case Otype::X:
		ans = "%%cx";
		break;
    case Otype::XB:
		ans = "%%ah";
		break;
    case Otype::XD:
		ans = "%%ax";
		break;
    case Otype::XMM:
	{
		stringstream ss;
		int b = arg.offset()/8;
		int o = arg.offset()%8;
		ss << "xmm_reg(reg(code[" << b << "]," << o << "))";
		ans = ss.str();
		break;
	}
    case Otype::XW:
		ans = "%%eax";
		break;
    case Otype::YMM:
		ans = "%%ymm1";
		break;
    case Otype::ZMM:
		ans = "%%zmm1";
		break;
	}

	return ans;	
}

#include <cstdio>

string Instruction::lenString() const
{
	char buff[8];

	int len = 0;

	for( auto & p: prefix_ )
		len += p->length()*8;

	len += opcode_.size()*8;

	for( auto & a: args_ )
		len += a.length();

	sprintf( buff, "%d", len/8 );
	return buff;
}

string Instruction::decoder( const std::string & margin ) const
{
	string ans = margin + "printf(\"";
	ans += lexium(inst_);

	if( operands_.size() == 0 )
	{
		ans += "\\n\");\n";
		ans += margin + "code +=";
		ans += lenString();
		ans += ";";
	}
	else if( operands_.size() == 1 )
	{
		throw "instruction with 1 operands";
	}
	else if( operands_.size() == 2 )
	{
		auto it =args_.begin(); 
		ans += " %s,%s\\n\", ";
		ans += argToString(operands_[0], *it);
		ans += ",";
		++it;
		ans += argToString(operands_[1], *it);
		ans += ");\n";
		ans += margin + "code +=";
		ans += lenString();
		ans += ";";
	}
	else if( operands_.size() == 3 )
	{
		throw "instruction with 3 operands";
	}
	else if( operands_.size() == 4 )
	{
		throw "instruction with 4 operands";
	}
	else
	{
		throw "instruction with 5 operands";
	}

	return ans;
}

string mask( int o, int l )
{
	uint8_t m = 0;
	for( int i = o; i < (o+l); ++i)
		m += 1 << (7-i);

	char ans[8];
	sprintf( ans, "0x%x", m );
	return ans;
}

string Instruction::discriminators() const
{
	stringstream ans;

	bool first = true;
	for( auto & arg: args_ )
	{
		if( arg.isConst())
		{
			int b = arg.offset()/8;
			int o = arg.offset()%8;
			int l = arg.length();
			int v = arg.value();

			if( !first )
				ans << " && ";
			else
				first = false;

			ans << "(( code[" << b << "] & " << mask( o, l ) << ") == " << v << ")";
		}
	}

	return ans.str();
}

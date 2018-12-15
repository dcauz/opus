#pragma once

#include <string>
#include <cstring>
#include <vector>
#include <memory>
#include <set>
#include <iostream>


// Machine code component
class MC_Comp
{
public:
	MC_Comp( const std::string &, int & offset );

	MC_Comp(const MC_Comp & ) = default;
	MC_Comp & operator = (const MC_Comp & ) = default;
	MC_Comp( MC_Comp && ) = default;
	MC_Comp & operator = ( MC_Comp && ) = default;
	~MC_Comp() = default;

	int length() const 	{ return len_; }
	int offset() const 	{ return offset_; }
	int position() const{ return position_; }
	int value() const	{ return value_; }

	friend bool operator < ( const MC_Comp & a, const MC_Comp& b )
	{
		return a.position_ < b.position_;
	}

	bool 	isConst() const	{ return isConst_; }

private:
	bool 	isConst_;
	uint8_t value_;
	uint8_t position_;	// Position of parameter in instruction encoded by component
	uint8_t len_;
	uint8_t offset_;
};

enum class Otype
{
	ADDR_DISP32_RD,			// example: 70(%r10d)
	ADDR_DISP32_RD_RD,		// example: 90(%r10d,%r11d) 
	ADDR_DISP32_RD_RD_SCALE,// example: 90(%r10d,%r11d,2) 
	ADDR_DISP32_RD_XD,		// example: 10(%r10d,%dx)
	ADDR_DISP32_RD_XD_SCALE,// example: 10(%r10d,%dx,2)

	ADDR_DISP32_RQ,			// example: 10(%r10)
	ADDR_DISP32_RQ_RQ,		// example: 30(%r10,%r11)
	ADDR_DISP32_RQ_RQ_SCALE,// example: 30(%r10,%r11,2)
	ADDR_DISP32_RQ_XQ,		// example: 40(%r10,%rdx)
	ADDR_DISP32_RQ_XQ_SCALE,// example: 40(%r10,%rdx,2)

	ADDR_DISP32_XD,			// example: 80(%dx)
	ADDR_DISP32_XD_RD,		// example: 11(%dx,%r11d)
	ADDR_DISP32_XD_RD_SCALE,// example: 11(%dx,%r11d,2)
	ADDR_DISP32_XD_XD,		// example: 12(%dx,%ax)
	ADDR_DISP32_XD_XD_SCALE,// example: 12(%dx,%ax,2)

	ADDR_DISP32_XQ,			// example: 20(%rdx)
	ADDR_DISP32_XQ_RQ,		// example: 50(%rdx,%r11)
	ADDR_DISP32_XQ_RQ_SCALE,// example: 50(%rdx,%r11,2)
	ADDR_DISP32_XQ_XQ,		// example: 60(%rdx,%rax)
	ADDR_DISP32_XQ_XQ_SCALE,// example: 60(%rdx,%rax,2)

	ADDR_DISP8_RD,			// example: 70(%r10d)
	ADDR_DISP8_RD_RD,		// example: 90(%r10d,%r11d) 
	ADDR_DISP8_RD_RD_SCALE,	// example: 90(%r10d,%r11d,2) 
	ADDR_DISP8_RD_XD,		// example: 10(%r10d,%dx)
	ADDR_DISP8_RD_XD_SCALE,	// example: 10(%r10d,%dx,2)
	ADDR_DISP8_RQ,			// example: 10(%r10)
	ADDR_DISP8_RQ_RQ,		// example: 30(%r10,%r11)
	ADDR_DISP8_RQ_RQ_SCALE,	// example: 30(%r10,%r11,2)
	ADDR_DISP8_RQ_XQ,		// example: 40(%r10,%rdx)
	ADDR_DISP8_RQ_XQ_SCALE,	// example: 40(%r10,%rdx,2)
	ADDR_DISP8_XD,			// example: 80(%dx)
	ADDR_DISP8_XD_RD,		// example: 11(%dx,%r11d)
	ADDR_DISP8_XD_RD_SCALE,	// example: 11(%dx,%r11d,2)
	ADDR_DISP8_XD_XD,		// example: 12(%dx,%ax)
	ADDR_DISP8_XD_XD_SCALE,	// example: 12(%dx,%ax,2)
	ADDR_DISP8_XQ,			// example: 20(%rdx)
	ADDR_DISP8_XQ_RQ,		// example: 50(%rdx,%r11)
	ADDR_DISP8_XQ_RQ_SCALE,	// example: 50(%rdx,%r11,2)
	ADDR_DISP8_XQ_XQ,		// example: 60(%rdx,%rax)
	ADDR_DISP8_XQ_XQ_SCALE,	// example: 60(%rdx,%rax,2)

	ADDR_RD,			// example: (%r10d)
	ADDR_RD_RD,			// example: (%r10d,%r11d)
	ADDR_RD_RD_SCALE,	// example: (%r10d,%r11d,2)
	ADDR_RD_XD,			// example: (%r10d,%dx)
	ADDR_RD_XD_SCALE,	// example: (%r10d,%dx,2)
	ADDR_RQ,			// example: (%r10)
	ADDR_RQ_RQ,			// example: (%r10,%r11)
	ADDR_RQ_RQ_SCALE,	// example: (%r10,%r11,2)
	ADDR_RQ_XQ,			// example: (%r10,%rdx)
	ADDR_RQ_XQ_SCALE,	// example: (%r10,%rdx,2)
	ADDR_XD,			// example: (%dx)
	ADDR_XD_RD,			// example: (%dx,%r11d)
	ADDR_XD_RD_SCALE,	// example: (%dx,%r11d,2)
	ADDR_XD_XD,			// example: (%dx,%ax)
	ADDR_XD_XD_SCALE,	// example: (%dx,%ax,2)
	ADDR_XQ,			// example: (%rdx)
	ADDR_XQ_RQ,			// example: (%rdx,%r11)
	ADDR_XQ_RQ_SCALE,	// example: (%rdx,%r11,2)
	ADDR_XQ_XQ,			// example: (%rdx,%rax)
	ADDR_XQ_XQ_SCALE,	// example: (%rdx,%rax,2)

	CR,
	DR,
	IMM32,
	IMM8,
	K,
	MM,
	RB,
	RD,
	RQ,
	RW,
	SR,
	ST,
	XB,
	XB64,
	XD,
	XL, 
	XMM,
	XQ, 
	XW,
	YMM,
	ZMM,
};

enum class Nmemonic
{
	aaa,
	aad,
	aam,
	aas,
	adc,
	adcx,
	add,
	addpd,
	addps,
	addsd,
	addss,
	addsubpd,
	addsubps,
	adox,
	aesdec,
	aesdeclast,
	aesenc,
	aesenclast,
	aesimc,
	aeskeygenassist,
	_and,
	andn,
	andnpd,
	andnps,
	andpd,
	andps,
	arpl,
	bextr,
	blendpd,
	blendps,
	blendvpd,
	blendvps,
	blsi,
	blsmsk,
	blsr,
	bound,
	bsf,
	bsr,
	bswap,
	bt,
	btc,
	btr,
	bts,
	bzhi,
	call,
	cbw,
	cdq,
	cdqe,
	clac,
	clc,
	cld,
	clflush,
	clflushopt,
	cli,
	clts,
	clwb,
	cmc,
	cmovCC,
	cmp,
	cmppd,
	cmpps,
	cmps,
	cmpsb,
	cmpsd,
	cmpsq,
	cmpss,
	cmpsw,
	cmpxchg,
	cmpxchg16b,
	cmpxchg8b,
	comisd,
	comiss,
	cpuid,
	cqo,
	crc32,
	cvtdq2pd,
	cvtdq2ps,
	cvtpd2dq,
	cvtpd2pi,
	cvtpd2ps,
	cvtpi2pd,
	cvtpi2ps,
	cvtps2dq,
	cvtps2pd,
	cvtps2pi,
	cvtsd2si,
	cvtsd2ss,
	cvtsi2sd,
	cvtsi2ss,
	cvtss2sd,
	cvtss2si,
	cvttpd2dq,
	cvttpd2pi,
	cvttps2dq,
	cvttps2pi,
	cvttsd2si,
	cvttss2si,
	cwd,
	cwde,
	cwq,
	daa,
	das,
	dec,
	div,
	divpd,
	divps,
	divsd,
	divss,
	dppd,
	dpps,
	elfo,
	emms,
	enter,
	extractps,
	f2xm1,
	fabs,
	fadd,
	faddp,
	fbld,
	fbstp,
	fchs,
	fclex,
	fcmovCC,
	fcom,
	fcomi,
	fcomip,
	fcomp,
	fcompp,
	fcos,
	fdecstp,
	fdiv,
	fdivp,
	fdivr,
	fdivrp,
	ffree,
	fiadd,
	ficom,
	ficomp,
	fidiv,
	fidivr,
	fild,
	fimul,
	fincstp,
	finit,
	fist,
	fistp,
	fisttp,
	fisub,
	fisubr,
	fld,
	fld1,
	fldcw,
	fldenv,
	fldl2e,
	fldl2t,
	fldlg2,
	fldln2,
	fldpi,
	fldz,
	fmul,
	fmulp,
	fnclex,
	fninit,
	fnop,
	fnsave,
	fnstcw,
	fnstenv,
	fnstsw,
	fpatan,
	fprem,
	fprem1,
	fptan,
	frndint,
	frstor,
	fsave,
	fscale,
	fsin,
	fsincos,
	fsqrt,
	fst,
	fstcw,
	fstenv,
	fstp,
	fstsw,
	fsub,
	fsubp,
	fsubr,
	fsubrp,
	ftst,
	fucom,
	fucomi,
	fucomp,
	fucompp,
	fwait,
	fxam,
	fxch,
	fxrstor,
	fxsave,
	fxtract,
	fyl2x,
	fyl2xp1,
	getsec,
	haddpd,
	haddps,
	hlt,
	hsubpd,
	hsubps,
	idiv,
	imul,
	in,
	inc,
	insb,
	insertps,
	insl,
	insw,
	_int,
	int0,
	int3,
	invd,
	invept,
	invlpg,
	invpcid,
	invvpid,
	iret,
	iretd,
	jCC,
	jmp,
	kaddb,
	kaddd,
	kaddq,
	kaddw,
	kandb,
	kandd,
	kandnb,
	kandnd,
	kandnq,
	kandnw,
	kandq,
	kandw,
	kmovb,
	kmovd,
	kmovq,
	kmovw,
	knotb,
	knotd,
	knotq,
	knotw,
	korb,
	kord,
	korq,
	kortestb,
	kortestd,
	kortestq,
	kortestw,
	korw,
	kshiftlb,
	kshiftld,
	kshiftlq,
	kshiftlw,
	kshiftrb,
	kshiftrd,
	kshiftrq,
	kshiftrw,
	ktestb,
	ktestd,
	ktestq,
	ktestw,
	kunpckbd,
	kunpckbq,
	kunpckbw,
	kxnorb,
	kxnord,
	kxnorq,
	kxnorw,
	kxorrb,
	kxorrd,
	kxorrq,
	kxorrw,
	lahf,
	lar,
	lddqu,
	ldmxcsr,
	lds,
	lea,
	leaveq,
	les,
	lfence,
	lfs,
	lgdt,
	lgs,
	lidt,
	lldt,
	lmsw,
	lock,
	lodsb,
	lodsd,
	lodsq,
	lodsw,
	loop,
	loopCC,
	lsl,
	lss,
	ltr,
	lzcnt,
	maskmovdqu,
	maskmovq,
	maxpd,
	maxps,
	maxsd,
	maxss,
	mfence,
	minpd,
	minps,
	minsd,
	minss,
	monitor,
	mov,
	movapd,
	movaps,
	movbe,
	movd,
	movddup,
	movdq2q,
	movdqa,
	movdqu,
	movhlps,
	movhpd,
	movhps,
	movlhps,
	movlpd,
	movlps,
	movmskpd,
	movmskps,
	movntdq,
	movntdqa,
	movnti,
	movntpd,
	movntps,
	movntq,
	movq,
	movq2dq,
	movs,
	movsb,
	movsd,
	movshdup,
	movsldup,
	movsq,
	movss,
	movsw,
	movsx,
	movsxd,
	movupd,
	movups,
	movzx,
	mpsadbw,
	mul,
	mulpd,
	mulps,
	mulsd,
	mulss,
	mulx,
	mwait,
	neg,
	nop,
	_not,
	_or,
	orpd,
	orps,
	out,
	outs,
	outsb,
	outsd,
	outsw,
	pabsb,
	pabsd,
	pabsq,
	pabsw,
	packssdw,
	packsswb,
	packusdw,
	packuswb,
	paddb,
	paddd,
	paddq,
	paddsb,
	paddsw,
	paddusb,
	paddusw,
	paddw,
	palignr,
	pand,
	pandd,
	pandn,
	pandnd,
	pandnq,
	pandq,
	pause,
	pavgb,
	pavgw,
	pblendvb,
	pblendw,
	pclmulqdq,
	pcmpeqb,
	pcmpeqd,
	pcmpeqq,
	pcmpeqw,
	pcmpestri,
	pcmpestrm,
	pcmpgtb,
	pcmpgtd,
	pcmpgtq,
	pcmpgtw,
	pcmpistri,
	pcmpistrm,
	pcommit,
	pdep,
	pext,
	pextrb,
	pextrd,
	pextrq,
	pextrw,
	phaddd,
	phaddsw,
	phaddw,
	phminposuw,
	phsubsw,
	phsubw,
	pinsrb,
	pinsrd,
	pinsrq,
	pinsrw,
	pmaddubsw,
	pmaddwd,
	pmaxsb,
	pmaxsd,
	pmaxsq,
	pmaxsw,
	pmaxub,
	pmaxud,
	pmaxuq,
	pmaxuw,
	pminsb,
	pminsd,
	pminsq,
	pminsw,
	pminub,
	pminud,
	pminuq,
	pminuw,
	pmovmskb,
	pmovsxbd,
	pmovsxbq,
	pmovsxbw,
	pmovsxdq,
	pmovsxwd,
	pmovsxwq,
	pmovzxbd,
	pmovzxbq,
	pmovzxbw,
	pmovzxdq,
	pmovzxwd,
	pmovzxwq,
	pmuldq,
	pmulhrsw,
	pmulhuw,
	pmulhw,
	pmulld,
	pmullq,
	pmullw,
	pmulq,
	pmuludq,
	pop,
	popa,
	popad,
	popcnt,
	popeg,
	popf,
	popfd,
	popfq,
	por,
	pord,
	porq,
	prefetchh,
	prefetchw,
	prefetchwt1,
	prold,
	prolq,
	prolvd,
	prolvq,
	prord,
	prorq,
	prorvd,
	prorvq,
	psadbw,
	pshufb,
	pshufd,
	pshufhw,
	pshuflw,
	pshufw,
	psignb,
	psignd,
	psignw,
	pslld,
	pslldq,
	psllq,
	psllw,
	psrad,
	psraq,
	psraw,
	psrld,
	psrldq,
	psrlq,
	psrlw,
	psubb,
	psubd,
	psubq,
	psubsb,
	psubsw,
	psubusb,
	psubusw,
	psubw,
	ptest,
	punpckhbw,
	punpckhdq,
	punpckhqdq,
	punpckhwd,
	punpcklbw,
	punpckldq,
	punpcklqdq,
	punpcklwd,
	push,
	pusha,
	pushad,
	pusheg ,
	pushfd,
	pushfq,
	pxor,
	pxord,
	pxorq,
	rcl,
	rcpps,
	rcpss,
	rcr,
	rdfsbase,
	rdgsbase,
	rdmsr,
	rdpmc,
	rdtsc,
	rdtscp,
	rep,
	repe,
	repne,
	repnz,
	repz,
	ret,
	rol,
	ror,
	rorx,
	roundpd,
	roundps,
	roundsd,
	roundss,
	rsm,
	rsqrtps,
	rsqrtss,
	sal,
	sar,
	sbb,
	scas,
	scasb,
	scasd,
	scasw,
	setCC,
	sfence,
	sgdt,
	sha1msg1,
	sha1msg2,
	sha1nexte,
	sha1rnds4,
	sha256msg1,
	sha256msg2,
	sha256rnds2,
	shl,
	shld,
	shr,
	shrd,
	shufpd,
	shufps,
	sidt,
	sldt,
	smsw,
	sqrtpd,
	sqrtps,
	sqrtsd,
	sqrtss,
	stac,
	stc,
	std,
	sti,
	stmxcsr,
	stosb,
	stosd,
	stosq,
	stosw,
	str,
	sub,
	subpd,
	subps,
	subsd,
	subss,
	swapgs,
	syscall,
	sysenter,
	sysexit,
	sysret,
	test,
	tzcnt,
	ucomisd,
	ucomiss,
	ud2,
	unpckhpd,
	unpckhps,
	unpcklpd,
	unpcklps,
	vaddpd,
	vaddps,
	vaddsd,
	vaddss,
	valignd,
	valignq,
	vandnpd,
	vandnps,
	vandpd,
	vandps,
	vblendmpd,
	vblendmps,
	vbroadcast,
	vbroadcastf128,
	vbroadcastf32x2,
	vbroadcastf32x4,
	vbroadcastf32x8,
	vbroadcastf64x2,
	vbroadcastf64x4,
	vbroadcasti128,
	vbroadcasti32x2,
	vbroadcasti32x4,
	vbroadcasti32x8,
	vbroadcasti64x2,
	vbroadcasti64x4,
	vbroadcastsd,
	vbroadcastss,
	vcmppd,
	vcmpps,
	vcmpsd,
	vcmpss,
	vcomisd,
	vcomiss,
	vcompresspd,
	vcompressps,
	vcvtdq2pd,
	vcvtdq2ps,
	vcvtpd2dq,
	vcvtpd2ps,
	vcvtpd2qq,
	vcvtpd2udq,
	vcvtpd2uqq,
	vcvtph2ps,
	vcvtps2dq,
	vcvtps2pd,
	vcvtps2ph,
	vcvtps2qq,
	vcvtps2udq,
	vcvtps2uqq,
	vcvtqq2pd,
	vcvtqq2ps,
	vcvtsd2si,
	vcvtsd2ss,
	vcvtsd2usi,
	vcvtsi2sd,
	vcvtsi2ss,
	vcvtss2sd,
	vcvtss2si,
	vcvtss2usi,
	vcvttpd2dq,
	vcvttpd2qq,
	vcvttpd2udq,
	vcvttpd2uqq,
	vcvttps2dq,
	vcvttps2qq,
	vcvttps2udq,
	vcvttps2uqq,
	vcvttsd2si,
	vcvttsd2usi,
	vcvttss2si,
	vcvttss2usi,
	vcvtudq2pd,
	vcvtudq2ps,
	vcvtuqq2pd,
	vcvtuqq2ps,
	vcvtusi2sd,
	vcvtusi2ss,
	vdbpsadbw,
	vdivpd,
	vdivps,
	vdivsd,
	vdivss,
	verr,
	verw,
	vexp2pd,
	vexp2ps,
	vexpandpd,
	vexpandps,
	vextractf128,
	vextractf32x2,
	vextractf32x4,
	vextractf32x8,
	vextractf64x2,
	vextractf64x4,
	vextracti128,
	vextracti32x2,
	vextracti32x4,
	vextracti32x8,
	vextracti64x2,
	vextracti64x4,
	vextractps,
	vfixupimmpd,
	vfixupimmps,
	vfixupimmsd,
	vfixupimmss,
	vfmadd132pd,
	vfmadd132ps,
	vfmadd132sd,
	vfmadd132ss,
	vfmadd213pd,
	vfmadd213ps,
	vfmadd213sd,
	vfmadd213ss,
	vfmadd232pd,
	vfmadd232ps,
	vfmadd232sd,
	vfmadd232ss,
	vfmaddsub132pd,
	vfmaddsub132ps,
	vfmaddsub213pd,
	vfmaddsub213ps,
	vfmaddsub232pd,
	vfmaddsub232ps,
	vfmsub132ps,
	vfmsub132sd,
	vfmsub132ss,
	vfmsub213pd,
	vfmsub213ps,
	vfmsub213sd,
	vfmsub213ss,
	vfmsub232pd,
	vfmsub232ps,
	vfmsub232sd,
	vfmsub232ss,
	vfmsubadd132pd,
	vfmsubadd132ps,
	vfmsubadd213pd,
	vfmsubadd213ps,
	vfmsubadd232pd,
	vfmsubadd232ps,
	vfnmadd132pd,
	vfnmadd132ps,
	vfnmadd132sd,
	vfnmadd132ss,
	vfnmadd213pd,
	vfnmadd213ps,
	vfnmadd213sd,
	vfnmadd213ss,
	vfnmadd231pd,
	vfnmadd231ps,
	vfnmadd231sd,
	vfnmadd231ss,
	vfnmsub132pd,
	vfnmsub132ps,
	vfnmsub132sd,
	vfnmsub132ss,
	vfnmsub213pd,
	vfnmsub213ps,
	vfnmsub213sd,
	vfnmsub213ss,
	vfnmsub231pd,
	vfnmsub231ps,
	vfnmsub231sd,
	vfnmsub231ss,
	vfpclasspd,
	vfpclassps,
	vfpclasssd,
	vfpclassss,
	vgatherdpd,
	vgatherdps,
	vgatherpf0dpd,
	vgatherpf0dps,
	vgatherpf0qpd,
	vgatherpf0qps,
	vgatherpf1dpd,
	vgatherpf1dps,
	vgatherpf1qpd,
	vgatherpf1qps,
	vgatherqpd,
	vgatherqps,
	vgetexppd,
	vgetexpps,
	vgetexpsd,
	vgetexpss,
	vgetmantpd,
	vgetmantps,
	vgetmantsd,
	vgetmantss,
	vinsertf128,
	vinsertf32x2,
	vinsertf32x4,
	vinsertf32x8,
	vinsertf64x2,
	vinsertf64x4,
	vinserti128,
	vinserti32x2,
	vinserti32x4,
	vinserti32x8,
	vinserti64x2,
	vinserti64x4,
	vinsertps,
	vmaskmov,
	vmaxpd,
	vmaxps,
	vmaxsd,
	vmaxss,
	vmcall,
	vmclear,
	vmfunc,
	vminpd,
	vminps,
	vminsd,
	vminss,
	vmlaunch,
	vmovapd,
	vmovaps,
	vmovd,
	vmovddup,
	vmovdqa,
	vmovdqa32,
	vmovdqa64,
	vmovdqu,
	vmovdqu16,
	vmovdqu32,
	vmovdqu64,
	vmovdqu8,
	vmovhlps,
	vmovhpd,
	vmovhps,
	vmovlhps,
	vmovlpd,
	vmovlps,
	vmovntdq,
	vmovntdqa,
	vmovntpd,
	vmovntps,
	vmovq,
	vmovsd,
	vmovshdup,
	vmovsldup,
	vmovss,
	vmovupd,
	vmovups,
	vmptrld,
	vmread,
	vmresume,
	vmulpd,
	vmulps,
	vmulsd,
	vmulss,
	vmwrite,
	vmxoff,
	vmxon,
	vorpd,
	vorps,
	vpabsb,
	vpabsd,
	vpabsq,
	vpabsw,
	vpackssdw,
	vpacksswb,
	vpackusdw,
	vpackuswb,
	vpaddb,
	vpaddd,
	vpaddq,
	vpaddsb,
	vpaddsw,
	vpaddusb,
	vpaddusw,
	vpaddw,
	vpalignr,
	vpand,
	vpandd,
	vpandn,
	vpandnd,
	vpandnq,
	vpandq,
	vpavgb,
	vpavgw,
	vpblendd,
	vpblendmb,
	vpblendmd,
	vpblendmq,
	vpblendmw,
	vpbroadcast,
	vpbroadcastb,
	vpbroadcastd,
	vpbroadcastmb2q,
	vpbroadcastmw2d,
	vpbroadcastq,
	vpbroadcastw,
	vpcmpb,
	vpcmpd,
	vpcmpeqb,
	vpcmpeqd,
	vpcmpeqq,
	vpcmpeqw,
	vpcmpgtb,
	vpcmpgtd,
	vpcmpgtq,
	vpcmpgtw,
	vpcmpq,
	vpcmpub,
	vpcmpud,
	vpcmpuq,
	vpcmpuw,
	vpcmpw,
	vpcompressd,
	vpcompressq,
	vpconflictd,
	vpconflictq,
	vperm2f128,
	vperm2i128,
	vpermb,
	vpermd,
	vpermi2b,
	vpermi2d,
	vpermi2pd,
	vpermi2ps,
	vpermi2q,
	vpermi2w,
	vpermilpd,
	vpermilps,
	vpermpd,
	vpermps,
	vpermq,
	vpermt2b,
	vpermt2d,
	vpermt2pd,
	vpermt2ps,
	vpermt2q,
	vpermt2w,
	vpermw,
	vpexpandd,
	vpexpandq,
	vpextrb,
	vpextrd,
	vpextrq,
	vpextrw,
	vpgatherdd,
	vpgatherdq,
	vpgatherqd,
	vpgatherqq,
	vpinsrb,
	vpinsrd,
	vpinsrq,
	vpinsrw,
	vplzcntd,
	vplzcntq,
	vpmadd52huq,
	vpmadd52luq,
	vpmaddubsw,
	vpmaddwd,
	vpmaskmov,
	vpmaxsb,
	vpmaxsd,
	vpmaxsq,
	vpmaxsw,
	vpmaxub,
	vpmaxud,
	vpmaxuq,
	vpmaxuw,
	vpminsb,
	vpminsd,
	vpminsq,
	vpminsw,
	vpminub,
	vpminud,
	vpminuq,
	vpminuw,
	vpmovb2m,
	vpmovd2m,
	vpmovdb,
	vpmovdw,
	vpmovm2b,
	vpmovm2d,
	vpmovm2q,
	vpmovm2w,
	vpmovq2m,
	vpmovqb,
	vpmovqd,
	vpmovqw,
	vpmovsdb,
	vpmovsdw,
	vpmovsqb,
	vpmovsqd,
	vpmovsqw,
	vpmovswb,
	vpmovsxbd,
	vpmovsxbq,
	vpmovsxbw,
	vpmovsxdq,
	vpmovsxwd,
	vpmovsxwq,
	vpmovusdb,
	vpmovusdw,
	vpmovusqb,
	vpmovusqd,
	vpmovusqw,
	vpmovuswb,
	vpmovw2m,
	vpmovwb,
	vpmovzxbd,
	vpmovzxbq,
	vpmovzxbw,
	vpmovzxdq,
	vpmovzxwd,
	vpmovzxwq,
	vpmulhrsw,
	vpmulhuw,
	vpmulhw,
	vpmulld,
	vpmullq,
	vpmullw,
	vpmulq,
	vpmultishiftqb,
	vpmuludq,
	vpor,
	vpord,
	vporq,
	vpravd,
	vprold,
	vprolq,
	vprolvd,
	vprolvq,
	vprord,
	vprorq,
	vprorvd,
	vprorvq,
	vpsadbw,
	vpscatterdd,
	vpscatterdq,
	vpscatterqd,
	vpscatterqq,
	vpshufb,
	vpshufd,
	vpshufhw,
	vpshuflw,
	vpslld,
	vpslldq,
	vpsllq,
	vpsllvd,
	vpsllvq,
	vpsllvw,
	vpsllw,
	vpsrad,
	vpsraq,
	vpsravd,
	vpsravq,
	vpsravw,
	vpsraw,
	vpsrld,
	vpsrldq,
	vpsrlq,
	vpsrlvd,
	vpsrlvq,
	vpsrlvw,
	vpsrlw,
	vpsubb,
	vpsubd,
	vpsubq,
	vpsubsb,
	vpsubsw,
	vpsubusb,
	vpsubusw,
	vpsubw,
	vpternlogd,
	vpternlogq,
	vptestmb,
	vptestmd,
	vptestmq,
	vptestmw,
	vptestnmb,
	vptestnmd,
	vptestnmq,
	vptestnmw,
	vptestpd,
	vptestps,
	vpunpckhbw,
	vpunpckhdq,
	vpunpckhqdq,
	vpunpckhwd,
	vpunpcklbw,
	vpunpckldq,
	vpunpcklqdq,
	vpunpcklwd,
	vrangepd,
	vrangeps,
	vrangesd,
	vrangess,
	vrcp14pd,
	vrcp14ps,
	vrcp14sd,
	vrcp14ss,
	vrcp28pd,
	vrcp28ps,
	vrcp28sd,
	vrcp28ss,
	vreducepd,
	vreduceps,
	vreducesd,
	vreducess,
	vrndscalepd,
	vrndscaleps,
	vrndscalesd,
	vrndscaless,
	vrsqrt14pd,
	vrsqrt14ps,
	vrsqrt14sd,
	vrsqrt14ss,
	vrsqrt28pd,
	vrsqrt28ps,
	vrsqrt28sd,
	vrsqrt28ss,
	vscalefpd,
	vscalefps,
	vscalefsd,
	vscalefss,
	vscatterdpd,
	vscatterdps,
	vscatterdqpd,
	vscatterdqps,
	vscatterpf0dpd,
	vscatterpf0dps,
	vscatterpf0qpd,
	vscatterpf0qps,
	vscatterpf1dpd,
	vscatterpf1dps,
	vscatterpf1qpd,
	vscatterpf1qps,
	vshuff32x4,
	vshuff64x4,
	vshuffi32x2,
	vshuffi64x2,
	vshufpd,
	vshufps,
	vsqrtpd,
	vsqrtps,
	vsqrtsd,
	vsqrtss,
	vsubpd,
	vsubps,
	vsubsd,
	vsubss,
	vucomisd,
	vucomiss,
	vunpckhpd,
	vunpckhps,
	vunpcklpd,
	vunpcklps,
	vxorpd,
	vxorps,
	vzeroall,
	vzeroupper,
	wait,
	wbinvd,
	wrfsbase,
	wrgsbase,
	wrmsr,
	xabort,
	xacquire,
	xadd,
	xbegin,
	xchg,
	xend,
	xgetbv,
	xlat,
	xlatb,
	_xor,
	xorpd,
	xorps,
	xrelease,
	xrstor,
	xrstors,
	xsave,
	xsavec,
	xsaveopt,
	xsaves,
	xsetbv,
	xtest,

	invalid,
};

enum class Ptype
{
	as,
	bhnt,
	bnht,
	cs,
	ds,
	es,
	evex,
	lock,
	ne,
	os,
	rep,
	rex,
	ss,
	vex2,
	vex3,
};

class Prefix
{
public:
	Prefix()
	{
		memset( this, 0, sizeof(*this));
	}
	virtual ~Prefix() {}

	virtual bool hasNonConstBytes() const = 0;
	virtual void prepend( std::vector<uint8_t> & ) const = 0;
	virtual int length() const = 0;
};

class SimplePrefix:public Prefix
{
public:
	~SimplePrefix() final {}

	void setType( const std::string & token );

	bool hasNonConstBytes() const final	{ return false; }
	void prepend( std::vector<uint8_t> & ) const final;
	int length() const final { return 1; }

private:
	uint8_t type_;
};


class Rex: public Prefix
{
public:
	~Rex() final {}

	void setB( char );
	void setR( char );
	void setW( char );
	void setX( char );

	bool hasNonConstBytes() const final { return false; }
	void prepend( std::vector<uint8_t> & ) const final;

	int length() const final { return 1; }

private:
	bool	R;
	bool	X;
	bool	B;
	bool	W;
};

class Vex2: public Prefix
{
public:
	~Vex2() final {}

	void setR( char );
	void setvvvv( const char * );
	void setL( char );
	void setpp( const char * );

	bool hasNonConstBytes() const final;
	void prepend( std::vector<uint8_t> & ) const final;

	int length() const final { return 2; }

private:
	bool	R;
	uint8_t	vvvv;
	bool	L;
	uint8_t	pp;
};

class Vex3: public Prefix
{
public:
	~Vex3() final {}

	void setB( char );
	void setR( char );
	void setX( char );
	void setmmmm( const char * );
	void setW( char );
	void setvvvv( const char * );
	void setL( char );
	void setpp( const char * );

	bool hasNonConstBytes() const final;
	void prepend( std::vector<uint8_t> & ) const final;

	int length() const final { return 3; }

private:
	bool	R;
	bool	X;
	bool	B;
	uint8_t	mmmm;
	bool	W;
	uint8_t	vvvv;
	bool	L;
	uint8_t	pp;
};

class Evex: public Prefix
{
public:
	~Evex() final {}

	void setB( char );
	void setR( char );
	void setX( char );
	void setRp( const char * );
	void setmm( const char * );
	void setW( char );
	void setvvvv( const char * );
	void setpp( const char * );
	void setz( char );
	void setLp( const char * );
	void setL( char );
	void setb( char );
	void setVp( const char * );
	void setaaa( const char * );

	bool hasNonConstBytes() const final;
	void prepend( std::vector<uint8_t> & ) const final;

	int length() const final { return 4; }

private:
	bool	R;
	bool	X;
	bool	B;
	bool	Rp;
	uint8_t	mm;
	bool	W;
	uint8_t	vvvv;
	uint8_t	pp;
	bool	z;
	bool	Lp;
	bool	L;
	bool	b;
	bool	Vp;
	uint8_t	aaa;
};

// ASM instruction encoding
//
class Instruction
{
public:
	struct Comp
	{
		bool operator() ( const MC_Comp & a1, const MC_Comp & a2 )
		{
			return a1.position() < a2.position();
		}
	};
	struct Cmp
	{
		bool operator() ( const Instruction & i1, const Instruction & i2 )
		{
			auto io1 = i1.opcode_.begin();
			auto eo1 = i1.opcode_.end();
			auto io2 = i2.opcode_.begin();
			auto eo2 = i2.opcode_.end();

			while( ( io1 != eo1 ) && ( io2 != eo2 ) )
			{
				if( *io1 < *io2 )
					return true;
				else if( *io1 > *io2 )
					return false;

				++io1;
				++io2;
			}
			if( io1 != eo1 )
				return false;
			else if( io2 != eo2 )
				return true;

			auto ia1 = i1.args_.begin();
			auto ea1 = i1.args_.end();
			auto ia2 = i2.args_.begin();
			auto ea2 = i2.args_.end();

            while( ( ia1 != ea1 ) && ( ia2 != ea2 ) )
            {
				if( ia1->value() < ia2->value() )
					return true;
				else if( ia1->value() > ia2->value() )
					return false;
                ++ia1;
				++ia2;
            }
            if( io1 != eo1 )
                return true;
            return true;
		}
	};

	Instruction(Nmemonic nm,
				std::vector<Otype>   && operands,
				std::vector<std::unique_ptr<Prefix>>  && prefix,
				std::vector<uint8_t> && opcode,
				std::set<MC_Comp,Comp>&& args ):	
					inst_(std::move(nm)),
					operands_(std::move(operands)),
					prefix_(std::move(prefix)),
					opcode_(std::move(opcode)),
					args_(std::move(args))
	{
	}

	Instruction(const Instruction & ) = default;
	Instruction & operator = (const Instruction & ) = default;
	Instruction( Instruction && ) = default;
	Instruction & operator = ( Instruction && ) = default;
	~Instruction() = default;

	const char	* lexium() const	{ return lexium(inst_); }

	friend bool operator < ( const Instruction &, const Instruction & );

	static Nmemonic			nmemonic(const std::string & );
	static const char *		lexium(Nmemonic );

	std::vector<uint8_t>	prefix() const;

	std::string decoder( const std::string & margin ) const;

	std::string lenString() const;
	std::string discriminators() const;

	const std::vector<uint8_t>	& opcode() const { return opcode_; }
	const std::set<MC_Comp,Comp> & args() const  { return args_; }

private:
	Nmemonic				inst_;
	std::vector<Otype>		operands_;

	std::vector<std::unique_ptr<Prefix>> prefix_;
	std::vector<uint8_t>	opcode_;

	std::set<MC_Comp,Comp>	args_;
};

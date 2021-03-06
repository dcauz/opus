#pragma once

// http://ref.x86asm.net/geek64-abc.html
// https://en.wikipedia.org/wiki/EVEX_prefix

enum Register
{
	ES,       CS, SS, DS, FS, GS,					
		
	AL=8,     CL, DL, BL, AH, CH, DH, BH,				
    SPL=28,   BPL,  SIL,  DIL,		
	R8B=32,   R9B, R10B, R11B, R12B, R13B, R14B, R15B,	

	AX = 72,  CX,  DX,   BX,   SP,   BP,   SI,   DI,	
	R8W= 96,  R9W, R10W, R11W, R12W, R13W, R14W, R15W,	

	EAX=136,  ECX, EDX,  EBX,  ESP,  EBP,  ESI,  EDI,	
	R8D=160,  R9D, R10D, R11D, R12D, R13D, R14D, R15D,

	RAX=264,  RCX, RDX, RBX, RSP, RBP, RSI, RDI,		
	R8 =288,  R9,  R10, R11, R12, R13, R14, R15,	

	ST0=16,   ST1, ST2, ST3, ST4, ST5, ST6, ST7,

	MM0=40,   MM1, MM2, MM3, MM4, MM5, MM6, MM7,	

	XMM0=104, XMM1,  XMM2,  XMM3,  XMM4,  XMM5,  XMM6,  XMM7, 	
	XMM8, 	  XMM9,  XMM10, XMM11, XMM12, XMM13, XMM14, XMM15,	
	XMM16,    XMM17, XMM18, XMM19, XMM20, XMM21, XMM22, XMM23,	
	XMM24,    XMM25, XMM26, XMM27, XMM28, XMM29, XMM30, XMM31,	

	YMM0=300, YMM1,  YMM2,  YMM3,  YMM4,  YMM5,  YMM6,  YMM7,		
	YMM8, 	  YMM9,  YMM10, YMM11, YMM12, YMM13, YMM14, YMM15,	
	YMM16, 	  YMM17, YMM18, YMM19, YMM20, YMM21, YMM22, YMM23,	
	YMM24, 	  YMM25, YMM26, YMM27, YMM28, YMM29, YMM30, YMM31,	

	ZMM0=332, ZMM1,  ZMM2,  ZMM3,  ZMM4,  ZMM5,  ZMM6,  ZMM7,		
	ZMM8, 	  ZMM9,  ZMM10, ZMM11, ZMM12, ZMM13, ZMM14, ZMM15,	
	ZMM16, 	  ZMM17, ZMM18, ZMM19, ZMM20, ZMM21, ZMM22, ZMM23,	
	ZMM24, 	  ZMM25, ZMM26, ZMM27, ZMM28, ZMM29, ZMM30, ZMM31,	

	CR0=400,  CR1, CR2,  CR3,  CR4,  CR5,  CR6,  CR7,		
    CR8,      CR9, CR10, CR11, CR12, CR13, CR14, CR15,	

	DR0=500,  DR1, DR2,  DR3,  DR4,  DR5,  DR6,  DR7,
    DR8,      DR9, DR10, DR11, DR12, DR13, DR14, DR15,			

	K0=520,   K1, K2, K3, K4, K5, K6, K7,

	ERROR
};

enum class OpRegs
{
	AL,		// 1 reg opcodes
	ST0,
	MM0,
	XMM0,
	YMM0,
	ZMM0,
	CR0,
	DR0,

	// reg r/m
	AL_ST0,  
	ST0_AL,	 

	AL_MM0, 
	MM0_AL, 
	MM0_XMM0, 
	K0_XMM0,
	K0_YMM0,
	K0_ZMM0,

	AL_XMM0, 
	XMM0_AL, 
	XMM0_MM0, 
	XMM0_YMM0,

	AL_YMM0, 
	YMM0_AL,
	YMM0_ZMM0,
	YMM0_XMM0,

	AL_ZMM0, 
	ZMM0_AL,
	ZMM0_YMM0,
	ZMM0_XMM0,

	AL_CR0,  
	CR0_AL,

	AL_DR0,  
	DR0_AL,
};

enum Mnemonic
{
	OP_ADC,
	OP_ADD,
	OP_ADDPD,
	OP_ADDPS,
	OP_ADDSD,
	OP_ADDSS,
	OP_ADDSUBPD,
	OP_ADDSUBPS,
	OP_AND,
	OP_ANDNPD,
	OP_ANDNPS,
	OP_ANDPD,
	OP_ANDPS,

	OP_BSF,
	OP_BSR,
	OP_BSWAP,
	OP_BT,
	OP_BTC,
	OP_BTR,
	OP_BTS,

	OP_CALL,
	OP_CALLF,
	OP_CBW,
	OP_CDQ,
	OP_CDQE,
	OP_CLC,
	OP_CLD,
	OP_CLFLUSH,
	OP_CLI,
	OP_CLTS,
	OP_CMC,
	OP_CMOVA,
	OP_CMOVAE,
	OP_CMOVB,
	OP_CMOVBE,
	OP_CMOVC,
	OP_CMOVE,
	OP_CMOVG,
	OP_CMOVGE,
	OP_CMOVL,
	OP_CMOVLE,
	OP_CMOVNA,
	OP_CMOVNAE,
	OP_CMOVNB,
	OP_CMOVNBE,
	OP_CMOVNC,
	OP_CMOVNE,
	OP_CMOVNG,
	OP_CMOVNGE,
	OP_CMOVNL,
	OP_CMOVNLE,
	OP_CMOVNO,
	OP_CMOVNP,
	OP_CMOVNS,
	OP_CMOVNZ,
	OP_CMOVO,
	OP_CMOVP,
	OP_CMOVPE,
	OP_CMOVPO,
	OP_CMOVS,
	OP_CMOVZ,
	OP_CMP,
	OP_CMPPD,
	OP_CMPPS,
	OP_CMPS,
	OP_CMPSB,
	OP_CMPSD,
	OP_CMPSQ,
	OP_CMPSS,
	OP_CMPSW,
	OP_CMPXCHG,
	OP_CMPXCHG16B,
	OP_CMPXCHG8B,
	OP_COMISD,
	OP_COMISS,
	OP_CPUID,
	OP_CQO,
	OP_CRC32,
	OP_CVTDQ2PD,
	OP_CVTDQ2PS,
	OP_CVTPD2DQ,
	OP_CVTPD2PI,
	OP_CVTPD2PS,
	OP_CVTPI2PD,
	OP_CVTPI2PS,
	OP_CVTPS2DQ,
	OP_CVTPS2PD,
	OP_CVTPS2PI,
	OP_CVTSD2SI,
	OP_CVTSD2SS,
	OP_CVTSI2SD,
	OP_CVTSI2SS,
	OP_CVTSS2SD,
	OP_CVTSS2SI,
	OP_CVTTPD2DQ,
	OP_CVTTPD2PI,
	OP_CVTTPS2DQ,
	OP_CVTTPS2PI,
	OP_CVTTSD2SI,
	OP_CVTTSS2SI,
	OP_CWD,
	OP_CWDE,

	OP_DEC,
	OP_DIV,
	OP_DIVPD,
	OP_DIVPS,
	OP_DIVSD,
	OP_DIVSS,
	OP_DPPD,
	OP_DPPS,

	OP_EMMS,
	OP_ENTER,
	OP_EXTRACTPS,

	OP_F2XM1,
	OP_FABS,
	OP_FADD,
	OP_FADDP,
	OP_FBLD,
	OP_FBSTP,
	OP_FCHS,
	OP_FCLEX,
	OP_FCMOVB,
	OP_FCMOVBE,
	OP_FCMOVE,
	OP_FCMOVNB,
	OP_FCMOVNBE,
	OP_FCMOVNE,
	OP_FCMOVNU,
	OP_FCMOVU,
	OP_FCOM,
	OP_FCOM2,
	OP_FCOMI,
	OP_FCOMIP,
	OP_FCOMP,
	OP_FCOMP3,
	OP_FCOMP5,
	OP_FCOMPP,
	OP_FCOS,
	OP_FDECSTP,
	OP_FDIV,
	OP_FDIVP,
	OP_FDIVR,
	OP_FDIVRP,
	OP_FFREE,
	OP_FFREEP,
	OP_FIADD,
	OP_FICOM,
	OP_FICOMP,
	OP_FIDIV,
	OP_FIDIVR,
	OP_FILD,
	OP_FIMUL,
	OP_FINCSTP,
	OP_FINIT,
	OP_FIST,
	OP_FISTP,
	OP_FISTTP,
	OP_FISUB,
	OP_FISUBR,
	OP_FLD,
	OP_FLD1,
	OP_FLDCW,
	OP_FLDENV,
	OP_FLDL2E,
	OP_FLDL2T,
	OP_FLDLG2,
	OP_FLDLN2,
	OP_FLDPI,
	OP_FLDZ,
	OP_FMUL,
	OP_FMULP,
	OP_FNCLEX,
	OP_FNDISI,
	OP_FNENI,
	OP_FNINIT,
	OP_FNOP,
	OP_FNSAVE,
	OP_FNSETPM,
	OP_FNSTCW,
	OP_FNSTENV,
	OP_FNSTSW,
	OP_FPATAN,
	OP_FPREM,
	OP_FPREM1,
	OP_FPTAN,
	OP_FRNDINT,
	OP_FRSTOR,
	OP_FS,
	OP_FSAVE,
	OP_FSCALE,
	OP_FSIN,
	OP_FSINCOS,
	OP_FSQRT,
	OP_FST,
	OP_FSTCW,
	OP_FSTENV,
	OP_FSTP,
	OP_FSTP1,
	OP_FSTP8,
	OP_FSTP9,
	OP_FSTSW,
	OP_FSUB,
	OP_FSUBP,
	OP_FSUBR,
	OP_FSUBRP,
	OP_FTST,
	OP_FUCOM,
	OP_FUCOMI,
	OP_FUCOMIP,
	OP_FUCOMP,
	OP_FUCOMPP,
	OP_FWAIT,
	OP_FXAM,
	OP_FXCH,
	OP_FXCH4,
	OP_FXCH7,
	OP_FXRSTOR,
	OP_FXSAVE,
	OP_FXTRACT,
	OP_FYL2X,
	OP_FYL2XP1,

	OP_GETSEC,
	OP_GS,

	OP_HADDPD,
	OP_HADDPS,
	OP_HINT_NOP,
	OP_HLT,
	OP_HSUBPD,
	OP_HSUBPS,

	OP_ICEBP,
	OP_IDIV,
	OP_IMUL,
	OP_IN,
	OP_INC,
	OP_INS,
	OP_INSB,
	OP_INSD,
	OP_INSERTPS,
	OP_INSW,
	OP_INT,
	OP_INT1,
	OP_INTO,
	OP_INVD,
	OP_INVEPT,
	OP_INVLPG,
	OP_INVVPID,
	OP_IRET,
	OP_IRETD,
	OP_IRETQ,

	OP_JA,
	OP_JAE,
	OP_JB,
	OP_JBE,
	OP_JC,
	OP_JE,
	OP_JECXZ,
	OP_JG,
	OP_JGE,
	OP_JL,
	OP_JLE,
	OP_JMP,
	OP_JMPE,
	OP_JMPF,
	OP_JNA,
	OP_JNAE,
	OP_JNB,
	OP_JNBE,
	OP_JNC,
	OP_JNE,
	OP_JNG,
	OP_JNGE,
	OP_JNL,
	OP_JNLE,
	OP_JNO,
	OP_JNP,
	OP_JNS,
	OP_JNZ,
	OP_JO,
	OP_JP,
	OP_JPE,
	OP_JPO,
	OP_JRCXZ,
	OP_JS,
	OP_JZ,

	OP_LAHF,
	OP_LAR,
	OP_LDDQU,
	OP_LDMXCSR,
	OP_LEA,
	OP_LEAVE,
	OP_LFENCE,
	OP_LFS,
	OP_LGDT,
	OP_LGS,
	OP_LIDT,
	OP_LLDT,
	OP_LMSW,
	OP_LOCK,
	OP_LODS,
	OP_LODSB,
	OP_LODSD,
	OP_LODSQ,
	OP_LODSW,
	OP_LOOP,
	OP_LOOPE,
	OP_LOOPNE,
	OP_LOOPNZ,
	OP_LOOPZ,
	OP_LSL,
	OP_LSS,
	OP_LTR,

	OP_MASKMOVDQU,
	OP_MASKMOVQ,
	OP_MAXPD,
	OP_MAXPS,
	OP_MAXSD,
	OP_MAXSS,
	OP_MFENCE,
	OP_MINPD,
	OP_MINPS,
	OP_MINSD,
	OP_MINSS,
	OP_MONITOR,
	OP_MOV,
	OP_MOVAPD,
	OP_MOVAPS,
	OP_MOVBE,
	OP_MOVD,
	OP_MOVDDUP,
	OP_MOVDQ2Q,
	OP_MOVDQA,
	OP_MOVDQU,
	OP_MOVHLPS,
	OP_MOVHPD,
	OP_MOVHPS,
	OP_MOVLHPS,
	OP_MOVLPD,
	OP_MOVLPS,
	OP_MOVMSKPD,
	OP_MOVMSKPS,
	OP_MOVNTDQ,
	OP_MOVNTI,
	OP_MOVNTPD,
	OP_MOVNTPS,
	OP_MOVNTQ,
	OP_MOVQ,
	OP_MOVQ2DQ,
	OP_MOVS,
	OP_MOVSB,
	OP_MOVSD,
	OP_MOVSHDUP,
	OP_MOVSLDUP,
	OP_MOVSQ,
	OP_MOVSS,
	OP_MOVSW,
	OP_MOVSX,
	OP_MOVSXD,
	OP_MOVUPD,
	OP_MOVUPS,
	OP_MOVZX,
	OP_MPSADBW,
	OP_MUL,
	OP_MULPD,
	OP_MULPS,
	OP_MULSD,
	OP_MULSS,
	OP_MWAIT,

	OP_NEG,
	OP_NOP,
	OP_NOT,

	OP_OR,
	OP_ORPD,
	OP_ORPS,
	OP_OUT,
	OP_OUTS,
	OP_OUTSB,
	OP_OUTSD,
	OP_OUTSW,

	OP_PACKSSDW,
	OP_PACKSSWB,
	OP_PACKUSWB,
	OP_PADDB,
	OP_PADDD,
	OP_PADDQ,
	OP_PADDSB,
	OP_PADDSW,
	OP_PADDUSB,
	OP_PADDUSW,
	OP_PADDW,
	OP_PALIGNR,
	OP_PAND,
	OP_PANDN,
	OP_PAUSE,
	OP_PAVGB,
	OP_PAVGW,
	OP_PBLENDW,
	OP_PCMPEQB,
	OP_PCMPEQD,
	OP_PCMPEQW,
	OP_PCMPESTRI,
	OP_PCMPESTRM,
	OP_PCMPGTB,
	OP_PCMPGTD,
	OP_PCMPGTW,
	OP_PCMPISTRI,
	OP_PCMPISTRM,
	OP_PEXTRB,
	OP_PEXTRD,
	OP_PEXTRQ,
	OP_PEXTRW,
	OP_PINSRB,
	OP_PINSRD,
	OP_PINSRQ,
	OP_PINSRW,
	OP_PMADDWD,
	OP_PMAXSW,
	OP_PMAXUB,
	OP_PMINSW,
	OP_PMINUB,
	OP_PMOVMSKB,
	OP_PMULHUW,
	OP_PMULHW,
	OP_PMULLW,
	OP_PMULUDQ,
	OP_POP,
	OP_POPCNT,
	OP_POPF,
	OP_POPFQ,
	OP_POR,
	OP_PREFETCHNTA,
	OP_PREFETCHT0,
	OP_PREFETCHT1,
	OP_PREFETCHT2,
	OP_PSADBW,
	OP_PSHUFD,
	OP_PSHUFHW,
	OP_PSHUFLW,
	OP_PSHUFW,
	OP_PSLLD,
	OP_PSLLDQ,
	OP_PSLLQ,
	OP_PSLLW,
	OP_PSRAD,
	OP_PSRAW,
	OP_PSRLD,
	OP_PSRLDQ,
	OP_PSRLQ,
	OP_PSRLW,
	OP_PSUBB,
	OP_PSUBD,
	OP_PSUBQ,
	OP_PSUBSB,
	OP_PSUBSW,
	OP_PSUBUSB,
	OP_PSUBUSW,
	OP_PSUBW,
	OP_PUNPCKHBW,
	OP_PUNPCKHDQ,
	OP_PUNPCKHQDQ,
	OP_PUNPCKHWD,
	OP_PUNPCKLBW,
	OP_PUNPCKLDQ,
	OP_PUNPCKLQDQ,
	OP_PUNPCKLWD,
	OP_PUSH,
	OP_PUSHF,
	OP_PUSHFQ,
	OP_PXOR,

	OP_RCL,
	OP_RCPPS,
	OP_RCPSS,
	OP_RCR,
	OP_RDMSR,
	OP_RDPMC,
	OP_RDTSC,
	OP_RDTSCP,
	OP_REP,
	OP_REPE,
	OP_REPNE,
	OP_REPNZ,
	OP_REPZ,
	OP_RETF,
	OP_RETN,
	OP_REX,
	OP_REX_B,
	OP_REX_R,
	OP_REX_RB,
	OP_REX_RX,
	OP_REX_RXB,
	OP_REX_W,
	OP_REX_WB,
	OP_REX_WR,
	OP_REX_WRB,
	OP_REX_WRX,
	OP_REX_WRXB,
	OP_REX_WX,
	OP_REX_WXB,
	OP_REX_X,
	OP_REX_XB,
	OP_ROL,
	OP_ROR,
	OP_ROUNDPD,
	OP_ROUNDPS,
	OP_ROUNDSD,
	OP_ROUNDSS,
	OP_RSM,
	OP_RSQRTPS,
	OP_RSQRTSS,

	OP_SAHF,
	OP_SAL,
	OP_SAR,
	OP_SBB,
	OP_SCAS,
	OP_SCASB,
	OP_SCASD,
	OP_SCASQ,
	OP_SCASW,
	OP_SETA,
	OP_SETAE,
	OP_SETB,
	OP_SETBE,
	OP_SETC,
	OP_SETE,
	OP_SETG,
	OP_SETGE,
	OP_SETL,
	OP_SETLE,
	OP_SETNA,
	OP_SETNAE,
	OP_SETNB,
	OP_SETNBE,
	OP_SETNC,
	OP_SETNE,
	OP_SETNG,
	OP_SETNGE,
	OP_SETNL,
	OP_SETNLE,
	OP_SETNO,
	OP_SETNP,
	OP_SETNS,
	OP_SETNZ,
	OP_SETO,
	OP_SETP,
	OP_SETPE,
	OP_SETPO,
	OP_SETS,
	OP_SETZ,
	OP_SFENCE,
	OP_SGDT,
	OP_SHL,
	OP_SHLD,
	OP_SHR,
	OP_SHRD,
	OP_SHUFPD,
	OP_SHUFPS,
	OP_SIDT,
	OP_SLDT,
	OP_SMSW,
	OP_SQRTPD,
	OP_SQRTPS,
	OP_SQRTSD,
	OP_SQRTSS,
	OP_STC,
	OP_STD,
	OP_STI,
	OP_STMXCSR,
	OP_STOS,
	OP_STOSB,
	OP_STOSD,
	OP_STOSQ,
	OP_STOSW,
	OP_STR,
	OP_SUB,
	OP_SUBPD,
	OP_SUBPS,
	OP_SUBSD,
	OP_SUBSS,
	OP_SWAPGS,
	OP_SYSCALL,
	OP_SYSENTER,
	OP_SYSEXIT,
	OP_SYSRET,

	OP_TEST,

	OP_UCOMISD,
	OP_UCOMISS,
	OP_UD,
	OP_UD2,
	OP_UNPCKHPD,
	OP_UNPCKHPS,
	OP_UNPCKLPD,
	OP_UNPCKLPS,
	OP_VERR,
	OP_VERW,
	OP_VMCALL,
	OP_VMCLEAR,
	OP_VMLAUNCH,
	OP_VMPTRLD,
	OP_VMPTRST,
	OP_VMREAD,
	OP_VMRESUME,
	OP_VMWRITE,
	OP_VMXOFF,
	OP_VMXON,

	OP_WBINVD,
	OP_WRMSR,

	OP_XADD,
	OP_XCHG,
	OP_XGETBV,
	OP_XLAT,
	OP_XLATB,
	OP_XOR,
	OP_XORPD,
	OP_XORPS,
	OP_XRSTOR,
	OP_XSAVE,
	OP_XSETBV,
};

enum RegContext
{
	Operand,	// REX.W modifies
	Reg,		// REX.R modifies
	Index,		// REX.X modifies
	Base,		// REX.B modifies
	Reg2,		// REX.B modifies
};

enum Prefix
{
	REX   = 64,	// 0x40

	REX_B = 1,	// 0x41
	REX_X = 2,	// 0x44
	REX_R = 4,	// 0x44
	REX_W = 8,	// 0x48

	VEX	  = 16, // VEX prefix

	PRE_26   = 1 << 10,	// ES
	PRE_2E   = 1 << 18,	// CS / Branch not taken
	PRE_36   = 1 << 12,	// SS
	PRE_3E   = 1 << 19,	// DS / Branch taken
	PRE_64   = 1 << 14,	// FS
	PRE_65   = 1 << 15,	// GS

	PRE_OS   = 1 << 7,	// Operand Size Override	(66)
	PRE_AS   = 1 << 8,	// Address Size Override	(67)

	PRE_REP  = 1 << 20, // REP/REPZ (F3)
	PRE_NE	 = 1 << 16, // REPNZ (F2)
	PRE_LOCK = 1 << 17,	// Lock (F0)
	PRE_BHNT = 1 << 18,	// Branch (2E)
	PRE_BNHT = 1 << 19,	// Do not branch (3E)
	PRE_256  = 1 << 21, // 256-bit regs
	PRE_38   = 1 << 22, // 38 prefix
	PRE_3A   = 1 << 23, // 3A prefix
	PRE_0F   = 1 << 24, // 0F prefix

	PRE_EVEX = 1 << 25, // EVEX prefix
	PRE_Rprime=1 << 26, // EVEX.R'

	REX_MASK = REX_B | REX_X | REX_R | REX_W,

	PREFIX_SIZE_MASK = REX | REX_B | REX_X | REX_R | REX_W | PRE_OS | PRE_AS,
};

enum Modes
{
	RM        = 0, // 00
	RM_disp8  = 1, // 01
	RM_disp32 = 2, // 10
	RM_regs   = 3  // 11
};


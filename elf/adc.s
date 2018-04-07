/*
AL		8		0.000 (0)	
DL		8		0.010 (2)	
CL		8		0.001 (1)	
BL*		8		0.011 (3)	
AH		8		0.100 (4)	When any REX prefix is used, SPL. Else, AH.
CH		8		0.101 (5)	When any REX prefix is used, BPL. Else, CH.
DH*		8		0.110 (6)	When any REX prefix is used, SIL. Else, DH.
BH		8		0.111 (7)	When any REX prefix is used, DIL. Else, BH.
SPL		8		0.100 (4)	When any REX prefix is used, SPL. Else, AH.
BPL		8		0.101 (5)	When any REX prefix is used, BPL. Else, CH.
SIL*	8		0.110 (6)	When any REX prefix is used, SIL. Else, DH.
DIL		8		0.111 (7)	When any REX prefix is used, DIL. Else, BH.
R8B		8		1.000 (8)	
R9B*	8		1.001 (9)	
R10B	8		1.010 (10)	
R11B	8		1.011 (11)	
R12B	8		1.100 (12)	
R13B*	8		1.101 (13)	
R14B	8		1.110 (14)	
R15B	8		1.111 (15)	

AX		16		0.000 (0)	
CX		16		0.001 (1)	
DX		16		0.010 (2)	
BX*		16		0.011 (3)	
SP		16		0.100 (4)	
BP		16		0.101 (5)	
SI*		16		0.110 (6)	
DI		16		0.111 (7)	
R8W		16		1.000 (8)	
R9W*	16		1.001 (9)	
R10W	16		1.010 (10)	
R11W	16		1.011 (11)	
R12W	16		1.100 (12)	
R13W*	16		1.101 (13)	
R14W	16		1.110 (14)	
R15W	16		1.111 (15)	

EAX		32		0.000 (0)	
ECX		32		0.001 (1)	
EDX 	32		0.010 (2)	
EBX*	32		0.011 (3)	
ESP		32		0.100 (4)	
EBP		32		0.101 (5)	
ESI*	32		0.110 (6)	
EDI		32		0.111 (7)	
R8D		32		1.000 (8)	
R9D*	32		1.001 (9)	
R10D	32		1.010 (10)	
R11D	32		1.011 (11)	
R12D	32		1.100 (12)	
R13D*	32		1.101 (13)	
R14D	32		1.110 (14)	
R15D	32		1.111 (15)	

RAX		64	 (Index/Base)	0.000 (0)	
RCX		64	 (Index/Base)	0.001 (1)	
RDX		64	 (Index/Base)	0.010 (2)	
RBX*	64	 (Index/Base)	0.011 (3)	
RSP		64	 (Base)			0.100 (4)	
RBP		64	 (Index/Base)	0.101 (5)	
RSI*	64	 (Index/Base)	0.110 (6)	
RDI		64	 (Index/Base)	0.111 (7)	
R8		64	 (Index/Base)	1.000 (8)	Index/Base register when REX.X/B
R9*		64	 (Index/Base)	1.001 (9)	Index register when REX.X/B
R10		64	 (Index/Base)	1.010 (10)	Index register when REX.X/B
R11		64	 (Index/Base)	1.011 (11)	Index register when REX.X/B
R12		64	 (Index/Base)	1.100 (12)	Index register when REX.X/B
R13*	64	 (Index/Base)	1.101 (13)	Index register when REX.X/B
R14		64	 (Index/Base)	1.110 (14)	Index register when REX.X/B
R15		64	 (Index/Base)	1.111 (15)	Index register when REX.X/B
*/

//////////////////////////////////////////////////////////////
// imm to reg
//////////////////////////////////////////////////////////////
// 64-bit

// 48 11 1c 25 e8 03 00 00    : 0001 1100, 00 011 100
adc %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
adc %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
adc %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
adc %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
adc %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
adc %esi,0x3e8
// 11 34 25 e8 03 00 00 	
adc %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
adc %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
adc %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
adc %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
adc %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
adc %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
adc %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
adc %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
adc %bl,0x3e8
// 
adc %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
adc %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
adc %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
adc %r13b,0x3e8

adc %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

adc %bl,(%ebx)
adc %dh,0x14(%ebx)
adc %sil,0x2814(%ebx)
adc %r9b,0x792814(%ebx)
adc %r13b,0x7b792814(%ebx)

adc %bx,0x14(%ebx)
adc %si,0x14(%ebx)
adc %r9w,0x14(%ebx)
adc %r13w,0x14(%ebx)

adc %ebx,0x14(%ebx)
adc %esi,0x14(%ebx)
adc %r9d,0x14(%ebx)
adc %r13d,0x14(%ebx)

adc %rbx,0x14(%ebx)
adc %rsi,0x14(%ebx)
adc %r9,0x14(%ebx)
adc %r13,0x14(%ebx)

adc %bl,0x14(%esi)
adc %dh,0x14(%esi)
adc %sil,0x14(%esi)
adc %r9b,0x14(%esi)
adc %r13b,0x14(%esi)

adc %bx,0x14(%esi)
adc %si,0x14(%esi)
adc %r9w,0x14(%esi)
adc %r13w,0x14(%esi)

adc %ebx,0x14(%esi)
adc %esi,0x14(%esi)
adc %r9d,0x14(%esi)
adc %r13d,0x14(%esi)

adc %rbx,0x14(%esi)
adc %rsi,0x14(%esi)
adc %r9,0x14(%esi)
adc %r13,0x14(%esi)

adc %bl,0x14(%r9d)
// adc %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
adc %sil,0x14(%r9d)
adc %r9b,0x14(%r9d)
adc %r13b,0x14(%r9d)

adc %bx,0x14(%r9d)
adc %si,0x14(%r9d)
adc %r9w,0x14(%r9d)
adc %r13w,0x14(%r9d)

adc %ebx,0x14(%r9d)
adc %esi,0x14(%r9d)
adc %r9d,0x14(%r9d)
adc %r13d,0x14(%r9d)

adc %rbx,0x14(%r9d)
adc %rsi,0x14(%r9d)
adc %r9,0x14(%r9d)
adc %r13,0x14(%r9d)

adc %bl,0x14(%r13d)
// adc %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
adc %sil,0x14(%r13d)
adc %r9b,0x14(%r13d)
adc %r13b,0x14(%r13d)

adc %bx,0x14(%r13d)
adc %si,0x14(%r13d)
adc %r9w,0x14(%r13d)
adc %r13w,0x14(%r13d)

adc %ebx,0x14(%r13d)
adc %esi,0x14(%r13d)
adc %r9d,0x14(%r13d)
adc %r13d,0x14(%r13d)

adc %rbx,0x14(%r13d)
adc %rsi,0x14(%r13d)
adc %r9,0x14(%r13d)
adc %r13,0x14(%r13d)

// -----------------

adc %bl,0x14(%rbx)
adc %dh,0x14(%rbx)
adc %sil,0x14(%rbx)
adc %r9b,0x14(%rbx)
adc %r13b,0x14(%rbx)

adc %bx,0x14(%rbx)
adc %si,0x14(%rbx)
adc %r9w,0x14(%rbx)
adc %r13w,0x14(%rbx)

adc %ebx,0x14(%rbx)
adc %esi,0x14(%rbx)
adc %r9d,0x14(%rbx)
adc %r13d,0x14(%rbx)

adc %rbx,0x14(%rbx)
adc %rsi,0x14(%rbx)
adc %r9,0x14(%rbx)
adc %r13,0x14(%rbx)

adc %bl,0x14(%rsi)
adc %dh,0x14(%rsi)
adc %sil,0x14(%rsi)
adc %r9b,0x14(%rsi)
adc %r13b,0x14(%rsi)

adc %bx,0x14(%rsi)
adc %si,0x14(%rsi)
adc %r9w,0x14(%rsi)
adc %r13w,0x14(%rsi)

adc %ebx,0x14(%rsi)
adc %esi,0x14(%rsi)
adc %r9d,0x14(%rsi)
adc %r13d,0x14(%rsi)

adc %rbx,0x14(%rsi)
adc %rsi,0x14(%rsi)
adc %r9,0x14(%rsi)
adc %r13,0x14(%rsi)

adc %bl,0x14(%r9)
// adc %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
adc %sil,0x14(%r9)
adc %r9b,0x14(%r9)
adc %r13b,0x14(%r9)

adc %bx,0x14(%r9)
adc %si,0x14(%r9)
adc %r9w,0x14(%r9)
adc %r13w,0x14(%r9)

adc %ebx,0x14(%r9)
adc %esi,0x14(%r9)
adc %r9d,0x14(%r9)
adc %r13d,0x14(%r9)

adc %rbx,0x14(%r9)
adc %rsi,0x14(%r9)
adc %r9,0x14(%r9)
adc %r13,0x14(%r9)

adc %bl,0x14(%r13)
// adc %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
adc %sil,0x14(%r13)
adc %r9b,0x14(%r13)
adc %r13b,0x14(%r13)

adc %bx,0x14(%r13)
adc %si,0x14(%r13)
adc %r9w,0x14(%r13)
adc %r13w,0x14(%r13)

adc %ebx,0x14(%r13)
adc %esi,0x14(%r13)
adc %r9d,0x14(%r13)
adc %r13d,0x14(%r13)

adc %rbx,0x14(%r13)
adc %rsi,0x14(%r13)
adc %r9,0x14(%r13)
adc %r13,0x14(%r13)

// adc %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


adc %bl,0x14(%ebx,%esi)
adc %dh,0x2214(%ebx,%esi,2)
adc %sil,0x432214(%ebx,%esi,4)
adc %r9b,0x69432214(%esi,%ebx,8)
adc %r13b,(%esi,%ebx,1)

adc %bl,0x14(%ebx,%r9d,4)
//adc %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
adc %sil,0x432214(%ebx,%r9d,4)
adc %r9b,0x69432214(%ebx,%r9d,4)
adc %r13b,(%ebx,%r9d,4)

adc %bl,0x14(%ebx,%r13d,4)
//adc %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
adc %sil,0x432214(%ebx,%r13d,4)
adc %r9b,0x69432214(%ebx,%r13d,4)
adc %r13b,(%ebx,%r13d,4)

adc %bx,0x14(%ebx,%esi,4)
adc %si,0x432214(%ebx,%esi,4)
adc %r9w,0x69432214(%esi,%ebx,4)
adc %r13w,(%esi,%ebx,4)

adc %bx,0x14(%ebx,%r9d,4)
adc %si,0x432214(%ebx,%r9d,4)
adc %r9w,0x69432214(%ebx,%r9d,4)
adc %r13w,(%ebx,%r9d,4)

adc %bx,0x14(%ebx,%r13d,4)
adc %si,0x432214(%ebx,%r13d,4)
adc %r9w,0x69432214(%ebx,%r13d,4)
adc %r13w,(%ebx,%r13d,4)

adc %ebx,0x14(%ebx,%esi,4)
adc %esi,0x432214(%ebx,%esi,4)
adc %r9d,0x69432214(%esi,%ebx,4)
adc %r13d,(%esi,%ebx,4)

adc %ebx,0x14(%ebx,%r9d,4)
adc %esi,0x432214(%ebx,%r9d,4)
adc %r9d,0x69432214(%ebx,%r9d,4)
adc %r13d,(%ebx,%r9d,4)

adc %ebx,0x14(%ebx,%r13d,4)
adc %esi,0x432214(%ebx,%r13d,4)
adc %r9d,0x69432214(%ebx,%r13d,4)
adc %r13d,(%ebx,%r13d,4)

adc %rbx,0x14(%ebx,%esi,4)
adc %rsi,0x432214(%ebx,%esi,4)
adc %r9,0x69432214(%esi,%ebx,4)
adc %r13,(%esi,%ebx,4)

adc %rbx,0x14(%ebx,%r9d,4)
adc %rsi,0x432214(%ebx,%r9d,4)
adc %r9,0x69432214(%ebx,%r9d,4)
adc %r13,(%ebx,%r9d,4)

adc %rbx,0x14(%ebx,%r13d,4)
adc %rsi,0x432214(%ebx,%r13d,4)
adc %r9,0x69432214(%ebx,%r13d,4)
adc %r13,(%ebx,%r13d,4)

adc %rbx,0x14(%r9d,%r13d,4)
adc %rsi,0x432214(%r9d,%r13d,4)
adc %r9,0x69432214(%r9d,%r13d,4)
adc %r13,(%r9d,%r13d,4)


adc %bl,0x14(%rbx,%rsi)
adc %dh,0x2214(%rbx,%rsi,2)
adc %sil,0x432214(%rbx,%rsi,4)
adc %r9b,0x69432214(%rsi,%rbx,8)
adc %r13b,(%rsi,%rbx,1)

adc %bl,0x14(%rbx,%r9,4)
//adc %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
adc %sil,0x432214(%rbx,%r9,4)
adc %r9b,0x69432214(%rbx,%r9,4)
adc %r13b,(%rbx,%r9,4)

adc %bl,0x14(%rbx,%r13,4)
//adc %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
adc %sil,0x432214(%rbx,%r13,4)
adc %r9b,0x69432214(%rbx,%r13,4)
adc %r13b,(%rbx,%r13,4)

adc %bx,0x14(%rbx,%rsi,4)
adc %si,0x432214(%rbx,%rsi,4)
adc %r9w,0x69432214(%rsi,%rbx,4)
adc %r13w,(%rsi,%rbx,4)

adc %bx,0x14(%rbx,%r9,4)
adc %si,0x432214(%rbx,%r9,4)
adc %r9w,0x69432214(%rbx,%r9,4)
adc %r13w,(%rbx,%r9,4)

adc %bx,0x14(%rbx,%r13,4)
adc %si,0x432214(%rbx,%r13,4)
adc %r9w,0x69432214(%rbx,%r13,4)
adc %r13w,(%rbx,%r13,4)

adc %ebx,0x14(%rbx,%rsi,4)
adc %esi,0x432214(%rbx,%rsi,4)
adc %r9d,0x69432214(%rsi,%rbx,4)
adc %r13d,(%rsi,%rbx,4)

adc %ebx,0x14(%rbx,%r9,4)
adc %esi,0x432214(%rbx,%r9,4)
adc %r9d,0x69432214(%rbx,%r9,4)
adc %r13d,(%rbx,%r9,4)

adc %ebx,0x14(%rbx,%r13,4)
adc %esi,0x432214(%rbx,%r13,4)
adc %r9d,0x69432214(%rbx,%r13,4)
adc %r13d,(%rbx,%r13,4)

adc %rbx,0x14(%rbx,%rsi,4)
adc %rsi,0x432214(%rbx,%rsi,4)
adc %r9,0x69432214(%rsi,%rbx,4)
adc %r13,(%rsi,%rbx,4)

adc %rbx,0x14(%rbx,%r9,4)
adc %rsi,0x432214(%rbx,%r9,4)
adc %r9,0x69432214(%rbx,%r9,4)
adc %r13,(%rbx,%r9,4)

adc %rbx,0x14(%rbx,%r13,4)
adc %rsi,0x432214(%rbx,%r13,4)
adc %r9,0x69432214(%rbx,%r13,4)
adc %r13,(%rbx,%r13,4)

adc %rbx,0x14(%r9,%r13,4)
adc %rsi,0x432214(%r9,%r13,4)
adc %r9,0x69432214(%r9,%r13,4)
adc %r13,(%r9,%r13,4)

adc %r13,(%rbx,%r13,4)
adc %r13,(%r9,%rbx,4)

adc %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

adc (%ebx),%bl
adc 0x14(%ebx),%dh
adc 0x2814(%ebx),%sil
adc 0x792814(%ebx),%r9b
adc 0x7b792814(%ebx),%r13b

adc 0x14(%ebx),%bx
adc 0x14(%ebx),%si
adc 0x14(%ebx),%r9w
adc 0x14(%ebx),%r13w

adc 0x14(%ebx),%ebx
adc 0x14(%ebx),%esi
adc 0x14(%ebx),%r9d
adc 0x14(%ebx),%r13d

adc 0x14(%ebx),%rbx
adc 0x14(%ebx),%rsi
adc 0x14(%ebx),%r9
adc 0x14(%ebx),%r13

adc 0x14(%esi),%bl
adc 0x14(%esi),%dh
adc 0x14(%esi),%sil
adc 0x14(%esi),%r9b
adc 0x14(%esi),%r13b

adc 0x14(%esi),%bx
adc 0x14(%esi),%si
adc 0x14(%esi),%r9w
adc 0x14(%esi),%r13w

adc 0x14(%esi),%ebx
adc 0x14(%esi),%esi
adc 0x14(%esi),%r9d
adc 0x14(%esi),%r13d

adc 0x14(%esi),%rbx
adc 0x14(%esi),%rsi
adc 0x14(%esi),%r9
adc 0x14(%esi),%r13

adc 0x14(%r9d),%bl
// adc 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
adc 0x14(%r9d),%sil
adc 0x14(%r9d),%r9b
adc 0x14(%r9d),%r13b

adc 0x14(%r9d),%bx
adc 0x14(%r9d),%si
adc 0x14(%r9d),%r9w
adc 0x14(%r9d),%r13w

adc 0x14(%r9d),%ebx
adc 0x14(%r9d),%esi
adc 0x14(%r9d),%r9d
adc 0x14(%r9d),%r13d

adc 0x14(%r9d),%rbx
adc 0x14(%r9d),%rsi
adc 0x14(%r9d),%r9
adc 0x14(%r9d),%r13

adc 0x14(%r13d),%bl
// adc 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
adc 0x14(%r13d),%sil
adc 0x14(%r13d),%r9b
adc 0x14(%r13d),%r13b

adc 0x14(%r13d),%bx
adc 0x14(%r13d),%si
adc 0x14(%r13d),%r9w
adc 0x14(%r13d),%r13w

adc 0x14(%r13d),%ebx
adc 0x14(%r13d),%esi
adc 0x14(%r13d),%r9d
adc 0x14(%r13d),%r13d

adc 0x14(%r13d),%rbx
adc 0x14(%r13d),%rsi
adc 0x14(%r13d),%r9
adc 0x14(%r13d),%r13

// -----------------

adc 0x14(%rbx),%bl
adc 0x14(%rbx),%dh
adc 0x14(%rbx),%sil
adc 0x14(%rbx),%r9b
adc 0x14(%rbx),%r13b

adc 0x14(%rbx),%bx
adc 0x14(%rbx),%si
adc 0x14(%rbx),%r9w
adc 0x14(%rbx),%r13w

adc 0x14(%rbx),%ebx
adc 0x14(%rbx),%esi
adc 0x14(%rbx),%r9d
adc 0x14(%rbx),%r13d

adc 0x14(%rbx),%rbx
adc 0x14(%rbx),%rsi
adc 0x14(%rbx),%r9
adc 0x14(%rbx),%r13

adc 0x14(%rsi),%bl
adc 0x14(%rsi),%dh
adc 0x14(%rsi),%sil
adc 0x14(%rsi),%r9b
adc 0x14(%rsi),%r13b

adc 0x14(%rsi),%bx
adc 0x14(%rsi),%si
adc 0x14(%rsi),%r9w
adc 0x14(%rsi),%r13w

adc 0x14(%rsi),%ebx
adc 0x14(%rsi),%esi
adc 0x14(%rsi),%r9d
adc 0x14(%rsi),%r13d

adc 0x14(%rsi),%rbx
adc 0x14(%rsi),%rsi
adc 0x14(%rsi),%r9
adc 0x14(%rsi),%r13

adc 0x14(%r9),%bl
// adc 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
adc 0x14(%r9),%sil
adc 0x14(%r9),%r9b
adc 0x14(%r9),%r13b

adc 0x14(%r9),%bx
adc 0x14(%r9),%si
adc 0x14(%r9),%r9w
adc 0x14(%r9),%r13w

adc 0x14(%r9),%ebx
adc 0x14(%r9),%esi
adc 0x14(%r9),%r9d
adc 0x14(%r9),%r13d

adc 0x14(%r9),%rbx
adc 0x14(%r9),%rsi
adc 0x14(%r9),%r9
adc 0x14(%r9),%r13

adc 0x14(%r13),%bl
// adc 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
adc 0x14(%r13),%sil
adc 0x14(%r13),%r9b
adc 0x14(%r13),%r13b

adc 0x14(%r13),%bx
adc 0x14(%r13),%si
adc 0x14(%r13),%r9w
adc 0x14(%r13),%r13w

adc 0x14(%r13),%ebx
adc 0x14(%r13),%esi
adc 0x14(%r13),%r9d
adc 0x14(%r13),%r13d

adc 0x14(%r13),%rbx
adc 0x14(%r13),%rsi
adc 0x14(%r13),%r9
adc 0x14(%r13),%r13

// adc 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


adc 0x14(%ebx,%esi),%bl
adc 0x2214(%ebx,%esi,2),%dh
adc 0x432214(%ebx,%esi,4),%sil
adc 0x69432214(%esi,%ebx,8),%r9b
adc (%esi,%ebx,1),%r13b

adc 0x14(%ebx,%r9d,4),%bl
//adc 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
adc 0x432214(%ebx,%r9d,4),%sil
adc 0x69432214(%ebx,%r9d,4),%r9b
adc (%ebx,%r9d,4),%r13b

adc 0x14(%ebx,%r13d,4),%bl
//adc 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
adc 0x432214(%ebx,%r13d,4),%sil
adc 0x69432214(%ebx,%r13d,4),%r9b
adc (%ebx,%r13d,4),%r13b

adc 0x14(%ebx,%esi,4),%bx
adc 0x432214(%ebx,%esi,4),%si
adc 0x69432214(%esi,%ebx,4),%r9w
adc (%esi,%ebx,4),%r13w

adc 0x14(%ebx,%r9d,4),%bx
adc 0x432214(%ebx,%r9d,4),%si
adc 0x69432214(%ebx,%r9d,4),%r9w
adc (%ebx,%r9d,4),%r13w

adc 0x14(%ebx,%r13d,4),%bx
adc 0x432214(%ebx,%r13d,4),%si
adc 0x69432214(%ebx,%r13d,4),%r9w
adc (%ebx,%r13d,4),%r13w

adc 0x14(%ebx,%esi,4),%ebx
adc 0x432214(%ebx,%esi,4),%esi
adc 0x69432214(%esi,%ebx,4),%r9d
adc (%esi,%ebx,4),%r13d

adc 0x14(%ebx,%r9d,4),%ebx
adc 0x432214(%ebx,%r9d,4),%esi
adc 0x69432214(%ebx,%r9d,4),%r9d
adc (%ebx,%r9d,4),%r13d

adc 0x14(%ebx,%r13d,4),%ebx
adc 0x432214(%ebx,%r13d,4),%esi
adc 0x69432214(%ebx,%r13d,4),%r9d
adc (%ebx,%r13d,4),%r13d

adc 0x14(%ebx,%esi,4),%rbx
adc 0x432214(%ebx,%esi,4),%rsi
adc 0x69432214(%esi,%ebx,4),%r9
adc (%esi,%ebx,4),%r13

adc 0x14(%ebx,%r9d,4),%rbx
adc 0x432214(%ebx,%r9d,4),%rsi
adc 0x69432214(%ebx,%r9d,4),%r9
adc (%ebx,%r9d,4),%r13

adc 0x14(%ebx,%r13d,4),%rbx
adc 0x432214(%ebx,%r13d,4),%rsi
adc 0x69432214(%ebx,%r13d,4),%r9
adc (%ebx,%r13d,4),%r13

adc 0x14(%r9d,%r13d,4),%rbx
adc 0x432214(%r9d,%r13d,4),%rsi
adc 0x69432214(%r9d,%r13d,4),%r9
adc (%r9d,%r13d,4),%r13


adc 0x14(%rbx,%rsi),%bl
adc 0x2214(%rbx,%rsi,2),%dh
adc 0x432214(%rbx,%rsi,4),%sil
adc 0x69432214(%rsi,%rbx,8),%r9b
adc (%rsi,%rbx,1),%r13b

adc 0x14(%rbx,%r9,4),%bl
//adc 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
adc 0x432214(%rbx,%r9,4),%sil
adc 0x69432214(%rbx,%r9,4),%r9b
adc (%rbx,%r9,4),%r13b

adc 0x14(%rbx,%r13,4),%bl
//adc 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
adc 0x432214(%rbx,%r13,4),%sil
adc 0x69432214(%rbx,%r13,4),%r9b
adc (%rbx,%r13,4),%r13b

adc 0x14(%rbx,%rsi,4),%bx
adc 0x432214(%rbx,%rsi,4),%si
adc 0x69432214(%rsi,%rbx,4),%r9w
adc (%rsi,%rbx,4),%r13w

adc 0x14(%rbx,%r9,4),%bx
adc 0x432214(%rbx,%r9,4),%si
adc 0x69432214(%rbx,%r9,4),%r9w
adc (%rbx,%r9,4),%r13w

adc 0x14(%rbx,%r13,4),%bx
adc 0x432214(%rbx,%r13,4),%si
adc 0x69432214(%rbx,%r13,4),%r9w
adc (%rbx,%r13,4),%r13w

adc 0x14(%rbx,%rsi,4),%ebx
adc 0x432214(%rbx,%rsi,4),%esi
adc 0x69432214(%rsi,%rbx,4),%r9d
adc (%rsi,%rbx,4),%r13d

adc 0x14(%rbx,%r9,4),%ebx
adc 0x432214(%rbx,%r9,4),%esi
adc 0x69432214(%rbx,%r9,4),%r9d
adc (%rbx,%r9,4),%r13d

adc 0x14(%rbx,%r13,4),%ebx
adc 0x432214(%rbx,%r13,4),%esi
adc 0x69432214(%rbx,%r13,4),%r9d
adc (%rbx,%r13,4),%r13d

adc 0x14(%rbx,%rsi,4),%rbx
adc 0x432214(%rbx,%rsi,4),%rsi
adc 0x69432214(%rsi,%rbx,4),%r9
adc (%rsi,%rbx,4),%r13

adc 0x14(%rbx,%r9,4),%rbx
adc 0x432214(%rbx,%r9,4),%rsi
adc 0x69432214(%rbx,%r9,4),%r9
adc (%rbx,%r9,4),%r13

adc 0x14(%rbx,%r13,4),%rbx
adc 0x432214(%rbx,%r13,4),%rsi
adc 0x69432214(%rbx,%r13,4),%r9
adc (%rbx,%r13,4),%r13

adc 0x14(%r9,%r13,4),%rbx
adc 0x432214(%r9,%r13,4),%rsi
adc 0x69432214(%r9,%r13,4),%r9
adc (%r9,%r13,4),%r13

adc (%rbx,%r13,4),%r13
adc (%r9,%rbx,4),%r13

adc (%rbx,%r13,4),%r13w
adc (%r9,%rbx,4),%r13w

adc (%rbx,%r13,4),%r13
adc (%r9,%rbx,4),%r13

adc (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

adc %bl, %bl
adc %dh, %bl
adc %sil, %bl
adc %r9b, %bl
adc %r13b, %bl

adc %bl, %dh
adc %dh, %dh
//adc %sil, %dh		ah-dh and REX error
//adc %r9b, %dh
//adc %r13b, %dh

adc %bl, %sil
//adc %dh, %sil		ah-dh and REX error
adc %sil, %sil
adc %r9b, %sil
adc %r13b, %sil

adc %bl, %r9b
//adc %dh, %r9b		ah,bh,ch,dh and REX error
adc %sil, %r9b
adc %r9b, %r9b
adc %r13b, %r9b

adc %bl, %r13b
//adc %dh, %r13b	ah,bh,ch,dh and REX error
adc %sil, %r13b
adc %r9b, %r13b
adc %r13b, %r13b

adc %bx, %bx
adc %si, %bx
adc %r9w, %bx
adc %r13w, %bx

adc %bx, %si
adc %si, %si
adc %r9w, %si
adc %r13w, %si

adc %bx, %r9w
adc %si, %r9w
adc %r9w, %r9w
adc %r13w, %r9w

adc %bx, %r13w
adc %si, %r13w
adc %r9w, %r13w
adc %r13w, %r13w

adc %ebx, %ebx
adc %esi, %ebx
adc %r9d, %ebx
adc %r13d, %ebx

adc %ebx, %esi
adc %esi, %esi
adc %r9d, %esi
adc %r13d, %esi

adc %ebx, %r9d
adc %esi, %r9d
adc %r9d, %r9d
adc %r13d, %r9d

adc %ebx, %r13d
adc %esi, %r13d
adc %r9d, %r13d
adc %r13d, %r13d

adc %rbx, %rbx
adc %rsi, %rbx
adc %r9, %rbx
adc %r13, %rbx

adc %rbx, %rsi
adc %rsi, %rsi
adc %r9, %rsi
adc %r13, %rsi

adc %rbx, %r9
adc %rsi, %r9
adc %r9, %r9
adc %r13, %r9

adc %rbx, %r13
adc %rsi, %r13
adc %r9, %r13
adc %r13, %r13


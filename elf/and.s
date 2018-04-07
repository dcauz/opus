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
and %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
and %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
and %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
and %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
and %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
and %esi,0x3e8
// 11 34 25 e8 03 00 00 	
and %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
and %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
and %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
and %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
and %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
and %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
and %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
and %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
and %bl,0x3e8
// 
and %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
and %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
and %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
and %r13b,0x3e8

and %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

and %bl,(%ebx)
and %dh,0x14(%ebx)
and %sil,0x2814(%ebx)
and %r9b,0x792814(%ebx)
and %r13b,0x7b792814(%ebx)

and %bx,0x14(%ebx)
and %si,0x14(%ebx)
and %r9w,0x14(%ebx)
and %r13w,0x14(%ebx)

and %ebx,0x14(%ebx)
and %esi,0x14(%ebx)
and %r9d,0x14(%ebx)
and %r13d,0x14(%ebx)

and %rbx,0x14(%ebx)
and %rsi,0x14(%ebx)
and %r9,0x14(%ebx)
and %r13,0x14(%ebx)

and %bl,0x14(%esi)
and %dh,0x14(%esi)
and %sil,0x14(%esi)
and %r9b,0x14(%esi)
and %r13b,0x14(%esi)

and %bx,0x14(%esi)
and %si,0x14(%esi)
and %r9w,0x14(%esi)
and %r13w,0x14(%esi)

and %ebx,0x14(%esi)
and %esi,0x14(%esi)
and %r9d,0x14(%esi)
and %r13d,0x14(%esi)

and %rbx,0x14(%esi)
and %rsi,0x14(%esi)
and %r9,0x14(%esi)
and %r13,0x14(%esi)

and %bl,0x14(%r9d)
// and %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
and %sil,0x14(%r9d)
and %r9b,0x14(%r9d)
and %r13b,0x14(%r9d)

and %bx,0x14(%r9d)
and %si,0x14(%r9d)
and %r9w,0x14(%r9d)
and %r13w,0x14(%r9d)

and %ebx,0x14(%r9d)
and %esi,0x14(%r9d)
and %r9d,0x14(%r9d)
and %r13d,0x14(%r9d)

and %rbx,0x14(%r9d)
and %rsi,0x14(%r9d)
and %r9,0x14(%r9d)
and %r13,0x14(%r9d)

and %bl,0x14(%r13d)
// and %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
and %sil,0x14(%r13d)
and %r9b,0x14(%r13d)
and %r13b,0x14(%r13d)

and %bx,0x14(%r13d)
and %si,0x14(%r13d)
and %r9w,0x14(%r13d)
and %r13w,0x14(%r13d)

and %ebx,0x14(%r13d)
and %esi,0x14(%r13d)
and %r9d,0x14(%r13d)
and %r13d,0x14(%r13d)

and %rbx,0x14(%r13d)
and %rsi,0x14(%r13d)
and %r9,0x14(%r13d)
and %r13,0x14(%r13d)

// -----------------

and %bl,0x14(%rbx)
and %dh,0x14(%rbx)
and %sil,0x14(%rbx)
and %r9b,0x14(%rbx)
and %r13b,0x14(%rbx)

and %bx,0x14(%rbx)
and %si,0x14(%rbx)
and %r9w,0x14(%rbx)
and %r13w,0x14(%rbx)

and %ebx,0x14(%rbx)
and %esi,0x14(%rbx)
and %r9d,0x14(%rbx)
and %r13d,0x14(%rbx)

and %rbx,0x14(%rbx)
and %rsi,0x14(%rbx)
and %r9,0x14(%rbx)
and %r13,0x14(%rbx)

and %bl,0x14(%rsi)
and %dh,0x14(%rsi)
and %sil,0x14(%rsi)
and %r9b,0x14(%rsi)
and %r13b,0x14(%rsi)

and %bx,0x14(%rsi)
and %si,0x14(%rsi)
and %r9w,0x14(%rsi)
and %r13w,0x14(%rsi)

and %ebx,0x14(%rsi)
and %esi,0x14(%rsi)
and %r9d,0x14(%rsi)
and %r13d,0x14(%rsi)

and %rbx,0x14(%rsi)
and %rsi,0x14(%rsi)
and %r9,0x14(%rsi)
and %r13,0x14(%rsi)

and %bl,0x14(%r9)
// and %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
and %sil,0x14(%r9)
and %r9b,0x14(%r9)
and %r13b,0x14(%r9)

and %bx,0x14(%r9)
and %si,0x14(%r9)
and %r9w,0x14(%r9)
and %r13w,0x14(%r9)

and %ebx,0x14(%r9)
and %esi,0x14(%r9)
and %r9d,0x14(%r9)
and %r13d,0x14(%r9)

and %rbx,0x14(%r9)
and %rsi,0x14(%r9)
and %r9,0x14(%r9)
and %r13,0x14(%r9)

and %bl,0x14(%r13)
// and %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
and %sil,0x14(%r13)
and %r9b,0x14(%r13)
and %r13b,0x14(%r13)

and %bx,0x14(%r13)
and %si,0x14(%r13)
and %r9w,0x14(%r13)
and %r13w,0x14(%r13)

and %ebx,0x14(%r13)
and %esi,0x14(%r13)
and %r9d,0x14(%r13)
and %r13d,0x14(%r13)

and %rbx,0x14(%r13)
and %rsi,0x14(%r13)
and %r9,0x14(%r13)
and %r13,0x14(%r13)

// and %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


and %bl,0x14(%ebx,%esi)
and %dh,0x2214(%ebx,%esi,2)
and %sil,0x432214(%ebx,%esi,4)
and %r9b,0x69432214(%esi,%ebx,8)
and %r13b,(%esi,%ebx,1)

and %bl,0x14(%ebx,%r9d,4)
//and %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
and %sil,0x432214(%ebx,%r9d,4)
and %r9b,0x69432214(%ebx,%r9d,4)
and %r13b,(%ebx,%r9d,4)

and %bl,0x14(%ebx,%r13d,4)
//and %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
and %sil,0x432214(%ebx,%r13d,4)
and %r9b,0x69432214(%ebx,%r13d,4)
and %r13b,(%ebx,%r13d,4)

and %bx,0x14(%ebx,%esi,4)
and %si,0x432214(%ebx,%esi,4)
and %r9w,0x69432214(%esi,%ebx,4)
and %r13w,(%esi,%ebx,4)

and %bx,0x14(%ebx,%r9d,4)
and %si,0x432214(%ebx,%r9d,4)
and %r9w,0x69432214(%ebx,%r9d,4)
and %r13w,(%ebx,%r9d,4)

and %bx,0x14(%ebx,%r13d,4)
and %si,0x432214(%ebx,%r13d,4)
and %r9w,0x69432214(%ebx,%r13d,4)
and %r13w,(%ebx,%r13d,4)

and %ebx,0x14(%ebx,%esi,4)
and %esi,0x432214(%ebx,%esi,4)
and %r9d,0x69432214(%esi,%ebx,4)
and %r13d,(%esi,%ebx,4)

and %ebx,0x14(%ebx,%r9d,4)
and %esi,0x432214(%ebx,%r9d,4)
and %r9d,0x69432214(%ebx,%r9d,4)
and %r13d,(%ebx,%r9d,4)

and %ebx,0x14(%ebx,%r13d,4)
and %esi,0x432214(%ebx,%r13d,4)
and %r9d,0x69432214(%ebx,%r13d,4)
and %r13d,(%ebx,%r13d,4)

and %rbx,0x14(%ebx,%esi,4)
and %rsi,0x432214(%ebx,%esi,4)
and %r9,0x69432214(%esi,%ebx,4)
and %r13,(%esi,%ebx,4)

and %rbx,0x14(%ebx,%r9d,4)
and %rsi,0x432214(%ebx,%r9d,4)
and %r9,0x69432214(%ebx,%r9d,4)
and %r13,(%ebx,%r9d,4)

and %rbx,0x14(%ebx,%r13d,4)
and %rsi,0x432214(%ebx,%r13d,4)
and %r9,0x69432214(%ebx,%r13d,4)
and %r13,(%ebx,%r13d,4)

and %rbx,0x14(%r9d,%r13d,4)
and %rsi,0x432214(%r9d,%r13d,4)
and %r9,0x69432214(%r9d,%r13d,4)
and %r13,(%r9d,%r13d,4)


and %bl,0x14(%rbx,%rsi)
and %dh,0x2214(%rbx,%rsi,2)
and %sil,0x432214(%rbx,%rsi,4)
and %r9b,0x69432214(%rsi,%rbx,8)
and %r13b,(%rsi,%rbx,1)

and %bl,0x14(%rbx,%r9,4)
//and %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
and %sil,0x432214(%rbx,%r9,4)
and %r9b,0x69432214(%rbx,%r9,4)
and %r13b,(%rbx,%r9,4)

and %bl,0x14(%rbx,%r13,4)
//and %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
and %sil,0x432214(%rbx,%r13,4)
and %r9b,0x69432214(%rbx,%r13,4)
and %r13b,(%rbx,%r13,4)

and %bx,0x14(%rbx,%rsi,4)
and %si,0x432214(%rbx,%rsi,4)
and %r9w,0x69432214(%rsi,%rbx,4)
and %r13w,(%rsi,%rbx,4)

and %bx,0x14(%rbx,%r9,4)
and %si,0x432214(%rbx,%r9,4)
and %r9w,0x69432214(%rbx,%r9,4)
and %r13w,(%rbx,%r9,4)

and %bx,0x14(%rbx,%r13,4)
and %si,0x432214(%rbx,%r13,4)
and %r9w,0x69432214(%rbx,%r13,4)
and %r13w,(%rbx,%r13,4)

and %ebx,0x14(%rbx,%rsi,4)
and %esi,0x432214(%rbx,%rsi,4)
and %r9d,0x69432214(%rsi,%rbx,4)
and %r13d,(%rsi,%rbx,4)

and %ebx,0x14(%rbx,%r9,4)
and %esi,0x432214(%rbx,%r9,4)
and %r9d,0x69432214(%rbx,%r9,4)
and %r13d,(%rbx,%r9,4)

and %ebx,0x14(%rbx,%r13,4)
and %esi,0x432214(%rbx,%r13,4)
and %r9d,0x69432214(%rbx,%r13,4)
and %r13d,(%rbx,%r13,4)

and %rbx,0x14(%rbx,%rsi,4)
and %rsi,0x432214(%rbx,%rsi,4)
and %r9,0x69432214(%rsi,%rbx,4)
and %r13,(%rsi,%rbx,4)

and %rbx,0x14(%rbx,%r9,4)
and %rsi,0x432214(%rbx,%r9,4)
and %r9,0x69432214(%rbx,%r9,4)
and %r13,(%rbx,%r9,4)

and %rbx,0x14(%rbx,%r13,4)
and %rsi,0x432214(%rbx,%r13,4)
and %r9,0x69432214(%rbx,%r13,4)
and %r13,(%rbx,%r13,4)

and %rbx,0x14(%r9,%r13,4)
and %rsi,0x432214(%r9,%r13,4)
and %r9,0x69432214(%r9,%r13,4)
and %r13,(%r9,%r13,4)

and %r13,(%rbx,%r13,4)
and %r13,(%r9,%rbx,4)

and %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

and (%ebx),%bl
and 0x14(%ebx),%dh
and 0x2814(%ebx),%sil
and 0x792814(%ebx),%r9b
and 0x7b792814(%ebx),%r13b

and 0x14(%ebx),%bx
and 0x14(%ebx),%si
and 0x14(%ebx),%r9w
and 0x14(%ebx),%r13w

and 0x14(%ebx),%ebx
and 0x14(%ebx),%esi
and 0x14(%ebx),%r9d
and 0x14(%ebx),%r13d

and 0x14(%ebx),%rbx
and 0x14(%ebx),%rsi
and 0x14(%ebx),%r9
and 0x14(%ebx),%r13

and 0x14(%esi),%bl
and 0x14(%esi),%dh
and 0x14(%esi),%sil
and 0x14(%esi),%r9b
and 0x14(%esi),%r13b

and 0x14(%esi),%bx
and 0x14(%esi),%si
and 0x14(%esi),%r9w
and 0x14(%esi),%r13w

and 0x14(%esi),%ebx
and 0x14(%esi),%esi
and 0x14(%esi),%r9d
and 0x14(%esi),%r13d

and 0x14(%esi),%rbx
and 0x14(%esi),%rsi
and 0x14(%esi),%r9
and 0x14(%esi),%r13

and 0x14(%r9d),%bl
// and 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
and 0x14(%r9d),%sil
and 0x14(%r9d),%r9b
and 0x14(%r9d),%r13b

and 0x14(%r9d),%bx
and 0x14(%r9d),%si
and 0x14(%r9d),%r9w
and 0x14(%r9d),%r13w

and 0x14(%r9d),%ebx
and 0x14(%r9d),%esi
and 0x14(%r9d),%r9d
and 0x14(%r9d),%r13d

and 0x14(%r9d),%rbx
and 0x14(%r9d),%rsi
and 0x14(%r9d),%r9
and 0x14(%r9d),%r13

and 0x14(%r13d),%bl
// and 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
and 0x14(%r13d),%sil
and 0x14(%r13d),%r9b
and 0x14(%r13d),%r13b

and 0x14(%r13d),%bx
and 0x14(%r13d),%si
and 0x14(%r13d),%r9w
and 0x14(%r13d),%r13w

and 0x14(%r13d),%ebx
and 0x14(%r13d),%esi
and 0x14(%r13d),%r9d
and 0x14(%r13d),%r13d

and 0x14(%r13d),%rbx
and 0x14(%r13d),%rsi
and 0x14(%r13d),%r9
and 0x14(%r13d),%r13

// -----------------

and 0x14(%rbx),%bl
and 0x14(%rbx),%dh
and 0x14(%rbx),%sil
and 0x14(%rbx),%r9b
and 0x14(%rbx),%r13b

and 0x14(%rbx),%bx
and 0x14(%rbx),%si
and 0x14(%rbx),%r9w
and 0x14(%rbx),%r13w

and 0x14(%rbx),%ebx
and 0x14(%rbx),%esi
and 0x14(%rbx),%r9d
and 0x14(%rbx),%r13d

and 0x14(%rbx),%rbx
and 0x14(%rbx),%rsi
and 0x14(%rbx),%r9
and 0x14(%rbx),%r13

and 0x14(%rsi),%bl
and 0x14(%rsi),%dh
and 0x14(%rsi),%sil
and 0x14(%rsi),%r9b
and 0x14(%rsi),%r13b

and 0x14(%rsi),%bx
and 0x14(%rsi),%si
and 0x14(%rsi),%r9w
and 0x14(%rsi),%r13w

and 0x14(%rsi),%ebx
and 0x14(%rsi),%esi
and 0x14(%rsi),%r9d
and 0x14(%rsi),%r13d

and 0x14(%rsi),%rbx
and 0x14(%rsi),%rsi
and 0x14(%rsi),%r9
and 0x14(%rsi),%r13

and 0x14(%r9),%bl
// and 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
and 0x14(%r9),%sil
and 0x14(%r9),%r9b
and 0x14(%r9),%r13b

and 0x14(%r9),%bx
and 0x14(%r9),%si
and 0x14(%r9),%r9w
and 0x14(%r9),%r13w

and 0x14(%r9),%ebx
and 0x14(%r9),%esi
and 0x14(%r9),%r9d
and 0x14(%r9),%r13d

and 0x14(%r9),%rbx
and 0x14(%r9),%rsi
and 0x14(%r9),%r9
and 0x14(%r9),%r13

and 0x14(%r13),%bl
// and 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
and 0x14(%r13),%sil
and 0x14(%r13),%r9b
and 0x14(%r13),%r13b

and 0x14(%r13),%bx
and 0x14(%r13),%si
and 0x14(%r13),%r9w
and 0x14(%r13),%r13w

and 0x14(%r13),%ebx
and 0x14(%r13),%esi
and 0x14(%r13),%r9d
and 0x14(%r13),%r13d

and 0x14(%r13),%rbx
and 0x14(%r13),%rsi
and 0x14(%r13),%r9
and 0x14(%r13),%r13

// and 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


and 0x14(%ebx,%esi),%bl
and 0x2214(%ebx,%esi,2),%dh
and 0x432214(%ebx,%esi,4),%sil
and 0x69432214(%esi,%ebx,8),%r9b
and (%esi,%ebx,1),%r13b

and 0x14(%ebx,%r9d,4),%bl
//and 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
and 0x432214(%ebx,%r9d,4),%sil
and 0x69432214(%ebx,%r9d,4),%r9b
and (%ebx,%r9d,4),%r13b

and 0x14(%ebx,%r13d,4),%bl
//and 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
and 0x432214(%ebx,%r13d,4),%sil
and 0x69432214(%ebx,%r13d,4),%r9b
and (%ebx,%r13d,4),%r13b

and 0x14(%ebx,%esi,4),%bx
and 0x432214(%ebx,%esi,4),%si
and 0x69432214(%esi,%ebx,4),%r9w
and (%esi,%ebx,4),%r13w

and 0x14(%ebx,%r9d,4),%bx
and 0x432214(%ebx,%r9d,4),%si
and 0x69432214(%ebx,%r9d,4),%r9w
and (%ebx,%r9d,4),%r13w

and 0x14(%ebx,%r13d,4),%bx
and 0x432214(%ebx,%r13d,4),%si
and 0x69432214(%ebx,%r13d,4),%r9w
and (%ebx,%r13d,4),%r13w

and 0x14(%ebx,%esi,4),%ebx
and 0x432214(%ebx,%esi,4),%esi
and 0x69432214(%esi,%ebx,4),%r9d
and (%esi,%ebx,4),%r13d

and 0x14(%ebx,%r9d,4),%ebx
and 0x432214(%ebx,%r9d,4),%esi
and 0x69432214(%ebx,%r9d,4),%r9d
and (%ebx,%r9d,4),%r13d

and 0x14(%ebx,%r13d,4),%ebx
and 0x432214(%ebx,%r13d,4),%esi
and 0x69432214(%ebx,%r13d,4),%r9d
and (%ebx,%r13d,4),%r13d

and 0x14(%ebx,%esi,4),%rbx
and 0x432214(%ebx,%esi,4),%rsi
and 0x69432214(%esi,%ebx,4),%r9
and (%esi,%ebx,4),%r13

and 0x14(%ebx,%r9d,4),%rbx
and 0x432214(%ebx,%r9d,4),%rsi
and 0x69432214(%ebx,%r9d,4),%r9
and (%ebx,%r9d,4),%r13

and 0x14(%ebx,%r13d,4),%rbx
and 0x432214(%ebx,%r13d,4),%rsi
and 0x69432214(%ebx,%r13d,4),%r9
and (%ebx,%r13d,4),%r13

and 0x14(%r9d,%r13d,4),%rbx
and 0x432214(%r9d,%r13d,4),%rsi
and 0x69432214(%r9d,%r13d,4),%r9
and (%r9d,%r13d,4),%r13


and 0x14(%rbx,%rsi),%bl
and 0x2214(%rbx,%rsi,2),%dh
and 0x432214(%rbx,%rsi,4),%sil
and 0x69432214(%rsi,%rbx,8),%r9b
and (%rsi,%rbx,1),%r13b

and 0x14(%rbx,%r9,4),%bl
//and 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
and 0x432214(%rbx,%r9,4),%sil
and 0x69432214(%rbx,%r9,4),%r9b
and (%rbx,%r9,4),%r13b

and 0x14(%rbx,%r13,4),%bl
//and 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
and 0x432214(%rbx,%r13,4),%sil
and 0x69432214(%rbx,%r13,4),%r9b
and (%rbx,%r13,4),%r13b

and 0x14(%rbx,%rsi,4),%bx
and 0x432214(%rbx,%rsi,4),%si
and 0x69432214(%rsi,%rbx,4),%r9w
and (%rsi,%rbx,4),%r13w

and 0x14(%rbx,%r9,4),%bx
and 0x432214(%rbx,%r9,4),%si
and 0x69432214(%rbx,%r9,4),%r9w
and (%rbx,%r9,4),%r13w

and 0x14(%rbx,%r13,4),%bx
and 0x432214(%rbx,%r13,4),%si
and 0x69432214(%rbx,%r13,4),%r9w
and (%rbx,%r13,4),%r13w

and 0x14(%rbx,%rsi,4),%ebx
and 0x432214(%rbx,%rsi,4),%esi
and 0x69432214(%rsi,%rbx,4),%r9d
and (%rsi,%rbx,4),%r13d

and 0x14(%rbx,%r9,4),%ebx
and 0x432214(%rbx,%r9,4),%esi
and 0x69432214(%rbx,%r9,4),%r9d
and (%rbx,%r9,4),%r13d

and 0x14(%rbx,%r13,4),%ebx
and 0x432214(%rbx,%r13,4),%esi
and 0x69432214(%rbx,%r13,4),%r9d
and (%rbx,%r13,4),%r13d

and 0x14(%rbx,%rsi,4),%rbx
and 0x432214(%rbx,%rsi,4),%rsi
and 0x69432214(%rsi,%rbx,4),%r9
and (%rsi,%rbx,4),%r13

and 0x14(%rbx,%r9,4),%rbx
and 0x432214(%rbx,%r9,4),%rsi
and 0x69432214(%rbx,%r9,4),%r9
and (%rbx,%r9,4),%r13

and 0x14(%rbx,%r13,4),%rbx
and 0x432214(%rbx,%r13,4),%rsi
and 0x69432214(%rbx,%r13,4),%r9
and (%rbx,%r13,4),%r13

and 0x14(%r9,%r13,4),%rbx
and 0x432214(%r9,%r13,4),%rsi
and 0x69432214(%r9,%r13,4),%r9
and (%r9,%r13,4),%r13

and (%rbx,%r13,4),%r13
and (%r9,%rbx,4),%r13

and (%rbx,%r13,4),%r13w
and (%r9,%rbx,4),%r13w

and (%rbx,%r13,4),%r13
and (%r9,%rbx,4),%r13

and (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

and %bl, %bl
and %dh, %bl
and %sil, %bl
and %r9b, %bl
and %r13b, %bl

and %bl, %dh
and %dh, %dh
//and %sil, %dh		ah-dh and REX error
//and %r9b, %dh
//and %r13b, %dh

and %bl, %sil
//and %dh, %sil		ah-dh and REX error
and %sil, %sil
and %r9b, %sil
and %r13b, %sil

and %bl, %r9b
//and %dh, %r9b		ah,bh,ch,dh and REX error
and %sil, %r9b
and %r9b, %r9b
and %r13b, %r9b

and %bl, %r13b
//and %dh, %r13b	ah,bh,ch,dh and REX error
and %sil, %r13b
and %r9b, %r13b
and %r13b, %r13b

and %bx, %bx
and %si, %bx
and %r9w, %bx
and %r13w, %bx

and %bx, %si
and %si, %si
and %r9w, %si
and %r13w, %si

and %bx, %r9w
and %si, %r9w
and %r9w, %r9w
and %r13w, %r9w

and %bx, %r13w
and %si, %r13w
and %r9w, %r13w
and %r13w, %r13w

and %ebx, %ebx
and %esi, %ebx
and %r9d, %ebx
and %r13d, %ebx

and %ebx, %esi
and %esi, %esi
and %r9d, %esi
and %r13d, %esi

and %ebx, %r9d
and %esi, %r9d
and %r9d, %r9d
and %r13d, %r9d

and %ebx, %r13d
and %esi, %r13d
and %r9d, %r13d
and %r13d, %r13d

and %rbx, %rbx
and %rsi, %rbx
and %r9, %rbx
and %r13, %rbx

and %rbx, %rsi
and %rsi, %rsi
and %r9, %rsi
and %r13, %rsi

and %rbx, %r9
and %rsi, %r9
and %r9, %r9
and %r13, %r9

and %rbx, %r13
and %rsi, %r13
and %r9, %r13
and %r13, %r13


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
or %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
or %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
or %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
or %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
or %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
or %esi,0x3e8
// 11 34 25 e8 03 00 00 	
or %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
or %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
or %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
or %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
or %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
or %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
or %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
or %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
or %bl,0x3e8
// 
or %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
or %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
or %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
or %r13b,0x3e8

or %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

or %bl,(%ebx)
or %dh,0x14(%ebx)
or %sil,0x2814(%ebx)
or %r9b,0x792814(%ebx)
or %r13b,0x7b792814(%ebx)

or %bx,0x14(%ebx)
or %si,0x14(%ebx)
or %r9w,0x14(%ebx)
or %r13w,0x14(%ebx)

or %ebx,0x14(%ebx)
or %esi,0x14(%ebx)
or %r9d,0x14(%ebx)
or %r13d,0x14(%ebx)

or %rbx,0x14(%ebx)
or %rsi,0x14(%ebx)
or %r9,0x14(%ebx)
or %r13,0x14(%ebx)

or %bl,0x14(%esi)
or %dh,0x14(%esi)
or %sil,0x14(%esi)
or %r9b,0x14(%esi)
or %r13b,0x14(%esi)

or %bx,0x14(%esi)
or %si,0x14(%esi)
or %r9w,0x14(%esi)
or %r13w,0x14(%esi)

or %ebx,0x14(%esi)
or %esi,0x14(%esi)
or %r9d,0x14(%esi)
or %r13d,0x14(%esi)

or %rbx,0x14(%esi)
or %rsi,0x14(%esi)
or %r9,0x14(%esi)
or %r13,0x14(%esi)

or %bl,0x14(%r9d)
// or %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
or %sil,0x14(%r9d)
or %r9b,0x14(%r9d)
or %r13b,0x14(%r9d)

or %bx,0x14(%r9d)
or %si,0x14(%r9d)
or %r9w,0x14(%r9d)
or %r13w,0x14(%r9d)

or %ebx,0x14(%r9d)
or %esi,0x14(%r9d)
or %r9d,0x14(%r9d)
or %r13d,0x14(%r9d)

or %rbx,0x14(%r9d)
or %rsi,0x14(%r9d)
or %r9,0x14(%r9d)
or %r13,0x14(%r9d)

or %bl,0x14(%r13d)
// or %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
or %sil,0x14(%r13d)
or %r9b,0x14(%r13d)
or %r13b,0x14(%r13d)

or %bx,0x14(%r13d)
or %si,0x14(%r13d)
or %r9w,0x14(%r13d)
or %r13w,0x14(%r13d)

or %ebx,0x14(%r13d)
or %esi,0x14(%r13d)
or %r9d,0x14(%r13d)
or %r13d,0x14(%r13d)

or %rbx,0x14(%r13d)
or %rsi,0x14(%r13d)
or %r9,0x14(%r13d)
or %r13,0x14(%r13d)

// -----------------

or %bl,0x14(%rbx)
or %dh,0x14(%rbx)
or %sil,0x14(%rbx)
or %r9b,0x14(%rbx)
or %r13b,0x14(%rbx)

or %bx,0x14(%rbx)
or %si,0x14(%rbx)
or %r9w,0x14(%rbx)
or %r13w,0x14(%rbx)

or %ebx,0x14(%rbx)
or %esi,0x14(%rbx)
or %r9d,0x14(%rbx)
or %r13d,0x14(%rbx)

or %rbx,0x14(%rbx)
or %rsi,0x14(%rbx)
or %r9,0x14(%rbx)
or %r13,0x14(%rbx)

or %bl,0x14(%rsi)
or %dh,0x14(%rsi)
or %sil,0x14(%rsi)
or %r9b,0x14(%rsi)
or %r13b,0x14(%rsi)

or %bx,0x14(%rsi)
or %si,0x14(%rsi)
or %r9w,0x14(%rsi)
or %r13w,0x14(%rsi)

or %ebx,0x14(%rsi)
or %esi,0x14(%rsi)
or %r9d,0x14(%rsi)
or %r13d,0x14(%rsi)

or %rbx,0x14(%rsi)
or %rsi,0x14(%rsi)
or %r9,0x14(%rsi)
or %r13,0x14(%rsi)

or %bl,0x14(%r9)
// or %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
or %sil,0x14(%r9)
or %r9b,0x14(%r9)
or %r13b,0x14(%r9)

or %bx,0x14(%r9)
or %si,0x14(%r9)
or %r9w,0x14(%r9)
or %r13w,0x14(%r9)

or %ebx,0x14(%r9)
or %esi,0x14(%r9)
or %r9d,0x14(%r9)
or %r13d,0x14(%r9)

or %rbx,0x14(%r9)
or %rsi,0x14(%r9)
or %r9,0x14(%r9)
or %r13,0x14(%r9)

or %bl,0x14(%r13)
// or %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
or %sil,0x14(%r13)
or %r9b,0x14(%r13)
or %r13b,0x14(%r13)

or %bx,0x14(%r13)
or %si,0x14(%r13)
or %r9w,0x14(%r13)
or %r13w,0x14(%r13)

or %ebx,0x14(%r13)
or %esi,0x14(%r13)
or %r9d,0x14(%r13)
or %r13d,0x14(%r13)

or %rbx,0x14(%r13)
or %rsi,0x14(%r13)
or %r9,0x14(%r13)
or %r13,0x14(%r13)

// or %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


or %bl,0x14(%ebx,%esi)
or %dh,0x2214(%ebx,%esi,2)
or %sil,0x432214(%ebx,%esi,4)
or %r9b,0x69432214(%esi,%ebx,8)
or %r13b,(%esi,%ebx,1)

or %bl,0x14(%ebx,%r9d,4)
//or %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
or %sil,0x432214(%ebx,%r9d,4)
or %r9b,0x69432214(%ebx,%r9d,4)
or %r13b,(%ebx,%r9d,4)

or %bl,0x14(%ebx,%r13d,4)
//or %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
or %sil,0x432214(%ebx,%r13d,4)
or %r9b,0x69432214(%ebx,%r13d,4)
or %r13b,(%ebx,%r13d,4)

or %bx,0x14(%ebx,%esi,4)
or %si,0x432214(%ebx,%esi,4)
or %r9w,0x69432214(%esi,%ebx,4)
or %r13w,(%esi,%ebx,4)

or %bx,0x14(%ebx,%r9d,4)
or %si,0x432214(%ebx,%r9d,4)
or %r9w,0x69432214(%ebx,%r9d,4)
or %r13w,(%ebx,%r9d,4)

or %bx,0x14(%ebx,%r13d,4)
or %si,0x432214(%ebx,%r13d,4)
or %r9w,0x69432214(%ebx,%r13d,4)
or %r13w,(%ebx,%r13d,4)

or %ebx,0x14(%ebx,%esi,4)
or %esi,0x432214(%ebx,%esi,4)
or %r9d,0x69432214(%esi,%ebx,4)
or %r13d,(%esi,%ebx,4)

or %ebx,0x14(%ebx,%r9d,4)
or %esi,0x432214(%ebx,%r9d,4)
or %r9d,0x69432214(%ebx,%r9d,4)
or %r13d,(%ebx,%r9d,4)

or %ebx,0x14(%ebx,%r13d,4)
or %esi,0x432214(%ebx,%r13d,4)
or %r9d,0x69432214(%ebx,%r13d,4)
or %r13d,(%ebx,%r13d,4)

or %rbx,0x14(%ebx,%esi,4)
or %rsi,0x432214(%ebx,%esi,4)
or %r9,0x69432214(%esi,%ebx,4)
or %r13,(%esi,%ebx,4)

or %rbx,0x14(%ebx,%r9d,4)
or %rsi,0x432214(%ebx,%r9d,4)
or %r9,0x69432214(%ebx,%r9d,4)
or %r13,(%ebx,%r9d,4)

or %rbx,0x14(%ebx,%r13d,4)
or %rsi,0x432214(%ebx,%r13d,4)
or %r9,0x69432214(%ebx,%r13d,4)
or %r13,(%ebx,%r13d,4)

or %rbx,0x14(%r9d,%r13d,4)
or %rsi,0x432214(%r9d,%r13d,4)
or %r9,0x69432214(%r9d,%r13d,4)
or %r13,(%r9d,%r13d,4)


or %bl,0x14(%rbx,%rsi)
or %dh,0x2214(%rbx,%rsi,2)
or %sil,0x432214(%rbx,%rsi,4)
or %r9b,0x69432214(%rsi,%rbx,8)
or %r13b,(%rsi,%rbx,1)

or %bl,0x14(%rbx,%r9,4)
//or %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
or %sil,0x432214(%rbx,%r9,4)
or %r9b,0x69432214(%rbx,%r9,4)
or %r13b,(%rbx,%r9,4)

or %bl,0x14(%rbx,%r13,4)
//or %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
or %sil,0x432214(%rbx,%r13,4)
or %r9b,0x69432214(%rbx,%r13,4)
or %r13b,(%rbx,%r13,4)

or %bx,0x14(%rbx,%rsi,4)
or %si,0x432214(%rbx,%rsi,4)
or %r9w,0x69432214(%rsi,%rbx,4)
or %r13w,(%rsi,%rbx,4)

or %bx,0x14(%rbx,%r9,4)
or %si,0x432214(%rbx,%r9,4)
or %r9w,0x69432214(%rbx,%r9,4)
or %r13w,(%rbx,%r9,4)

or %bx,0x14(%rbx,%r13,4)
or %si,0x432214(%rbx,%r13,4)
or %r9w,0x69432214(%rbx,%r13,4)
or %r13w,(%rbx,%r13,4)

or %ebx,0x14(%rbx,%rsi,4)
or %esi,0x432214(%rbx,%rsi,4)
or %r9d,0x69432214(%rsi,%rbx,4)
or %r13d,(%rsi,%rbx,4)

or %ebx,0x14(%rbx,%r9,4)
or %esi,0x432214(%rbx,%r9,4)
or %r9d,0x69432214(%rbx,%r9,4)
or %r13d,(%rbx,%r9,4)

or %ebx,0x14(%rbx,%r13,4)
or %esi,0x432214(%rbx,%r13,4)
or %r9d,0x69432214(%rbx,%r13,4)
or %r13d,(%rbx,%r13,4)

or %rbx,0x14(%rbx,%rsi,4)
or %rsi,0x432214(%rbx,%rsi,4)
or %r9,0x69432214(%rsi,%rbx,4)
or %r13,(%rsi,%rbx,4)

or %rbx,0x14(%rbx,%r9,4)
or %rsi,0x432214(%rbx,%r9,4)
or %r9,0x69432214(%rbx,%r9,4)
or %r13,(%rbx,%r9,4)

or %rbx,0x14(%rbx,%r13,4)
or %rsi,0x432214(%rbx,%r13,4)
or %r9,0x69432214(%rbx,%r13,4)
or %r13,(%rbx,%r13,4)

or %rbx,0x14(%r9,%r13,4)
or %rsi,0x432214(%r9,%r13,4)
or %r9,0x69432214(%r9,%r13,4)
or %r13,(%r9,%r13,4)

or %r13,(%rbx,%r13,4)
or %r13,(%r9,%rbx,4)

or %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

or (%ebx),%bl
or 0x14(%ebx),%dh
or 0x2814(%ebx),%sil
or 0x792814(%ebx),%r9b
or 0x7b792814(%ebx),%r13b

or 0x14(%ebx),%bx
or 0x14(%ebx),%si
or 0x14(%ebx),%r9w
or 0x14(%ebx),%r13w

or 0x14(%ebx),%ebx
or 0x14(%ebx),%esi
or 0x14(%ebx),%r9d
or 0x14(%ebx),%r13d

or 0x14(%ebx),%rbx
or 0x14(%ebx),%rsi
or 0x14(%ebx),%r9
or 0x14(%ebx),%r13

or 0x14(%esi),%bl
or 0x14(%esi),%dh
or 0x14(%esi),%sil
or 0x14(%esi),%r9b
or 0x14(%esi),%r13b

or 0x14(%esi),%bx
or 0x14(%esi),%si
or 0x14(%esi),%r9w
or 0x14(%esi),%r13w

or 0x14(%esi),%ebx
or 0x14(%esi),%esi
or 0x14(%esi),%r9d
or 0x14(%esi),%r13d

or 0x14(%esi),%rbx
or 0x14(%esi),%rsi
or 0x14(%esi),%r9
or 0x14(%esi),%r13

or 0x14(%r9d),%bl
// or 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
or 0x14(%r9d),%sil
or 0x14(%r9d),%r9b
or 0x14(%r9d),%r13b

or 0x14(%r9d),%bx
or 0x14(%r9d),%si
or 0x14(%r9d),%r9w
or 0x14(%r9d),%r13w

or 0x14(%r9d),%ebx
or 0x14(%r9d),%esi
or 0x14(%r9d),%r9d
or 0x14(%r9d),%r13d

or 0x14(%r9d),%rbx
or 0x14(%r9d),%rsi
or 0x14(%r9d),%r9
or 0x14(%r9d),%r13

or 0x14(%r13d),%bl
// or 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
or 0x14(%r13d),%sil
or 0x14(%r13d),%r9b
or 0x14(%r13d),%r13b

or 0x14(%r13d),%bx
or 0x14(%r13d),%si
or 0x14(%r13d),%r9w
or 0x14(%r13d),%r13w

or 0x14(%r13d),%ebx
or 0x14(%r13d),%esi
or 0x14(%r13d),%r9d
or 0x14(%r13d),%r13d

or 0x14(%r13d),%rbx
or 0x14(%r13d),%rsi
or 0x14(%r13d),%r9
or 0x14(%r13d),%r13

// -----------------

or 0x14(%rbx),%bl
or 0x14(%rbx),%dh
or 0x14(%rbx),%sil
or 0x14(%rbx),%r9b
or 0x14(%rbx),%r13b

or 0x14(%rbx),%bx
or 0x14(%rbx),%si
or 0x14(%rbx),%r9w
or 0x14(%rbx),%r13w

or 0x14(%rbx),%ebx
or 0x14(%rbx),%esi
or 0x14(%rbx),%r9d
or 0x14(%rbx),%r13d

or 0x14(%rbx),%rbx
or 0x14(%rbx),%rsi
or 0x14(%rbx),%r9
or 0x14(%rbx),%r13

or 0x14(%rsi),%bl
or 0x14(%rsi),%dh
or 0x14(%rsi),%sil
or 0x14(%rsi),%r9b
or 0x14(%rsi),%r13b

or 0x14(%rsi),%bx
or 0x14(%rsi),%si
or 0x14(%rsi),%r9w
or 0x14(%rsi),%r13w

or 0x14(%rsi),%ebx
or 0x14(%rsi),%esi
or 0x14(%rsi),%r9d
or 0x14(%rsi),%r13d

or 0x14(%rsi),%rbx
or 0x14(%rsi),%rsi
or 0x14(%rsi),%r9
or 0x14(%rsi),%r13

or 0x14(%r9),%bl
// or 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
or 0x14(%r9),%sil
or 0x14(%r9),%r9b
or 0x14(%r9),%r13b

or 0x14(%r9),%bx
or 0x14(%r9),%si
or 0x14(%r9),%r9w
or 0x14(%r9),%r13w

or 0x14(%r9),%ebx
or 0x14(%r9),%esi
or 0x14(%r9),%r9d
or 0x14(%r9),%r13d

or 0x14(%r9),%rbx
or 0x14(%r9),%rsi
or 0x14(%r9),%r9
or 0x14(%r9),%r13

or 0x14(%r13),%bl
// or 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
or 0x14(%r13),%sil
or 0x14(%r13),%r9b
or 0x14(%r13),%r13b

or 0x14(%r13),%bx
or 0x14(%r13),%si
or 0x14(%r13),%r9w
or 0x14(%r13),%r13w

or 0x14(%r13),%ebx
or 0x14(%r13),%esi
or 0x14(%r13),%r9d
or 0x14(%r13),%r13d

or 0x14(%r13),%rbx
or 0x14(%r13),%rsi
or 0x14(%r13),%r9
or 0x14(%r13),%r13

// or 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


or 0x14(%ebx,%esi),%bl
or 0x2214(%ebx,%esi,2),%dh
or 0x432214(%ebx,%esi,4),%sil
or 0x69432214(%esi,%ebx,8),%r9b
or (%esi,%ebx,1),%r13b

or 0x14(%ebx,%r9d,4),%bl
//or 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
or 0x432214(%ebx,%r9d,4),%sil
or 0x69432214(%ebx,%r9d,4),%r9b
or (%ebx,%r9d,4),%r13b

or 0x14(%ebx,%r13d,4),%bl
//or 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
or 0x432214(%ebx,%r13d,4),%sil
or 0x69432214(%ebx,%r13d,4),%r9b
or (%ebx,%r13d,4),%r13b

or 0x14(%ebx,%esi,4),%bx
or 0x432214(%ebx,%esi,4),%si
or 0x69432214(%esi,%ebx,4),%r9w
or (%esi,%ebx,4),%r13w

or 0x14(%ebx,%r9d,4),%bx
or 0x432214(%ebx,%r9d,4),%si
or 0x69432214(%ebx,%r9d,4),%r9w
or (%ebx,%r9d,4),%r13w

or 0x14(%ebx,%r13d,4),%bx
or 0x432214(%ebx,%r13d,4),%si
or 0x69432214(%ebx,%r13d,4),%r9w
or (%ebx,%r13d,4),%r13w

or 0x14(%ebx,%esi,4),%ebx
or 0x432214(%ebx,%esi,4),%esi
or 0x69432214(%esi,%ebx,4),%r9d
or (%esi,%ebx,4),%r13d

or 0x14(%ebx,%r9d,4),%ebx
or 0x432214(%ebx,%r9d,4),%esi
or 0x69432214(%ebx,%r9d,4),%r9d
or (%ebx,%r9d,4),%r13d

or 0x14(%ebx,%r13d,4),%ebx
or 0x432214(%ebx,%r13d,4),%esi
or 0x69432214(%ebx,%r13d,4),%r9d
or (%ebx,%r13d,4),%r13d

or 0x14(%ebx,%esi,4),%rbx
or 0x432214(%ebx,%esi,4),%rsi
or 0x69432214(%esi,%ebx,4),%r9
or (%esi,%ebx,4),%r13

or 0x14(%ebx,%r9d,4),%rbx
or 0x432214(%ebx,%r9d,4),%rsi
or 0x69432214(%ebx,%r9d,4),%r9
or (%ebx,%r9d,4),%r13

or 0x14(%ebx,%r13d,4),%rbx
or 0x432214(%ebx,%r13d,4),%rsi
or 0x69432214(%ebx,%r13d,4),%r9
or (%ebx,%r13d,4),%r13

or 0x14(%r9d,%r13d,4),%rbx
or 0x432214(%r9d,%r13d,4),%rsi
or 0x69432214(%r9d,%r13d,4),%r9
or (%r9d,%r13d,4),%r13


or 0x14(%rbx,%rsi),%bl
or 0x2214(%rbx,%rsi,2),%dh
or 0x432214(%rbx,%rsi,4),%sil
or 0x69432214(%rsi,%rbx,8),%r9b
or (%rsi,%rbx,1),%r13b

or 0x14(%rbx,%r9,4),%bl
//or 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
or 0x432214(%rbx,%r9,4),%sil
or 0x69432214(%rbx,%r9,4),%r9b
or (%rbx,%r9,4),%r13b

or 0x14(%rbx,%r13,4),%bl
//or 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
or 0x432214(%rbx,%r13,4),%sil
or 0x69432214(%rbx,%r13,4),%r9b
or (%rbx,%r13,4),%r13b

or 0x14(%rbx,%rsi,4),%bx
or 0x432214(%rbx,%rsi,4),%si
or 0x69432214(%rsi,%rbx,4),%r9w
or (%rsi,%rbx,4),%r13w

or 0x14(%rbx,%r9,4),%bx
or 0x432214(%rbx,%r9,4),%si
or 0x69432214(%rbx,%r9,4),%r9w
or (%rbx,%r9,4),%r13w

or 0x14(%rbx,%r13,4),%bx
or 0x432214(%rbx,%r13,4),%si
or 0x69432214(%rbx,%r13,4),%r9w
or (%rbx,%r13,4),%r13w

or 0x14(%rbx,%rsi,4),%ebx
or 0x432214(%rbx,%rsi,4),%esi
or 0x69432214(%rsi,%rbx,4),%r9d
or (%rsi,%rbx,4),%r13d

or 0x14(%rbx,%r9,4),%ebx
or 0x432214(%rbx,%r9,4),%esi
or 0x69432214(%rbx,%r9,4),%r9d
or (%rbx,%r9,4),%r13d

or 0x14(%rbx,%r13,4),%ebx
or 0x432214(%rbx,%r13,4),%esi
or 0x69432214(%rbx,%r13,4),%r9d
or (%rbx,%r13,4),%r13d

or 0x14(%rbx,%rsi,4),%rbx
or 0x432214(%rbx,%rsi,4),%rsi
or 0x69432214(%rsi,%rbx,4),%r9
or (%rsi,%rbx,4),%r13

or 0x14(%rbx,%r9,4),%rbx
or 0x432214(%rbx,%r9,4),%rsi
or 0x69432214(%rbx,%r9,4),%r9
or (%rbx,%r9,4),%r13

or 0x14(%rbx,%r13,4),%rbx
or 0x432214(%rbx,%r13,4),%rsi
or 0x69432214(%rbx,%r13,4),%r9
or (%rbx,%r13,4),%r13

or 0x14(%r9,%r13,4),%rbx
or 0x432214(%r9,%r13,4),%rsi
or 0x69432214(%r9,%r13,4),%r9
or (%r9,%r13,4),%r13

or (%rbx,%r13,4),%r13
or (%r9,%rbx,4),%r13

or (%rbx,%r13,4),%r13w
or (%r9,%rbx,4),%r13w

or (%rbx,%r13,4),%r13
or (%r9,%rbx,4),%r13

or (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

or %bl, %bl
or %dh, %bl
or %sil, %bl
or %r9b, %bl
or %r13b, %bl

or %bl, %dh
or %dh, %dh
//or %sil, %dh		ah-dh and REX error
//or %r9b, %dh
//or %r13b, %dh

or %bl, %sil
//or %dh, %sil		ah-dh and REX error
or %sil, %sil
or %r9b, %sil
or %r13b, %sil

or %bl, %r9b
//or %dh, %r9b		ah,bh,ch,dh and REX error
or %sil, %r9b
or %r9b, %r9b
or %r13b, %r9b

or %bl, %r13b
//or %dh, %r13b	ah,bh,ch,dh and REX error
or %sil, %r13b
or %r9b, %r13b
or %r13b, %r13b

or %bx, %bx
or %si, %bx
or %r9w, %bx
or %r13w, %bx

or %bx, %si
or %si, %si
or %r9w, %si
or %r13w, %si

or %bx, %r9w
or %si, %r9w
or %r9w, %r9w
or %r13w, %r9w

or %bx, %r13w
or %si, %r13w
or %r9w, %r13w
or %r13w, %r13w

or %ebx, %ebx
or %esi, %ebx
or %r9d, %ebx
or %r13d, %ebx

or %ebx, %esi
or %esi, %esi
or %r9d, %esi
or %r13d, %esi

or %ebx, %r9d
or %esi, %r9d
or %r9d, %r9d
or %r13d, %r9d

or %ebx, %r13d
or %esi, %r13d
or %r9d, %r13d
or %r13d, %r13d

or %rbx, %rbx
or %rsi, %rbx
or %r9, %rbx
or %r13, %rbx

or %rbx, %rsi
or %rsi, %rsi
or %r9, %rsi
or %r13, %rsi

or %rbx, %r9
or %rsi, %r9
or %r9, %r9
or %r13, %r9

or %rbx, %r13
or %rsi, %r13
or %r9, %r13
or %r13, %r13


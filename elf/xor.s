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
xor %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
xor %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
xor %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
xor %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
xor %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
xor %esi,0x3e8
// 11 34 25 e8 03 00 00 	
xor %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
xor %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
xor %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
xor %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
xor %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
xor %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
xor %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
xor %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
xor %bl,0x3e8
// 
xor %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
xor %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
xor %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
xor %r13b,0x3e8

xor %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

xor %bl,(%ebx)
xor %dh,0x14(%ebx)
xor %sil,0x2814(%ebx)
xor %r9b,0x792814(%ebx)
xor %r13b,0x7b792814(%ebx)

xor %bx,0x14(%ebx)
xor %si,0x14(%ebx)
xor %r9w,0x14(%ebx)
xor %r13w,0x14(%ebx)

xor %ebx,0x14(%ebx)
xor %esi,0x14(%ebx)
xor %r9d,0x14(%ebx)
xor %r13d,0x14(%ebx)

xor %rbx,0x14(%ebx)
xor %rsi,0x14(%ebx)
xor %r9,0x14(%ebx)
xor %r13,0x14(%ebx)

xor %bl,0x14(%esi)
xor %dh,0x14(%esi)
xor %sil,0x14(%esi)
xor %r9b,0x14(%esi)
xor %r13b,0x14(%esi)

xor %bx,0x14(%esi)
xor %si,0x14(%esi)
xor %r9w,0x14(%esi)
xor %r13w,0x14(%esi)

xor %ebx,0x14(%esi)
xor %esi,0x14(%esi)
xor %r9d,0x14(%esi)
xor %r13d,0x14(%esi)

xor %rbx,0x14(%esi)
xor %rsi,0x14(%esi)
xor %r9,0x14(%esi)
xor %r13,0x14(%esi)

xor %bl,0x14(%r9d)
// xor %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
xor %sil,0x14(%r9d)
xor %r9b,0x14(%r9d)
xor %r13b,0x14(%r9d)

xor %bx,0x14(%r9d)
xor %si,0x14(%r9d)
xor %r9w,0x14(%r9d)
xor %r13w,0x14(%r9d)

xor %ebx,0x14(%r9d)
xor %esi,0x14(%r9d)
xor %r9d,0x14(%r9d)
xor %r13d,0x14(%r9d)

xor %rbx,0x14(%r9d)
xor %rsi,0x14(%r9d)
xor %r9,0x14(%r9d)
xor %r13,0x14(%r9d)

xor %bl,0x14(%r13d)
// xor %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
xor %sil,0x14(%r13d)
xor %r9b,0x14(%r13d)
xor %r13b,0x14(%r13d)

xor %bx,0x14(%r13d)
xor %si,0x14(%r13d)
xor %r9w,0x14(%r13d)
xor %r13w,0x14(%r13d)

xor %ebx,0x14(%r13d)
xor %esi,0x14(%r13d)
xor %r9d,0x14(%r13d)
xor %r13d,0x14(%r13d)

xor %rbx,0x14(%r13d)
xor %rsi,0x14(%r13d)
xor %r9,0x14(%r13d)
xor %r13,0x14(%r13d)

// -----------------

xor %bl,0x14(%rbx)
xor %dh,0x14(%rbx)
xor %sil,0x14(%rbx)
xor %r9b,0x14(%rbx)
xor %r13b,0x14(%rbx)

xor %bx,0x14(%rbx)
xor %si,0x14(%rbx)
xor %r9w,0x14(%rbx)
xor %r13w,0x14(%rbx)

xor %ebx,0x14(%rbx)
xor %esi,0x14(%rbx)
xor %r9d,0x14(%rbx)
xor %r13d,0x14(%rbx)

xor %rbx,0x14(%rbx)
xor %rsi,0x14(%rbx)
xor %r9,0x14(%rbx)
xor %r13,0x14(%rbx)

xor %bl,0x14(%rsi)
xor %dh,0x14(%rsi)
xor %sil,0x14(%rsi)
xor %r9b,0x14(%rsi)
xor %r13b,0x14(%rsi)

xor %bx,0x14(%rsi)
xor %si,0x14(%rsi)
xor %r9w,0x14(%rsi)
xor %r13w,0x14(%rsi)

xor %ebx,0x14(%rsi)
xor %esi,0x14(%rsi)
xor %r9d,0x14(%rsi)
xor %r13d,0x14(%rsi)

xor %rbx,0x14(%rsi)
xor %rsi,0x14(%rsi)
xor %r9,0x14(%rsi)
xor %r13,0x14(%rsi)

xor %bl,0x14(%r9)
// xor %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
xor %sil,0x14(%r9)
xor %r9b,0x14(%r9)
xor %r13b,0x14(%r9)

xor %bx,0x14(%r9)
xor %si,0x14(%r9)
xor %r9w,0x14(%r9)
xor %r13w,0x14(%r9)

xor %ebx,0x14(%r9)
xor %esi,0x14(%r9)
xor %r9d,0x14(%r9)
xor %r13d,0x14(%r9)

xor %rbx,0x14(%r9)
xor %rsi,0x14(%r9)
xor %r9,0x14(%r9)
xor %r13,0x14(%r9)

xor %bl,0x14(%r13)
// xor %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
xor %sil,0x14(%r13)
xor %r9b,0x14(%r13)
xor %r13b,0x14(%r13)

xor %bx,0x14(%r13)
xor %si,0x14(%r13)
xor %r9w,0x14(%r13)
xor %r13w,0x14(%r13)

xor %ebx,0x14(%r13)
xor %esi,0x14(%r13)
xor %r9d,0x14(%r13)
xor %r13d,0x14(%r13)

xor %rbx,0x14(%r13)
xor %rsi,0x14(%r13)
xor %r9,0x14(%r13)
xor %r13,0x14(%r13)

// xor %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


xor %bl,0x14(%ebx,%esi)
xor %dh,0x2214(%ebx,%esi,2)
xor %sil,0x432214(%ebx,%esi,4)
xor %r9b,0x69432214(%esi,%ebx,8)
xor %r13b,(%esi,%ebx,1)

xor %bl,0x14(%ebx,%r9d,4)
//xor %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
xor %sil,0x432214(%ebx,%r9d,4)
xor %r9b,0x69432214(%ebx,%r9d,4)
xor %r13b,(%ebx,%r9d,4)

xor %bl,0x14(%ebx,%r13d,4)
//xor %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
xor %sil,0x432214(%ebx,%r13d,4)
xor %r9b,0x69432214(%ebx,%r13d,4)
xor %r13b,(%ebx,%r13d,4)

xor %bx,0x14(%ebx,%esi,4)
xor %si,0x432214(%ebx,%esi,4)
xor %r9w,0x69432214(%esi,%ebx,4)
xor %r13w,(%esi,%ebx,4)

xor %bx,0x14(%ebx,%r9d,4)
xor %si,0x432214(%ebx,%r9d,4)
xor %r9w,0x69432214(%ebx,%r9d,4)
xor %r13w,(%ebx,%r9d,4)

xor %bx,0x14(%ebx,%r13d,4)
xor %si,0x432214(%ebx,%r13d,4)
xor %r9w,0x69432214(%ebx,%r13d,4)
xor %r13w,(%ebx,%r13d,4)

xor %ebx,0x14(%ebx,%esi,4)
xor %esi,0x432214(%ebx,%esi,4)
xor %r9d,0x69432214(%esi,%ebx,4)
xor %r13d,(%esi,%ebx,4)

xor %ebx,0x14(%ebx,%r9d,4)
xor %esi,0x432214(%ebx,%r9d,4)
xor %r9d,0x69432214(%ebx,%r9d,4)
xor %r13d,(%ebx,%r9d,4)

xor %ebx,0x14(%ebx,%r13d,4)
xor %esi,0x432214(%ebx,%r13d,4)
xor %r9d,0x69432214(%ebx,%r13d,4)
xor %r13d,(%ebx,%r13d,4)

xor %rbx,0x14(%ebx,%esi,4)
xor %rsi,0x432214(%ebx,%esi,4)
xor %r9,0x69432214(%esi,%ebx,4)
xor %r13,(%esi,%ebx,4)

xor %rbx,0x14(%ebx,%r9d,4)
xor %rsi,0x432214(%ebx,%r9d,4)
xor %r9,0x69432214(%ebx,%r9d,4)
xor %r13,(%ebx,%r9d,4)

xor %rbx,0x14(%ebx,%r13d,4)
xor %rsi,0x432214(%ebx,%r13d,4)
xor %r9,0x69432214(%ebx,%r13d,4)
xor %r13,(%ebx,%r13d,4)

xor %rbx,0x14(%r9d,%r13d,4)
xor %rsi,0x432214(%r9d,%r13d,4)
xor %r9,0x69432214(%r9d,%r13d,4)
xor %r13,(%r9d,%r13d,4)


xor %bl,0x14(%rbx,%rsi)
xor %dh,0x2214(%rbx,%rsi,2)
xor %sil,0x432214(%rbx,%rsi,4)
xor %r9b,0x69432214(%rsi,%rbx,8)
xor %r13b,(%rsi,%rbx,1)

xor %bl,0x14(%rbx,%r9,4)
//xor %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
xor %sil,0x432214(%rbx,%r9,4)
xor %r9b,0x69432214(%rbx,%r9,4)
xor %r13b,(%rbx,%r9,4)

xor %bl,0x14(%rbx,%r13,4)
//xor %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
xor %sil,0x432214(%rbx,%r13,4)
xor %r9b,0x69432214(%rbx,%r13,4)
xor %r13b,(%rbx,%r13,4)

xor %bx,0x14(%rbx,%rsi,4)
xor %si,0x432214(%rbx,%rsi,4)
xor %r9w,0x69432214(%rsi,%rbx,4)
xor %r13w,(%rsi,%rbx,4)

xor %bx,0x14(%rbx,%r9,4)
xor %si,0x432214(%rbx,%r9,4)
xor %r9w,0x69432214(%rbx,%r9,4)
xor %r13w,(%rbx,%r9,4)

xor %bx,0x14(%rbx,%r13,4)
xor %si,0x432214(%rbx,%r13,4)
xor %r9w,0x69432214(%rbx,%r13,4)
xor %r13w,(%rbx,%r13,4)

xor %ebx,0x14(%rbx,%rsi,4)
xor %esi,0x432214(%rbx,%rsi,4)
xor %r9d,0x69432214(%rsi,%rbx,4)
xor %r13d,(%rsi,%rbx,4)

xor %ebx,0x14(%rbx,%r9,4)
xor %esi,0x432214(%rbx,%r9,4)
xor %r9d,0x69432214(%rbx,%r9,4)
xor %r13d,(%rbx,%r9,4)

xor %ebx,0x14(%rbx,%r13,4)
xor %esi,0x432214(%rbx,%r13,4)
xor %r9d,0x69432214(%rbx,%r13,4)
xor %r13d,(%rbx,%r13,4)

xor %rbx,0x14(%rbx,%rsi,4)
xor %rsi,0x432214(%rbx,%rsi,4)
xor %r9,0x69432214(%rsi,%rbx,4)
xor %r13,(%rsi,%rbx,4)

xor %rbx,0x14(%rbx,%r9,4)
xor %rsi,0x432214(%rbx,%r9,4)
xor %r9,0x69432214(%rbx,%r9,4)
xor %r13,(%rbx,%r9,4)

xor %rbx,0x14(%rbx,%r13,4)
xor %rsi,0x432214(%rbx,%r13,4)
xor %r9,0x69432214(%rbx,%r13,4)
xor %r13,(%rbx,%r13,4)

xor %rbx,0x14(%r9,%r13,4)
xor %rsi,0x432214(%r9,%r13,4)
xor %r9,0x69432214(%r9,%r13,4)
xor %r13,(%r9,%r13,4)

xor %r13,(%rbx,%r13,4)
xor %r13,(%r9,%rbx,4)

xor %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

xor (%ebx),%bl
xor 0x14(%ebx),%dh
xor 0x2814(%ebx),%sil
xor 0x792814(%ebx),%r9b
xor 0x7b792814(%ebx),%r13b

xor 0x14(%ebx),%bx
xor 0x14(%ebx),%si
xor 0x14(%ebx),%r9w
xor 0x14(%ebx),%r13w

xor 0x14(%ebx),%ebx
xor 0x14(%ebx),%esi
xor 0x14(%ebx),%r9d
xor 0x14(%ebx),%r13d

xor 0x14(%ebx),%rbx
xor 0x14(%ebx),%rsi
xor 0x14(%ebx),%r9
xor 0x14(%ebx),%r13

xor 0x14(%esi),%bl
xor 0x14(%esi),%dh
xor 0x14(%esi),%sil
xor 0x14(%esi),%r9b
xor 0x14(%esi),%r13b

xor 0x14(%esi),%bx
xor 0x14(%esi),%si
xor 0x14(%esi),%r9w
xor 0x14(%esi),%r13w

xor 0x14(%esi),%ebx
xor 0x14(%esi),%esi
xor 0x14(%esi),%r9d
xor 0x14(%esi),%r13d

xor 0x14(%esi),%rbx
xor 0x14(%esi),%rsi
xor 0x14(%esi),%r9
xor 0x14(%esi),%r13

xor 0x14(%r9d),%bl
// xor 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
xor 0x14(%r9d),%sil
xor 0x14(%r9d),%r9b
xor 0x14(%r9d),%r13b

xor 0x14(%r9d),%bx
xor 0x14(%r9d),%si
xor 0x14(%r9d),%r9w
xor 0x14(%r9d),%r13w

xor 0x14(%r9d),%ebx
xor 0x14(%r9d),%esi
xor 0x14(%r9d),%r9d
xor 0x14(%r9d),%r13d

xor 0x14(%r9d),%rbx
xor 0x14(%r9d),%rsi
xor 0x14(%r9d),%r9
xor 0x14(%r9d),%r13

xor 0x14(%r13d),%bl
// xor 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
xor 0x14(%r13d),%sil
xor 0x14(%r13d),%r9b
xor 0x14(%r13d),%r13b

xor 0x14(%r13d),%bx
xor 0x14(%r13d),%si
xor 0x14(%r13d),%r9w
xor 0x14(%r13d),%r13w

xor 0x14(%r13d),%ebx
xor 0x14(%r13d),%esi
xor 0x14(%r13d),%r9d
xor 0x14(%r13d),%r13d

xor 0x14(%r13d),%rbx
xor 0x14(%r13d),%rsi
xor 0x14(%r13d),%r9
xor 0x14(%r13d),%r13

// -----------------

xor 0x14(%rbx),%bl
xor 0x14(%rbx),%dh
xor 0x14(%rbx),%sil
xor 0x14(%rbx),%r9b
xor 0x14(%rbx),%r13b

xor 0x14(%rbx),%bx
xor 0x14(%rbx),%si
xor 0x14(%rbx),%r9w
xor 0x14(%rbx),%r13w

xor 0x14(%rbx),%ebx
xor 0x14(%rbx),%esi
xor 0x14(%rbx),%r9d
xor 0x14(%rbx),%r13d

xor 0x14(%rbx),%rbx
xor 0x14(%rbx),%rsi
xor 0x14(%rbx),%r9
xor 0x14(%rbx),%r13

xor 0x14(%rsi),%bl
xor 0x14(%rsi),%dh
xor 0x14(%rsi),%sil
xor 0x14(%rsi),%r9b
xor 0x14(%rsi),%r13b

xor 0x14(%rsi),%bx
xor 0x14(%rsi),%si
xor 0x14(%rsi),%r9w
xor 0x14(%rsi),%r13w

xor 0x14(%rsi),%ebx
xor 0x14(%rsi),%esi
xor 0x14(%rsi),%r9d
xor 0x14(%rsi),%r13d

xor 0x14(%rsi),%rbx
xor 0x14(%rsi),%rsi
xor 0x14(%rsi),%r9
xor 0x14(%rsi),%r13

xor 0x14(%r9),%bl
// xor 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
xor 0x14(%r9),%sil
xor 0x14(%r9),%r9b
xor 0x14(%r9),%r13b

xor 0x14(%r9),%bx
xor 0x14(%r9),%si
xor 0x14(%r9),%r9w
xor 0x14(%r9),%r13w

xor 0x14(%r9),%ebx
xor 0x14(%r9),%esi
xor 0x14(%r9),%r9d
xor 0x14(%r9),%r13d

xor 0x14(%r9),%rbx
xor 0x14(%r9),%rsi
xor 0x14(%r9),%r9
xor 0x14(%r9),%r13

xor 0x14(%r13),%bl
// xor 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
xor 0x14(%r13),%sil
xor 0x14(%r13),%r9b
xor 0x14(%r13),%r13b

xor 0x14(%r13),%bx
xor 0x14(%r13),%si
xor 0x14(%r13),%r9w
xor 0x14(%r13),%r13w

xor 0x14(%r13),%ebx
xor 0x14(%r13),%esi
xor 0x14(%r13),%r9d
xor 0x14(%r13),%r13d

xor 0x14(%r13),%rbx
xor 0x14(%r13),%rsi
xor 0x14(%r13),%r9
xor 0x14(%r13),%r13

// xor 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


xor 0x14(%ebx,%esi),%bl
xor 0x2214(%ebx,%esi,2),%dh
xor 0x432214(%ebx,%esi,4),%sil
xor 0x69432214(%esi,%ebx,8),%r9b
xor (%esi,%ebx,1),%r13b

xor 0x14(%ebx,%r9d,4),%bl
//xor 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
xor 0x432214(%ebx,%r9d,4),%sil
xor 0x69432214(%ebx,%r9d,4),%r9b
xor (%ebx,%r9d,4),%r13b

xor 0x14(%ebx,%r13d,4),%bl
//xor 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
xor 0x432214(%ebx,%r13d,4),%sil
xor 0x69432214(%ebx,%r13d,4),%r9b
xor (%ebx,%r13d,4),%r13b

xor 0x14(%ebx,%esi,4),%bx
xor 0x432214(%ebx,%esi,4),%si
xor 0x69432214(%esi,%ebx,4),%r9w
xor (%esi,%ebx,4),%r13w

xor 0x14(%ebx,%r9d,4),%bx
xor 0x432214(%ebx,%r9d,4),%si
xor 0x69432214(%ebx,%r9d,4),%r9w
xor (%ebx,%r9d,4),%r13w

xor 0x14(%ebx,%r13d,4),%bx
xor 0x432214(%ebx,%r13d,4),%si
xor 0x69432214(%ebx,%r13d,4),%r9w
xor (%ebx,%r13d,4),%r13w

xor 0x14(%ebx,%esi,4),%ebx
xor 0x432214(%ebx,%esi,4),%esi
xor 0x69432214(%esi,%ebx,4),%r9d
xor (%esi,%ebx,4),%r13d

xor 0x14(%ebx,%r9d,4),%ebx
xor 0x432214(%ebx,%r9d,4),%esi
xor 0x69432214(%ebx,%r9d,4),%r9d
xor (%ebx,%r9d,4),%r13d

xor 0x14(%ebx,%r13d,4),%ebx
xor 0x432214(%ebx,%r13d,4),%esi
xor 0x69432214(%ebx,%r13d,4),%r9d
xor (%ebx,%r13d,4),%r13d

xor 0x14(%ebx,%esi,4),%rbx
xor 0x432214(%ebx,%esi,4),%rsi
xor 0x69432214(%esi,%ebx,4),%r9
xor (%esi,%ebx,4),%r13

xor 0x14(%ebx,%r9d,4),%rbx
xor 0x432214(%ebx,%r9d,4),%rsi
xor 0x69432214(%ebx,%r9d,4),%r9
xor (%ebx,%r9d,4),%r13

xor 0x14(%ebx,%r13d,4),%rbx
xor 0x432214(%ebx,%r13d,4),%rsi
xor 0x69432214(%ebx,%r13d,4),%r9
xor (%ebx,%r13d,4),%r13

xor 0x14(%r9d,%r13d,4),%rbx
xor 0x432214(%r9d,%r13d,4),%rsi
xor 0x69432214(%r9d,%r13d,4),%r9
xor (%r9d,%r13d,4),%r13


xor 0x14(%rbx,%rsi),%bl
xor 0x2214(%rbx,%rsi,2),%dh
xor 0x432214(%rbx,%rsi,4),%sil
xor 0x69432214(%rsi,%rbx,8),%r9b
xor (%rsi,%rbx,1),%r13b

xor 0x14(%rbx,%r9,4),%bl
//xor 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
xor 0x432214(%rbx,%r9,4),%sil
xor 0x69432214(%rbx,%r9,4),%r9b
xor (%rbx,%r9,4),%r13b

xor 0x14(%rbx,%r13,4),%bl
//xor 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
xor 0x432214(%rbx,%r13,4),%sil
xor 0x69432214(%rbx,%r13,4),%r9b
xor (%rbx,%r13,4),%r13b

xor 0x14(%rbx,%rsi,4),%bx
xor 0x432214(%rbx,%rsi,4),%si
xor 0x69432214(%rsi,%rbx,4),%r9w
xor (%rsi,%rbx,4),%r13w

xor 0x14(%rbx,%r9,4),%bx
xor 0x432214(%rbx,%r9,4),%si
xor 0x69432214(%rbx,%r9,4),%r9w
xor (%rbx,%r9,4),%r13w

xor 0x14(%rbx,%r13,4),%bx
xor 0x432214(%rbx,%r13,4),%si
xor 0x69432214(%rbx,%r13,4),%r9w
xor (%rbx,%r13,4),%r13w

xor 0x14(%rbx,%rsi,4),%ebx
xor 0x432214(%rbx,%rsi,4),%esi
xor 0x69432214(%rsi,%rbx,4),%r9d
xor (%rsi,%rbx,4),%r13d

xor 0x14(%rbx,%r9,4),%ebx
xor 0x432214(%rbx,%r9,4),%esi
xor 0x69432214(%rbx,%r9,4),%r9d
xor (%rbx,%r9,4),%r13d

xor 0x14(%rbx,%r13,4),%ebx
xor 0x432214(%rbx,%r13,4),%esi
xor 0x69432214(%rbx,%r13,4),%r9d
xor (%rbx,%r13,4),%r13d

xor 0x14(%rbx,%rsi,4),%rbx
xor 0x432214(%rbx,%rsi,4),%rsi
xor 0x69432214(%rsi,%rbx,4),%r9
xor (%rsi,%rbx,4),%r13

xor 0x14(%rbx,%r9,4),%rbx
xor 0x432214(%rbx,%r9,4),%rsi
xor 0x69432214(%rbx,%r9,4),%r9
xor (%rbx,%r9,4),%r13

xor 0x14(%rbx,%r13,4),%rbx
xor 0x432214(%rbx,%r13,4),%rsi
xor 0x69432214(%rbx,%r13,4),%r9
xor (%rbx,%r13,4),%r13

xor 0x14(%r9,%r13,4),%rbx
xor 0x432214(%r9,%r13,4),%rsi
xor 0x69432214(%r9,%r13,4),%r9
xor (%r9,%r13,4),%r13

xor (%rbx,%r13,4),%r13
xor (%r9,%rbx,4),%r13

xor (%rbx,%r13,4),%r13w
xor (%r9,%rbx,4),%r13w

xor (%rbx,%r13,4),%r13
xor (%r9,%rbx,4),%r13

xor (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

xor %bl, %bl
xor %dh, %bl
xor %sil, %bl
xor %r9b, %bl
xor %r13b, %bl

xor %bl, %dh
xor %dh, %dh
//xor %sil, %dh		ah-dh and REX error
//xor %r9b, %dh
//xor %r13b, %dh

xor %bl, %sil
//xor %dh, %sil		ah-dh and REX error
xor %sil, %sil
xor %r9b, %sil
xor %r13b, %sil

xor %bl, %r9b
//xor %dh, %r9b		ah,bh,ch,dh and REX error
xor %sil, %r9b
xor %r9b, %r9b
xor %r13b, %r9b

xor %bl, %r13b
//xor %dh, %r13b	ah,bh,ch,dh and REX error
xor %sil, %r13b
xor %r9b, %r13b
xor %r13b, %r13b

xor %bx, %bx
xor %si, %bx
xor %r9w, %bx
xor %r13w, %bx

xor %bx, %si
xor %si, %si
xor %r9w, %si
xor %r13w, %si

xor %bx, %r9w
xor %si, %r9w
xor %r9w, %r9w
xor %r13w, %r9w

xor %bx, %r13w
xor %si, %r13w
xor %r9w, %r13w
xor %r13w, %r13w

xor %ebx, %ebx
xor %esi, %ebx
xor %r9d, %ebx
xor %r13d, %ebx

xor %ebx, %esi
xor %esi, %esi
xor %r9d, %esi
xor %r13d, %esi

xor %ebx, %r9d
xor %esi, %r9d
xor %r9d, %r9d
xor %r13d, %r9d

xor %ebx, %r13d
xor %esi, %r13d
xor %r9d, %r13d
xor %r13d, %r13d

xor %rbx, %rbx
xor %rsi, %rbx
xor %r9, %rbx
xor %r13, %rbx

xor %rbx, %rsi
xor %rsi, %rsi
xor %r9, %rsi
xor %r13, %rsi

xor %rbx, %r9
xor %rsi, %r9
xor %r9, %r9
xor %r13, %r9

xor %rbx, %r13
xor %rsi, %r13
xor %r9, %r13
xor %r13, %r13


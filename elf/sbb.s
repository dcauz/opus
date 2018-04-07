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
sbb %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
sbb %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
sbb %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
sbb %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
sbb %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
sbb %esi,0x3e8
// 11 34 25 e8 03 00 00 	
sbb %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
sbb %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
sbb %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
sbb %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
sbb %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
sbb %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
sbb %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
sbb %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
sbb %bl,0x3e8
// 
sbb %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
sbb %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
sbb %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
sbb %r13b,0x3e8

sbb %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

sbb %bl,(%ebx)
sbb %dh,0x14(%ebx)
sbb %sil,0x2814(%ebx)
sbb %r9b,0x792814(%ebx)
sbb %r13b,0x7b792814(%ebx)

sbb %bx,0x14(%ebx)
sbb %si,0x14(%ebx)
sbb %r9w,0x14(%ebx)
sbb %r13w,0x14(%ebx)

sbb %ebx,0x14(%ebx)
sbb %esi,0x14(%ebx)
sbb %r9d,0x14(%ebx)
sbb %r13d,0x14(%ebx)

sbb %rbx,0x14(%ebx)
sbb %rsi,0x14(%ebx)
sbb %r9,0x14(%ebx)
sbb %r13,0x14(%ebx)

sbb %bl,0x14(%esi)
sbb %dh,0x14(%esi)
sbb %sil,0x14(%esi)
sbb %r9b,0x14(%esi)
sbb %r13b,0x14(%esi)

sbb %bx,0x14(%esi)
sbb %si,0x14(%esi)
sbb %r9w,0x14(%esi)
sbb %r13w,0x14(%esi)

sbb %ebx,0x14(%esi)
sbb %esi,0x14(%esi)
sbb %r9d,0x14(%esi)
sbb %r13d,0x14(%esi)

sbb %rbx,0x14(%esi)
sbb %rsi,0x14(%esi)
sbb %r9,0x14(%esi)
sbb %r13,0x14(%esi)

sbb %bl,0x14(%r9d)
// sbb %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
sbb %sil,0x14(%r9d)
sbb %r9b,0x14(%r9d)
sbb %r13b,0x14(%r9d)

sbb %bx,0x14(%r9d)
sbb %si,0x14(%r9d)
sbb %r9w,0x14(%r9d)
sbb %r13w,0x14(%r9d)

sbb %ebx,0x14(%r9d)
sbb %esi,0x14(%r9d)
sbb %r9d,0x14(%r9d)
sbb %r13d,0x14(%r9d)

sbb %rbx,0x14(%r9d)
sbb %rsi,0x14(%r9d)
sbb %r9,0x14(%r9d)
sbb %r13,0x14(%r9d)

sbb %bl,0x14(%r13d)
// sbb %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
sbb %sil,0x14(%r13d)
sbb %r9b,0x14(%r13d)
sbb %r13b,0x14(%r13d)

sbb %bx,0x14(%r13d)
sbb %si,0x14(%r13d)
sbb %r9w,0x14(%r13d)
sbb %r13w,0x14(%r13d)

sbb %ebx,0x14(%r13d)
sbb %esi,0x14(%r13d)
sbb %r9d,0x14(%r13d)
sbb %r13d,0x14(%r13d)

sbb %rbx,0x14(%r13d)
sbb %rsi,0x14(%r13d)
sbb %r9,0x14(%r13d)
sbb %r13,0x14(%r13d)

// -----------------

sbb %bl,0x14(%rbx)
sbb %dh,0x14(%rbx)
sbb %sil,0x14(%rbx)
sbb %r9b,0x14(%rbx)
sbb %r13b,0x14(%rbx)

sbb %bx,0x14(%rbx)
sbb %si,0x14(%rbx)
sbb %r9w,0x14(%rbx)
sbb %r13w,0x14(%rbx)

sbb %ebx,0x14(%rbx)
sbb %esi,0x14(%rbx)
sbb %r9d,0x14(%rbx)
sbb %r13d,0x14(%rbx)

sbb %rbx,0x14(%rbx)
sbb %rsi,0x14(%rbx)
sbb %r9,0x14(%rbx)
sbb %r13,0x14(%rbx)

sbb %bl,0x14(%rsi)
sbb %dh,0x14(%rsi)
sbb %sil,0x14(%rsi)
sbb %r9b,0x14(%rsi)
sbb %r13b,0x14(%rsi)

sbb %bx,0x14(%rsi)
sbb %si,0x14(%rsi)
sbb %r9w,0x14(%rsi)
sbb %r13w,0x14(%rsi)

sbb %ebx,0x14(%rsi)
sbb %esi,0x14(%rsi)
sbb %r9d,0x14(%rsi)
sbb %r13d,0x14(%rsi)

sbb %rbx,0x14(%rsi)
sbb %rsi,0x14(%rsi)
sbb %r9,0x14(%rsi)
sbb %r13,0x14(%rsi)

sbb %bl,0x14(%r9)
// sbb %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
sbb %sil,0x14(%r9)
sbb %r9b,0x14(%r9)
sbb %r13b,0x14(%r9)

sbb %bx,0x14(%r9)
sbb %si,0x14(%r9)
sbb %r9w,0x14(%r9)
sbb %r13w,0x14(%r9)

sbb %ebx,0x14(%r9)
sbb %esi,0x14(%r9)
sbb %r9d,0x14(%r9)
sbb %r13d,0x14(%r9)

sbb %rbx,0x14(%r9)
sbb %rsi,0x14(%r9)
sbb %r9,0x14(%r9)
sbb %r13,0x14(%r9)

sbb %bl,0x14(%r13)
// sbb %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
sbb %sil,0x14(%r13)
sbb %r9b,0x14(%r13)
sbb %r13b,0x14(%r13)

sbb %bx,0x14(%r13)
sbb %si,0x14(%r13)
sbb %r9w,0x14(%r13)
sbb %r13w,0x14(%r13)

sbb %ebx,0x14(%r13)
sbb %esi,0x14(%r13)
sbb %r9d,0x14(%r13)
sbb %r13d,0x14(%r13)

sbb %rbx,0x14(%r13)
sbb %rsi,0x14(%r13)
sbb %r9,0x14(%r13)
sbb %r13,0x14(%r13)

// sbb %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


sbb %bl,0x14(%ebx,%esi)
sbb %dh,0x2214(%ebx,%esi,2)
sbb %sil,0x432214(%ebx,%esi,4)
sbb %r9b,0x69432214(%esi,%ebx,8)
sbb %r13b,(%esi,%ebx,1)

sbb %bl,0x14(%ebx,%r9d,4)
//sbb %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
sbb %sil,0x432214(%ebx,%r9d,4)
sbb %r9b,0x69432214(%ebx,%r9d,4)
sbb %r13b,(%ebx,%r9d,4)

sbb %bl,0x14(%ebx,%r13d,4)
//sbb %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
sbb %sil,0x432214(%ebx,%r13d,4)
sbb %r9b,0x69432214(%ebx,%r13d,4)
sbb %r13b,(%ebx,%r13d,4)

sbb %bx,0x14(%ebx,%esi,4)
sbb %si,0x432214(%ebx,%esi,4)
sbb %r9w,0x69432214(%esi,%ebx,4)
sbb %r13w,(%esi,%ebx,4)

sbb %bx,0x14(%ebx,%r9d,4)
sbb %si,0x432214(%ebx,%r9d,4)
sbb %r9w,0x69432214(%ebx,%r9d,4)
sbb %r13w,(%ebx,%r9d,4)

sbb %bx,0x14(%ebx,%r13d,4)
sbb %si,0x432214(%ebx,%r13d,4)
sbb %r9w,0x69432214(%ebx,%r13d,4)
sbb %r13w,(%ebx,%r13d,4)

sbb %ebx,0x14(%ebx,%esi,4)
sbb %esi,0x432214(%ebx,%esi,4)
sbb %r9d,0x69432214(%esi,%ebx,4)
sbb %r13d,(%esi,%ebx,4)

sbb %ebx,0x14(%ebx,%r9d,4)
sbb %esi,0x432214(%ebx,%r9d,4)
sbb %r9d,0x69432214(%ebx,%r9d,4)
sbb %r13d,(%ebx,%r9d,4)

sbb %ebx,0x14(%ebx,%r13d,4)
sbb %esi,0x432214(%ebx,%r13d,4)
sbb %r9d,0x69432214(%ebx,%r13d,4)
sbb %r13d,(%ebx,%r13d,4)

sbb %rbx,0x14(%ebx,%esi,4)
sbb %rsi,0x432214(%ebx,%esi,4)
sbb %r9,0x69432214(%esi,%ebx,4)
sbb %r13,(%esi,%ebx,4)

sbb %rbx,0x14(%ebx,%r9d,4)
sbb %rsi,0x432214(%ebx,%r9d,4)
sbb %r9,0x69432214(%ebx,%r9d,4)
sbb %r13,(%ebx,%r9d,4)

sbb %rbx,0x14(%ebx,%r13d,4)
sbb %rsi,0x432214(%ebx,%r13d,4)
sbb %r9,0x69432214(%ebx,%r13d,4)
sbb %r13,(%ebx,%r13d,4)

sbb %rbx,0x14(%r9d,%r13d,4)
sbb %rsi,0x432214(%r9d,%r13d,4)
sbb %r9,0x69432214(%r9d,%r13d,4)
sbb %r13,(%r9d,%r13d,4)


sbb %bl,0x14(%rbx,%rsi)
sbb %dh,0x2214(%rbx,%rsi,2)
sbb %sil,0x432214(%rbx,%rsi,4)
sbb %r9b,0x69432214(%rsi,%rbx,8)
sbb %r13b,(%rsi,%rbx,1)

sbb %bl,0x14(%rbx,%r9,4)
//sbb %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
sbb %sil,0x432214(%rbx,%r9,4)
sbb %r9b,0x69432214(%rbx,%r9,4)
sbb %r13b,(%rbx,%r9,4)

sbb %bl,0x14(%rbx,%r13,4)
//sbb %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
sbb %sil,0x432214(%rbx,%r13,4)
sbb %r9b,0x69432214(%rbx,%r13,4)
sbb %r13b,(%rbx,%r13,4)

sbb %bx,0x14(%rbx,%rsi,4)
sbb %si,0x432214(%rbx,%rsi,4)
sbb %r9w,0x69432214(%rsi,%rbx,4)
sbb %r13w,(%rsi,%rbx,4)

sbb %bx,0x14(%rbx,%r9,4)
sbb %si,0x432214(%rbx,%r9,4)
sbb %r9w,0x69432214(%rbx,%r9,4)
sbb %r13w,(%rbx,%r9,4)

sbb %bx,0x14(%rbx,%r13,4)
sbb %si,0x432214(%rbx,%r13,4)
sbb %r9w,0x69432214(%rbx,%r13,4)
sbb %r13w,(%rbx,%r13,4)

sbb %ebx,0x14(%rbx,%rsi,4)
sbb %esi,0x432214(%rbx,%rsi,4)
sbb %r9d,0x69432214(%rsi,%rbx,4)
sbb %r13d,(%rsi,%rbx,4)

sbb %ebx,0x14(%rbx,%r9,4)
sbb %esi,0x432214(%rbx,%r9,4)
sbb %r9d,0x69432214(%rbx,%r9,4)
sbb %r13d,(%rbx,%r9,4)

sbb %ebx,0x14(%rbx,%r13,4)
sbb %esi,0x432214(%rbx,%r13,4)
sbb %r9d,0x69432214(%rbx,%r13,4)
sbb %r13d,(%rbx,%r13,4)

sbb %rbx,0x14(%rbx,%rsi,4)
sbb %rsi,0x432214(%rbx,%rsi,4)
sbb %r9,0x69432214(%rsi,%rbx,4)
sbb %r13,(%rsi,%rbx,4)

sbb %rbx,0x14(%rbx,%r9,4)
sbb %rsi,0x432214(%rbx,%r9,4)
sbb %r9,0x69432214(%rbx,%r9,4)
sbb %r13,(%rbx,%r9,4)

sbb %rbx,0x14(%rbx,%r13,4)
sbb %rsi,0x432214(%rbx,%r13,4)
sbb %r9,0x69432214(%rbx,%r13,4)
sbb %r13,(%rbx,%r13,4)

sbb %rbx,0x14(%r9,%r13,4)
sbb %rsi,0x432214(%r9,%r13,4)
sbb %r9,0x69432214(%r9,%r13,4)
sbb %r13,(%r9,%r13,4)

sbb %r13,(%rbx,%r13,4)
sbb %r13,(%r9,%rbx,4)

sbb %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

sbb (%ebx),%bl
sbb 0x14(%ebx),%dh
sbb 0x2814(%ebx),%sil
sbb 0x792814(%ebx),%r9b
sbb 0x7b792814(%ebx),%r13b

sbb 0x14(%ebx),%bx
sbb 0x14(%ebx),%si
sbb 0x14(%ebx),%r9w
sbb 0x14(%ebx),%r13w

sbb 0x14(%ebx),%ebx
sbb 0x14(%ebx),%esi
sbb 0x14(%ebx),%r9d
sbb 0x14(%ebx),%r13d

sbb 0x14(%ebx),%rbx
sbb 0x14(%ebx),%rsi
sbb 0x14(%ebx),%r9
sbb 0x14(%ebx),%r13

sbb 0x14(%esi),%bl
sbb 0x14(%esi),%dh
sbb 0x14(%esi),%sil
sbb 0x14(%esi),%r9b
sbb 0x14(%esi),%r13b

sbb 0x14(%esi),%bx
sbb 0x14(%esi),%si
sbb 0x14(%esi),%r9w
sbb 0x14(%esi),%r13w

sbb 0x14(%esi),%ebx
sbb 0x14(%esi),%esi
sbb 0x14(%esi),%r9d
sbb 0x14(%esi),%r13d

sbb 0x14(%esi),%rbx
sbb 0x14(%esi),%rsi
sbb 0x14(%esi),%r9
sbb 0x14(%esi),%r13

sbb 0x14(%r9d),%bl
// sbb 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
sbb 0x14(%r9d),%sil
sbb 0x14(%r9d),%r9b
sbb 0x14(%r9d),%r13b

sbb 0x14(%r9d),%bx
sbb 0x14(%r9d),%si
sbb 0x14(%r9d),%r9w
sbb 0x14(%r9d),%r13w

sbb 0x14(%r9d),%ebx
sbb 0x14(%r9d),%esi
sbb 0x14(%r9d),%r9d
sbb 0x14(%r9d),%r13d

sbb 0x14(%r9d),%rbx
sbb 0x14(%r9d),%rsi
sbb 0x14(%r9d),%r9
sbb 0x14(%r9d),%r13

sbb 0x14(%r13d),%bl
// sbb 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
sbb 0x14(%r13d),%sil
sbb 0x14(%r13d),%r9b
sbb 0x14(%r13d),%r13b

sbb 0x14(%r13d),%bx
sbb 0x14(%r13d),%si
sbb 0x14(%r13d),%r9w
sbb 0x14(%r13d),%r13w

sbb 0x14(%r13d),%ebx
sbb 0x14(%r13d),%esi
sbb 0x14(%r13d),%r9d
sbb 0x14(%r13d),%r13d

sbb 0x14(%r13d),%rbx
sbb 0x14(%r13d),%rsi
sbb 0x14(%r13d),%r9
sbb 0x14(%r13d),%r13

// -----------------

sbb 0x14(%rbx),%bl
sbb 0x14(%rbx),%dh
sbb 0x14(%rbx),%sil
sbb 0x14(%rbx),%r9b
sbb 0x14(%rbx),%r13b

sbb 0x14(%rbx),%bx
sbb 0x14(%rbx),%si
sbb 0x14(%rbx),%r9w
sbb 0x14(%rbx),%r13w

sbb 0x14(%rbx),%ebx
sbb 0x14(%rbx),%esi
sbb 0x14(%rbx),%r9d
sbb 0x14(%rbx),%r13d

sbb 0x14(%rbx),%rbx
sbb 0x14(%rbx),%rsi
sbb 0x14(%rbx),%r9
sbb 0x14(%rbx),%r13

sbb 0x14(%rsi),%bl
sbb 0x14(%rsi),%dh
sbb 0x14(%rsi),%sil
sbb 0x14(%rsi),%r9b
sbb 0x14(%rsi),%r13b

sbb 0x14(%rsi),%bx
sbb 0x14(%rsi),%si
sbb 0x14(%rsi),%r9w
sbb 0x14(%rsi),%r13w

sbb 0x14(%rsi),%ebx
sbb 0x14(%rsi),%esi
sbb 0x14(%rsi),%r9d
sbb 0x14(%rsi),%r13d

sbb 0x14(%rsi),%rbx
sbb 0x14(%rsi),%rsi
sbb 0x14(%rsi),%r9
sbb 0x14(%rsi),%r13

sbb 0x14(%r9),%bl
// sbb 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
sbb 0x14(%r9),%sil
sbb 0x14(%r9),%r9b
sbb 0x14(%r9),%r13b

sbb 0x14(%r9),%bx
sbb 0x14(%r9),%si
sbb 0x14(%r9),%r9w
sbb 0x14(%r9),%r13w

sbb 0x14(%r9),%ebx
sbb 0x14(%r9),%esi
sbb 0x14(%r9),%r9d
sbb 0x14(%r9),%r13d

sbb 0x14(%r9),%rbx
sbb 0x14(%r9),%rsi
sbb 0x14(%r9),%r9
sbb 0x14(%r9),%r13

sbb 0x14(%r13),%bl
// sbb 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
sbb 0x14(%r13),%sil
sbb 0x14(%r13),%r9b
sbb 0x14(%r13),%r13b

sbb 0x14(%r13),%bx
sbb 0x14(%r13),%si
sbb 0x14(%r13),%r9w
sbb 0x14(%r13),%r13w

sbb 0x14(%r13),%ebx
sbb 0x14(%r13),%esi
sbb 0x14(%r13),%r9d
sbb 0x14(%r13),%r13d

sbb 0x14(%r13),%rbx
sbb 0x14(%r13),%rsi
sbb 0x14(%r13),%r9
sbb 0x14(%r13),%r13

// sbb 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


sbb 0x14(%ebx,%esi),%bl
sbb 0x2214(%ebx,%esi,2),%dh
sbb 0x432214(%ebx,%esi,4),%sil
sbb 0x69432214(%esi,%ebx,8),%r9b
sbb (%esi,%ebx,1),%r13b

sbb 0x14(%ebx,%r9d,4),%bl
//sbb 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
sbb 0x432214(%ebx,%r9d,4),%sil
sbb 0x69432214(%ebx,%r9d,4),%r9b
sbb (%ebx,%r9d,4),%r13b

sbb 0x14(%ebx,%r13d,4),%bl
//sbb 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
sbb 0x432214(%ebx,%r13d,4),%sil
sbb 0x69432214(%ebx,%r13d,4),%r9b
sbb (%ebx,%r13d,4),%r13b

sbb 0x14(%ebx,%esi,4),%bx
sbb 0x432214(%ebx,%esi,4),%si
sbb 0x69432214(%esi,%ebx,4),%r9w
sbb (%esi,%ebx,4),%r13w

sbb 0x14(%ebx,%r9d,4),%bx
sbb 0x432214(%ebx,%r9d,4),%si
sbb 0x69432214(%ebx,%r9d,4),%r9w
sbb (%ebx,%r9d,4),%r13w

sbb 0x14(%ebx,%r13d,4),%bx
sbb 0x432214(%ebx,%r13d,4),%si
sbb 0x69432214(%ebx,%r13d,4),%r9w
sbb (%ebx,%r13d,4),%r13w

sbb 0x14(%ebx,%esi,4),%ebx
sbb 0x432214(%ebx,%esi,4),%esi
sbb 0x69432214(%esi,%ebx,4),%r9d
sbb (%esi,%ebx,4),%r13d

sbb 0x14(%ebx,%r9d,4),%ebx
sbb 0x432214(%ebx,%r9d,4),%esi
sbb 0x69432214(%ebx,%r9d,4),%r9d
sbb (%ebx,%r9d,4),%r13d

sbb 0x14(%ebx,%r13d,4),%ebx
sbb 0x432214(%ebx,%r13d,4),%esi
sbb 0x69432214(%ebx,%r13d,4),%r9d
sbb (%ebx,%r13d,4),%r13d

sbb 0x14(%ebx,%esi,4),%rbx
sbb 0x432214(%ebx,%esi,4),%rsi
sbb 0x69432214(%esi,%ebx,4),%r9
sbb (%esi,%ebx,4),%r13

sbb 0x14(%ebx,%r9d,4),%rbx
sbb 0x432214(%ebx,%r9d,4),%rsi
sbb 0x69432214(%ebx,%r9d,4),%r9
sbb (%ebx,%r9d,4),%r13

sbb 0x14(%ebx,%r13d,4),%rbx
sbb 0x432214(%ebx,%r13d,4),%rsi
sbb 0x69432214(%ebx,%r13d,4),%r9
sbb (%ebx,%r13d,4),%r13

sbb 0x14(%r9d,%r13d,4),%rbx
sbb 0x432214(%r9d,%r13d,4),%rsi
sbb 0x69432214(%r9d,%r13d,4),%r9
sbb (%r9d,%r13d,4),%r13


sbb 0x14(%rbx,%rsi),%bl
sbb 0x2214(%rbx,%rsi,2),%dh
sbb 0x432214(%rbx,%rsi,4),%sil
sbb 0x69432214(%rsi,%rbx,8),%r9b
sbb (%rsi,%rbx,1),%r13b

sbb 0x14(%rbx,%r9,4),%bl
//sbb 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
sbb 0x432214(%rbx,%r9,4),%sil
sbb 0x69432214(%rbx,%r9,4),%r9b
sbb (%rbx,%r9,4),%r13b

sbb 0x14(%rbx,%r13,4),%bl
//sbb 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
sbb 0x432214(%rbx,%r13,4),%sil
sbb 0x69432214(%rbx,%r13,4),%r9b
sbb (%rbx,%r13,4),%r13b

sbb 0x14(%rbx,%rsi,4),%bx
sbb 0x432214(%rbx,%rsi,4),%si
sbb 0x69432214(%rsi,%rbx,4),%r9w
sbb (%rsi,%rbx,4),%r13w

sbb 0x14(%rbx,%r9,4),%bx
sbb 0x432214(%rbx,%r9,4),%si
sbb 0x69432214(%rbx,%r9,4),%r9w
sbb (%rbx,%r9,4),%r13w

sbb 0x14(%rbx,%r13,4),%bx
sbb 0x432214(%rbx,%r13,4),%si
sbb 0x69432214(%rbx,%r13,4),%r9w
sbb (%rbx,%r13,4),%r13w

sbb 0x14(%rbx,%rsi,4),%ebx
sbb 0x432214(%rbx,%rsi,4),%esi
sbb 0x69432214(%rsi,%rbx,4),%r9d
sbb (%rsi,%rbx,4),%r13d

sbb 0x14(%rbx,%r9,4),%ebx
sbb 0x432214(%rbx,%r9,4),%esi
sbb 0x69432214(%rbx,%r9,4),%r9d
sbb (%rbx,%r9,4),%r13d

sbb 0x14(%rbx,%r13,4),%ebx
sbb 0x432214(%rbx,%r13,4),%esi
sbb 0x69432214(%rbx,%r13,4),%r9d
sbb (%rbx,%r13,4),%r13d

sbb 0x14(%rbx,%rsi,4),%rbx
sbb 0x432214(%rbx,%rsi,4),%rsi
sbb 0x69432214(%rsi,%rbx,4),%r9
sbb (%rsi,%rbx,4),%r13

sbb 0x14(%rbx,%r9,4),%rbx
sbb 0x432214(%rbx,%r9,4),%rsi
sbb 0x69432214(%rbx,%r9,4),%r9
sbb (%rbx,%r9,4),%r13

sbb 0x14(%rbx,%r13,4),%rbx
sbb 0x432214(%rbx,%r13,4),%rsi
sbb 0x69432214(%rbx,%r13,4),%r9
sbb (%rbx,%r13,4),%r13

sbb 0x14(%r9,%r13,4),%rbx
sbb 0x432214(%r9,%r13,4),%rsi
sbb 0x69432214(%r9,%r13,4),%r9
sbb (%r9,%r13,4),%r13

sbb (%rbx,%r13,4),%r13
sbb (%r9,%rbx,4),%r13

sbb (%rbx,%r13,4),%r13w
sbb (%r9,%rbx,4),%r13w

sbb (%rbx,%r13,4),%r13
sbb (%r9,%rbx,4),%r13

sbb (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

sbb %bl, %bl
sbb %dh, %bl
sbb %sil, %bl
sbb %r9b, %bl
sbb %r13b, %bl

sbb %bl, %dh
sbb %dh, %dh
//sbb %sil, %dh		ah-dh and REX error
//sbb %r9b, %dh
//sbb %r13b, %dh

sbb %bl, %sil
//sbb %dh, %sil		ah-dh and REX error
sbb %sil, %sil
sbb %r9b, %sil
sbb %r13b, %sil

sbb %bl, %r9b
//sbb %dh, %r9b		ah,bh,ch,dh and REX error
sbb %sil, %r9b
sbb %r9b, %r9b
sbb %r13b, %r9b

sbb %bl, %r13b
//sbb %dh, %r13b	ah,bh,ch,dh and REX error
sbb %sil, %r13b
sbb %r9b, %r13b
sbb %r13b, %r13b

sbb %bx, %bx
sbb %si, %bx
sbb %r9w, %bx
sbb %r13w, %bx

sbb %bx, %si
sbb %si, %si
sbb %r9w, %si
sbb %r13w, %si

sbb %bx, %r9w
sbb %si, %r9w
sbb %r9w, %r9w
sbb %r13w, %r9w

sbb %bx, %r13w
sbb %si, %r13w
sbb %r9w, %r13w
sbb %r13w, %r13w

sbb %ebx, %ebx
sbb %esi, %ebx
sbb %r9d, %ebx
sbb %r13d, %ebx

sbb %ebx, %esi
sbb %esi, %esi
sbb %r9d, %esi
sbb %r13d, %esi

sbb %ebx, %r9d
sbb %esi, %r9d
sbb %r9d, %r9d
sbb %r13d, %r9d

sbb %ebx, %r13d
sbb %esi, %r13d
sbb %r9d, %r13d
sbb %r13d, %r13d

sbb %rbx, %rbx
sbb %rsi, %rbx
sbb %r9, %rbx
sbb %r13, %rbx

sbb %rbx, %rsi
sbb %rsi, %rsi
sbb %r9, %rsi
sbb %r13, %rsi

sbb %rbx, %r9
sbb %rsi, %r9
sbb %r9, %r9
sbb %r13, %r9

sbb %rbx, %r13
sbb %rsi, %r13
sbb %r9, %r13
sbb %r13, %r13


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
cmp %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
cmp %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
cmp %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
cmp %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
cmp %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
cmp %esi,0x3e8
// 11 34 25 e8 03 00 00 	
cmp %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
cmp %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
cmp %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
cmp %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
cmp %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
cmp %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
cmp %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
cmp %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
cmp %bl,0x3e8
// 
cmp %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
cmp %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
cmp %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
cmp %r13b,0x3e8

cmp %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

cmp %bl,(%ebx)
cmp %dh,0x14(%ebx)
cmp %sil,0x2814(%ebx)
cmp %r9b,0x792814(%ebx)
cmp %r13b,0x7b792814(%ebx)

cmp %bx,0x14(%ebx)
cmp %si,0x14(%ebx)
cmp %r9w,0x14(%ebx)
cmp %r13w,0x14(%ebx)

cmp %ebx,0x14(%ebx)
cmp %esi,0x14(%ebx)
cmp %r9d,0x14(%ebx)
cmp %r13d,0x14(%ebx)

cmp %rbx,0x14(%ebx)
cmp %rsi,0x14(%ebx)
cmp %r9,0x14(%ebx)
cmp %r13,0x14(%ebx)

cmp %bl,0x14(%esi)
cmp %dh,0x14(%esi)
cmp %sil,0x14(%esi)
cmp %r9b,0x14(%esi)
cmp %r13b,0x14(%esi)

cmp %bx,0x14(%esi)
cmp %si,0x14(%esi)
cmp %r9w,0x14(%esi)
cmp %r13w,0x14(%esi)

cmp %ebx,0x14(%esi)
cmp %esi,0x14(%esi)
cmp %r9d,0x14(%esi)
cmp %r13d,0x14(%esi)

cmp %rbx,0x14(%esi)
cmp %rsi,0x14(%esi)
cmp %r9,0x14(%esi)
cmp %r13,0x14(%esi)

cmp %bl,0x14(%r9d)
// cmp %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
cmp %sil,0x14(%r9d)
cmp %r9b,0x14(%r9d)
cmp %r13b,0x14(%r9d)

cmp %bx,0x14(%r9d)
cmp %si,0x14(%r9d)
cmp %r9w,0x14(%r9d)
cmp %r13w,0x14(%r9d)

cmp %ebx,0x14(%r9d)
cmp %esi,0x14(%r9d)
cmp %r9d,0x14(%r9d)
cmp %r13d,0x14(%r9d)

cmp %rbx,0x14(%r9d)
cmp %rsi,0x14(%r9d)
cmp %r9,0x14(%r9d)
cmp %r13,0x14(%r9d)

cmp %bl,0x14(%r13d)
// cmp %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
cmp %sil,0x14(%r13d)
cmp %r9b,0x14(%r13d)
cmp %r13b,0x14(%r13d)

cmp %bx,0x14(%r13d)
cmp %si,0x14(%r13d)
cmp %r9w,0x14(%r13d)
cmp %r13w,0x14(%r13d)

cmp %ebx,0x14(%r13d)
cmp %esi,0x14(%r13d)
cmp %r9d,0x14(%r13d)
cmp %r13d,0x14(%r13d)

cmp %rbx,0x14(%r13d)
cmp %rsi,0x14(%r13d)
cmp %r9,0x14(%r13d)
cmp %r13,0x14(%r13d)

// -----------------

cmp %bl,0x14(%rbx)
cmp %dh,0x14(%rbx)
cmp %sil,0x14(%rbx)
cmp %r9b,0x14(%rbx)
cmp %r13b,0x14(%rbx)

cmp %bx,0x14(%rbx)
cmp %si,0x14(%rbx)
cmp %r9w,0x14(%rbx)
cmp %r13w,0x14(%rbx)

cmp %ebx,0x14(%rbx)
cmp %esi,0x14(%rbx)
cmp %r9d,0x14(%rbx)
cmp %r13d,0x14(%rbx)

cmp %rbx,0x14(%rbx)
cmp %rsi,0x14(%rbx)
cmp %r9,0x14(%rbx)
cmp %r13,0x14(%rbx)

cmp %bl,0x14(%rsi)
cmp %dh,0x14(%rsi)
cmp %sil,0x14(%rsi)
cmp %r9b,0x14(%rsi)
cmp %r13b,0x14(%rsi)

cmp %bx,0x14(%rsi)
cmp %si,0x14(%rsi)
cmp %r9w,0x14(%rsi)
cmp %r13w,0x14(%rsi)

cmp %ebx,0x14(%rsi)
cmp %esi,0x14(%rsi)
cmp %r9d,0x14(%rsi)
cmp %r13d,0x14(%rsi)

cmp %rbx,0x14(%rsi)
cmp %rsi,0x14(%rsi)
cmp %r9,0x14(%rsi)
cmp %r13,0x14(%rsi)

cmp %bl,0x14(%r9)
// cmp %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
cmp %sil,0x14(%r9)
cmp %r9b,0x14(%r9)
cmp %r13b,0x14(%r9)

cmp %bx,0x14(%r9)
cmp %si,0x14(%r9)
cmp %r9w,0x14(%r9)
cmp %r13w,0x14(%r9)

cmp %ebx,0x14(%r9)
cmp %esi,0x14(%r9)
cmp %r9d,0x14(%r9)
cmp %r13d,0x14(%r9)

cmp %rbx,0x14(%r9)
cmp %rsi,0x14(%r9)
cmp %r9,0x14(%r9)
cmp %r13,0x14(%r9)

cmp %bl,0x14(%r13)
// cmp %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
cmp %sil,0x14(%r13)
cmp %r9b,0x14(%r13)
cmp %r13b,0x14(%r13)

cmp %bx,0x14(%r13)
cmp %si,0x14(%r13)
cmp %r9w,0x14(%r13)
cmp %r13w,0x14(%r13)

cmp %ebx,0x14(%r13)
cmp %esi,0x14(%r13)
cmp %r9d,0x14(%r13)
cmp %r13d,0x14(%r13)

cmp %rbx,0x14(%r13)
cmp %rsi,0x14(%r13)
cmp %r9,0x14(%r13)
cmp %r13,0x14(%r13)

// cmp %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


cmp %bl,0x14(%ebx,%esi)
cmp %dh,0x2214(%ebx,%esi,2)
cmp %sil,0x432214(%ebx,%esi,4)
cmp %r9b,0x69432214(%esi,%ebx,8)
cmp %r13b,(%esi,%ebx,1)

cmp %bl,0x14(%ebx,%r9d,4)
//cmp %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
cmp %sil,0x432214(%ebx,%r9d,4)
cmp %r9b,0x69432214(%ebx,%r9d,4)
cmp %r13b,(%ebx,%r9d,4)

cmp %bl,0x14(%ebx,%r13d,4)
//cmp %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
cmp %sil,0x432214(%ebx,%r13d,4)
cmp %r9b,0x69432214(%ebx,%r13d,4)
cmp %r13b,(%ebx,%r13d,4)

cmp %bx,0x14(%ebx,%esi,4)
cmp %si,0x432214(%ebx,%esi,4)
cmp %r9w,0x69432214(%esi,%ebx,4)
cmp %r13w,(%esi,%ebx,4)

cmp %bx,0x14(%ebx,%r9d,4)
cmp %si,0x432214(%ebx,%r9d,4)
cmp %r9w,0x69432214(%ebx,%r9d,4)
cmp %r13w,(%ebx,%r9d,4)

cmp %bx,0x14(%ebx,%r13d,4)
cmp %si,0x432214(%ebx,%r13d,4)
cmp %r9w,0x69432214(%ebx,%r13d,4)
cmp %r13w,(%ebx,%r13d,4)

cmp %ebx,0x14(%ebx,%esi,4)
cmp %esi,0x432214(%ebx,%esi,4)
cmp %r9d,0x69432214(%esi,%ebx,4)
cmp %r13d,(%esi,%ebx,4)

cmp %ebx,0x14(%ebx,%r9d,4)
cmp %esi,0x432214(%ebx,%r9d,4)
cmp %r9d,0x69432214(%ebx,%r9d,4)
cmp %r13d,(%ebx,%r9d,4)

cmp %ebx,0x14(%ebx,%r13d,4)
cmp %esi,0x432214(%ebx,%r13d,4)
cmp %r9d,0x69432214(%ebx,%r13d,4)
cmp %r13d,(%ebx,%r13d,4)

cmp %rbx,0x14(%ebx,%esi,4)
cmp %rsi,0x432214(%ebx,%esi,4)
cmp %r9,0x69432214(%esi,%ebx,4)
cmp %r13,(%esi,%ebx,4)

cmp %rbx,0x14(%ebx,%r9d,4)
cmp %rsi,0x432214(%ebx,%r9d,4)
cmp %r9,0x69432214(%ebx,%r9d,4)
cmp %r13,(%ebx,%r9d,4)

cmp %rbx,0x14(%ebx,%r13d,4)
cmp %rsi,0x432214(%ebx,%r13d,4)
cmp %r9,0x69432214(%ebx,%r13d,4)
cmp %r13,(%ebx,%r13d,4)

cmp %rbx,0x14(%r9d,%r13d,4)
cmp %rsi,0x432214(%r9d,%r13d,4)
cmp %r9,0x69432214(%r9d,%r13d,4)
cmp %r13,(%r9d,%r13d,4)


cmp %bl,0x14(%rbx,%rsi)
cmp %dh,0x2214(%rbx,%rsi,2)
cmp %sil,0x432214(%rbx,%rsi,4)
cmp %r9b,0x69432214(%rsi,%rbx,8)
cmp %r13b,(%rsi,%rbx,1)

cmp %bl,0x14(%rbx,%r9,4)
//cmp %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
cmp %sil,0x432214(%rbx,%r9,4)
cmp %r9b,0x69432214(%rbx,%r9,4)
cmp %r13b,(%rbx,%r9,4)

cmp %bl,0x14(%rbx,%r13,4)
//cmp %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
cmp %sil,0x432214(%rbx,%r13,4)
cmp %r9b,0x69432214(%rbx,%r13,4)
cmp %r13b,(%rbx,%r13,4)

cmp %bx,0x14(%rbx,%rsi,4)
cmp %si,0x432214(%rbx,%rsi,4)
cmp %r9w,0x69432214(%rsi,%rbx,4)
cmp %r13w,(%rsi,%rbx,4)

cmp %bx,0x14(%rbx,%r9,4)
cmp %si,0x432214(%rbx,%r9,4)
cmp %r9w,0x69432214(%rbx,%r9,4)
cmp %r13w,(%rbx,%r9,4)

cmp %bx,0x14(%rbx,%r13,4)
cmp %si,0x432214(%rbx,%r13,4)
cmp %r9w,0x69432214(%rbx,%r13,4)
cmp %r13w,(%rbx,%r13,4)

cmp %ebx,0x14(%rbx,%rsi,4)
cmp %esi,0x432214(%rbx,%rsi,4)
cmp %r9d,0x69432214(%rsi,%rbx,4)
cmp %r13d,(%rsi,%rbx,4)

cmp %ebx,0x14(%rbx,%r9,4)
cmp %esi,0x432214(%rbx,%r9,4)
cmp %r9d,0x69432214(%rbx,%r9,4)
cmp %r13d,(%rbx,%r9,4)

cmp %ebx,0x14(%rbx,%r13,4)
cmp %esi,0x432214(%rbx,%r13,4)
cmp %r9d,0x69432214(%rbx,%r13,4)
cmp %r13d,(%rbx,%r13,4)

cmp %rbx,0x14(%rbx,%rsi,4)
cmp %rsi,0x432214(%rbx,%rsi,4)
cmp %r9,0x69432214(%rsi,%rbx,4)
cmp %r13,(%rsi,%rbx,4)

cmp %rbx,0x14(%rbx,%r9,4)
cmp %rsi,0x432214(%rbx,%r9,4)
cmp %r9,0x69432214(%rbx,%r9,4)
cmp %r13,(%rbx,%r9,4)

cmp %rbx,0x14(%rbx,%r13,4)
cmp %rsi,0x432214(%rbx,%r13,4)
cmp %r9,0x69432214(%rbx,%r13,4)
cmp %r13,(%rbx,%r13,4)

cmp %rbx,0x14(%r9,%r13,4)
cmp %rsi,0x432214(%r9,%r13,4)
cmp %r9,0x69432214(%r9,%r13,4)
cmp %r13,(%r9,%r13,4)

cmp %r13,(%rbx,%r13,4)
cmp %r13,(%r9,%rbx,4)

cmp %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

cmp (%ebx),%bl
cmp 0x14(%ebx),%dh
cmp 0x2814(%ebx),%sil
cmp 0x792814(%ebx),%r9b
cmp 0x7b792814(%ebx),%r13b

cmp 0x14(%ebx),%bx
cmp 0x14(%ebx),%si
cmp 0x14(%ebx),%r9w
cmp 0x14(%ebx),%r13w

cmp 0x14(%ebx),%ebx
cmp 0x14(%ebx),%esi
cmp 0x14(%ebx),%r9d
cmp 0x14(%ebx),%r13d

cmp 0x14(%ebx),%rbx
cmp 0x14(%ebx),%rsi
cmp 0x14(%ebx),%r9
cmp 0x14(%ebx),%r13

cmp 0x14(%esi),%bl
cmp 0x14(%esi),%dh
cmp 0x14(%esi),%sil
cmp 0x14(%esi),%r9b
cmp 0x14(%esi),%r13b

cmp 0x14(%esi),%bx
cmp 0x14(%esi),%si
cmp 0x14(%esi),%r9w
cmp 0x14(%esi),%r13w

cmp 0x14(%esi),%ebx
cmp 0x14(%esi),%esi
cmp 0x14(%esi),%r9d
cmp 0x14(%esi),%r13d

cmp 0x14(%esi),%rbx
cmp 0x14(%esi),%rsi
cmp 0x14(%esi),%r9
cmp 0x14(%esi),%r13

cmp 0x14(%r9d),%bl
// cmp 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
cmp 0x14(%r9d),%sil
cmp 0x14(%r9d),%r9b
cmp 0x14(%r9d),%r13b

cmp 0x14(%r9d),%bx
cmp 0x14(%r9d),%si
cmp 0x14(%r9d),%r9w
cmp 0x14(%r9d),%r13w

cmp 0x14(%r9d),%ebx
cmp 0x14(%r9d),%esi
cmp 0x14(%r9d),%r9d
cmp 0x14(%r9d),%r13d

cmp 0x14(%r9d),%rbx
cmp 0x14(%r9d),%rsi
cmp 0x14(%r9d),%r9
cmp 0x14(%r9d),%r13

cmp 0x14(%r13d),%bl
// cmp 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
cmp 0x14(%r13d),%sil
cmp 0x14(%r13d),%r9b
cmp 0x14(%r13d),%r13b

cmp 0x14(%r13d),%bx
cmp 0x14(%r13d),%si
cmp 0x14(%r13d),%r9w
cmp 0x14(%r13d),%r13w

cmp 0x14(%r13d),%ebx
cmp 0x14(%r13d),%esi
cmp 0x14(%r13d),%r9d
cmp 0x14(%r13d),%r13d

cmp 0x14(%r13d),%rbx
cmp 0x14(%r13d),%rsi
cmp 0x14(%r13d),%r9
cmp 0x14(%r13d),%r13

// -----------------

cmp 0x14(%rbx),%bl
cmp 0x14(%rbx),%dh
cmp 0x14(%rbx),%sil
cmp 0x14(%rbx),%r9b
cmp 0x14(%rbx),%r13b

cmp 0x14(%rbx),%bx
cmp 0x14(%rbx),%si
cmp 0x14(%rbx),%r9w
cmp 0x14(%rbx),%r13w

cmp 0x14(%rbx),%ebx
cmp 0x14(%rbx),%esi
cmp 0x14(%rbx),%r9d
cmp 0x14(%rbx),%r13d

cmp 0x14(%rbx),%rbx
cmp 0x14(%rbx),%rsi
cmp 0x14(%rbx),%r9
cmp 0x14(%rbx),%r13

cmp 0x14(%rsi),%bl
cmp 0x14(%rsi),%dh
cmp 0x14(%rsi),%sil
cmp 0x14(%rsi),%r9b
cmp 0x14(%rsi),%r13b

cmp 0x14(%rsi),%bx
cmp 0x14(%rsi),%si
cmp 0x14(%rsi),%r9w
cmp 0x14(%rsi),%r13w

cmp 0x14(%rsi),%ebx
cmp 0x14(%rsi),%esi
cmp 0x14(%rsi),%r9d
cmp 0x14(%rsi),%r13d

cmp 0x14(%rsi),%rbx
cmp 0x14(%rsi),%rsi
cmp 0x14(%rsi),%r9
cmp 0x14(%rsi),%r13

cmp 0x14(%r9),%bl
// cmp 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
cmp 0x14(%r9),%sil
cmp 0x14(%r9),%r9b
cmp 0x14(%r9),%r13b

cmp 0x14(%r9),%bx
cmp 0x14(%r9),%si
cmp 0x14(%r9),%r9w
cmp 0x14(%r9),%r13w

cmp 0x14(%r9),%ebx
cmp 0x14(%r9),%esi
cmp 0x14(%r9),%r9d
cmp 0x14(%r9),%r13d

cmp 0x14(%r9),%rbx
cmp 0x14(%r9),%rsi
cmp 0x14(%r9),%r9
cmp 0x14(%r9),%r13

cmp 0x14(%r13),%bl
// cmp 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
cmp 0x14(%r13),%sil
cmp 0x14(%r13),%r9b
cmp 0x14(%r13),%r13b

cmp 0x14(%r13),%bx
cmp 0x14(%r13),%si
cmp 0x14(%r13),%r9w
cmp 0x14(%r13),%r13w

cmp 0x14(%r13),%ebx
cmp 0x14(%r13),%esi
cmp 0x14(%r13),%r9d
cmp 0x14(%r13),%r13d

cmp 0x14(%r13),%rbx
cmp 0x14(%r13),%rsi
cmp 0x14(%r13),%r9
cmp 0x14(%r13),%r13

// cmp 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


cmp 0x14(%ebx,%esi),%bl
cmp 0x2214(%ebx,%esi,2),%dh
cmp 0x432214(%ebx,%esi,4),%sil
cmp 0x69432214(%esi,%ebx,8),%r9b
cmp (%esi,%ebx,1),%r13b

cmp 0x14(%ebx,%r9d,4),%bl
//cmp 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
cmp 0x432214(%ebx,%r9d,4),%sil
cmp 0x69432214(%ebx,%r9d,4),%r9b
cmp (%ebx,%r9d,4),%r13b

cmp 0x14(%ebx,%r13d,4),%bl
//cmp 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
cmp 0x432214(%ebx,%r13d,4),%sil
cmp 0x69432214(%ebx,%r13d,4),%r9b
cmp (%ebx,%r13d,4),%r13b

cmp 0x14(%ebx,%esi,4),%bx
cmp 0x432214(%ebx,%esi,4),%si
cmp 0x69432214(%esi,%ebx,4),%r9w
cmp (%esi,%ebx,4),%r13w

cmp 0x14(%ebx,%r9d,4),%bx
cmp 0x432214(%ebx,%r9d,4),%si
cmp 0x69432214(%ebx,%r9d,4),%r9w
cmp (%ebx,%r9d,4),%r13w

cmp 0x14(%ebx,%r13d,4),%bx
cmp 0x432214(%ebx,%r13d,4),%si
cmp 0x69432214(%ebx,%r13d,4),%r9w
cmp (%ebx,%r13d,4),%r13w

cmp 0x14(%ebx,%esi,4),%ebx
cmp 0x432214(%ebx,%esi,4),%esi
cmp 0x69432214(%esi,%ebx,4),%r9d
cmp (%esi,%ebx,4),%r13d

cmp 0x14(%ebx,%r9d,4),%ebx
cmp 0x432214(%ebx,%r9d,4),%esi
cmp 0x69432214(%ebx,%r9d,4),%r9d
cmp (%ebx,%r9d,4),%r13d

cmp 0x14(%ebx,%r13d,4),%ebx
cmp 0x432214(%ebx,%r13d,4),%esi
cmp 0x69432214(%ebx,%r13d,4),%r9d
cmp (%ebx,%r13d,4),%r13d

cmp 0x14(%ebx,%esi,4),%rbx
cmp 0x432214(%ebx,%esi,4),%rsi
cmp 0x69432214(%esi,%ebx,4),%r9
cmp (%esi,%ebx,4),%r13

cmp 0x14(%ebx,%r9d,4),%rbx
cmp 0x432214(%ebx,%r9d,4),%rsi
cmp 0x69432214(%ebx,%r9d,4),%r9
cmp (%ebx,%r9d,4),%r13

cmp 0x14(%ebx,%r13d,4),%rbx
cmp 0x432214(%ebx,%r13d,4),%rsi
cmp 0x69432214(%ebx,%r13d,4),%r9
cmp (%ebx,%r13d,4),%r13

cmp 0x14(%r9d,%r13d,4),%rbx
cmp 0x432214(%r9d,%r13d,4),%rsi
cmp 0x69432214(%r9d,%r13d,4),%r9
cmp (%r9d,%r13d,4),%r13


cmp 0x14(%rbx,%rsi),%bl
cmp 0x2214(%rbx,%rsi,2),%dh
cmp 0x432214(%rbx,%rsi,4),%sil
cmp 0x69432214(%rsi,%rbx,8),%r9b
cmp (%rsi,%rbx,1),%r13b

cmp 0x14(%rbx,%r9,4),%bl
//cmp 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
cmp 0x432214(%rbx,%r9,4),%sil
cmp 0x69432214(%rbx,%r9,4),%r9b
cmp (%rbx,%r9,4),%r13b

cmp 0x14(%rbx,%r13,4),%bl
//cmp 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
cmp 0x432214(%rbx,%r13,4),%sil
cmp 0x69432214(%rbx,%r13,4),%r9b
cmp (%rbx,%r13,4),%r13b

cmp 0x14(%rbx,%rsi,4),%bx
cmp 0x432214(%rbx,%rsi,4),%si
cmp 0x69432214(%rsi,%rbx,4),%r9w
cmp (%rsi,%rbx,4),%r13w

cmp 0x14(%rbx,%r9,4),%bx
cmp 0x432214(%rbx,%r9,4),%si
cmp 0x69432214(%rbx,%r9,4),%r9w
cmp (%rbx,%r9,4),%r13w

cmp 0x14(%rbx,%r13,4),%bx
cmp 0x432214(%rbx,%r13,4),%si
cmp 0x69432214(%rbx,%r13,4),%r9w
cmp (%rbx,%r13,4),%r13w

cmp 0x14(%rbx,%rsi,4),%ebx
cmp 0x432214(%rbx,%rsi,4),%esi
cmp 0x69432214(%rsi,%rbx,4),%r9d
cmp (%rsi,%rbx,4),%r13d

cmp 0x14(%rbx,%r9,4),%ebx
cmp 0x432214(%rbx,%r9,4),%esi
cmp 0x69432214(%rbx,%r9,4),%r9d
cmp (%rbx,%r9,4),%r13d

cmp 0x14(%rbx,%r13,4),%ebx
cmp 0x432214(%rbx,%r13,4),%esi
cmp 0x69432214(%rbx,%r13,4),%r9d
cmp (%rbx,%r13,4),%r13d

cmp 0x14(%rbx,%rsi,4),%rbx
cmp 0x432214(%rbx,%rsi,4),%rsi
cmp 0x69432214(%rsi,%rbx,4),%r9
cmp (%rsi,%rbx,4),%r13

cmp 0x14(%rbx,%r9,4),%rbx
cmp 0x432214(%rbx,%r9,4),%rsi
cmp 0x69432214(%rbx,%r9,4),%r9
cmp (%rbx,%r9,4),%r13

cmp 0x14(%rbx,%r13,4),%rbx
cmp 0x432214(%rbx,%r13,4),%rsi
cmp 0x69432214(%rbx,%r13,4),%r9
cmp (%rbx,%r13,4),%r13

cmp 0x14(%r9,%r13,4),%rbx
cmp 0x432214(%r9,%r13,4),%rsi
cmp 0x69432214(%r9,%r13,4),%r9
cmp (%r9,%r13,4),%r13

cmp (%rbx,%r13,4),%r13
cmp (%r9,%rbx,4),%r13

cmp (%rbx,%r13,4),%r13w
cmp (%r9,%rbx,4),%r13w

cmp (%rbx,%r13,4),%r13
cmp (%r9,%rbx,4),%r13

cmp (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

cmp %bl, %bl
cmp %dh, %bl
cmp %sil, %bl
cmp %r9b, %bl
cmp %r13b, %bl

cmp %bl, %dh
cmp %dh, %dh
//cmp %sil, %dh		ah-dh and REX error
//cmp %r9b, %dh
//cmp %r13b, %dh

cmp %bl, %sil
//cmp %dh, %sil		ah-dh and REX error
cmp %sil, %sil
cmp %r9b, %sil
cmp %r13b, %sil

cmp %bl, %r9b
//cmp %dh, %r9b		ah,bh,ch,dh and REX error
cmp %sil, %r9b
cmp %r9b, %r9b
cmp %r13b, %r9b

cmp %bl, %r13b
//cmp %dh, %r13b	ah,bh,ch,dh and REX error
cmp %sil, %r13b
cmp %r9b, %r13b
cmp %r13b, %r13b

cmp %bx, %bx
cmp %si, %bx
cmp %r9w, %bx
cmp %r13w, %bx

cmp %bx, %si
cmp %si, %si
cmp %r9w, %si
cmp %r13w, %si

cmp %bx, %r9w
cmp %si, %r9w
cmp %r9w, %r9w
cmp %r13w, %r9w

cmp %bx, %r13w
cmp %si, %r13w
cmp %r9w, %r13w
cmp %r13w, %r13w

cmp %ebx, %ebx
cmp %esi, %ebx
cmp %r9d, %ebx
cmp %r13d, %ebx

cmp %ebx, %esi
cmp %esi, %esi
cmp %r9d, %esi
cmp %r13d, %esi

cmp %ebx, %r9d
cmp %esi, %r9d
cmp %r9d, %r9d
cmp %r13d, %r9d

cmp %ebx, %r13d
cmp %esi, %r13d
cmp %r9d, %r13d
cmp %r13d, %r13d

cmp %rbx, %rbx
cmp %rsi, %rbx
cmp %r9, %rbx
cmp %r13, %rbx

cmp %rbx, %rsi
cmp %rsi, %rsi
cmp %r9, %rsi
cmp %r13, %rsi

cmp %rbx, %r9
cmp %rsi, %r9
cmp %r9, %r9
cmp %r13, %r9

cmp %rbx, %r13
cmp %rsi, %r13
cmp %r9, %r13
cmp %r13, %r13


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
add %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
add %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
add %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
add %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
add %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
add %esi,0x3e8
// 11 34 25 e8 03 00 00 	
add %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
add %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
add %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
add %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
add %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
add %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
add %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
add %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
add %bl,0x3e8
// 
add %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
add %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
add %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
add %r13b,0x3e8

add %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

add %bl,(%ebx)
add %dh,0x14(%ebx)
add %sil,0x2814(%ebx)
add %r9b,0x792814(%ebx)
add %r13b,0x7b792814(%ebx)

add %bx,0x14(%ebx)
add %si,0x14(%ebx)
add %r9w,0x14(%ebx)
add %r13w,0x14(%ebx)

add %ebx,0x14(%ebx)
add %esi,0x14(%ebx)
add %r9d,0x14(%ebx)
add %r13d,0x14(%ebx)

add %rbx,0x14(%ebx)
add %rsi,0x14(%ebx)
add %r9,0x14(%ebx)
add %r13,0x14(%ebx)

add %bl,0x14(%esi)
add %dh,0x14(%esi)
add %sil,0x14(%esi)
add %r9b,0x14(%esi)
add %r13b,0x14(%esi)

add %bx,0x14(%esi)
add %si,0x14(%esi)
add %r9w,0x14(%esi)
add %r13w,0x14(%esi)

add %ebx,0x14(%esi)
add %esi,0x14(%esi)
add %r9d,0x14(%esi)
add %r13d,0x14(%esi)

add %rbx,0x14(%esi)
add %rsi,0x14(%esi)
add %r9,0x14(%esi)
add %r13,0x14(%esi)

add %bl,0x14(%r9d)
// add %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
add %sil,0x14(%r9d)
add %r9b,0x14(%r9d)
add %r13b,0x14(%r9d)

add %bx,0x14(%r9d)
add %si,0x14(%r9d)
add %r9w,0x14(%r9d)
add %r13w,0x14(%r9d)

add %ebx,0x14(%r9d)
add %esi,0x14(%r9d)
add %r9d,0x14(%r9d)
add %r13d,0x14(%r9d)

add %rbx,0x14(%r9d)
add %rsi,0x14(%r9d)
add %r9,0x14(%r9d)
add %r13,0x14(%r9d)

add %bl,0x14(%r13d)
// add %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
add %sil,0x14(%r13d)
add %r9b,0x14(%r13d)
add %r13b,0x14(%r13d)

add %bx,0x14(%r13d)
add %si,0x14(%r13d)
add %r9w,0x14(%r13d)
add %r13w,0x14(%r13d)

add %ebx,0x14(%r13d)
add %esi,0x14(%r13d)
add %r9d,0x14(%r13d)
add %r13d,0x14(%r13d)

add %rbx,0x14(%r13d)
add %rsi,0x14(%r13d)
add %r9,0x14(%r13d)
add %r13,0x14(%r13d)

// -----------------

add %bl,0x14(%rbx)
add %dh,0x14(%rbx)
add %sil,0x14(%rbx)
add %r9b,0x14(%rbx)
add %r13b,0x14(%rbx)

add %bx,0x14(%rbx)
add %si,0x14(%rbx)
add %r9w,0x14(%rbx)
add %r13w,0x14(%rbx)

add %ebx,0x14(%rbx)
add %esi,0x14(%rbx)
add %r9d,0x14(%rbx)
add %r13d,0x14(%rbx)

add %rbx,0x14(%rbx)
add %rsi,0x14(%rbx)
add %r9,0x14(%rbx)
add %r13,0x14(%rbx)

add %bl,0x14(%rsi)
add %dh,0x14(%rsi)
add %sil,0x14(%rsi)
add %r9b,0x14(%rsi)
add %r13b,0x14(%rsi)

add %bx,0x14(%rsi)
add %si,0x14(%rsi)
add %r9w,0x14(%rsi)
add %r13w,0x14(%rsi)

add %ebx,0x14(%rsi)
add %esi,0x14(%rsi)
add %r9d,0x14(%rsi)
add %r13d,0x14(%rsi)

add %rbx,0x14(%rsi)
add %rsi,0x14(%rsi)
add %r9,0x14(%rsi)
add %r13,0x14(%rsi)

add %bl,0x14(%r9)
// add %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
add %sil,0x14(%r9)
add %r9b,0x14(%r9)
add %r13b,0x14(%r9)

add %bx,0x14(%r9)
add %si,0x14(%r9)
add %r9w,0x14(%r9)
add %r13w,0x14(%r9)

add %ebx,0x14(%r9)
add %esi,0x14(%r9)
add %r9d,0x14(%r9)
add %r13d,0x14(%r9)

add %rbx,0x14(%r9)
add %rsi,0x14(%r9)
add %r9,0x14(%r9)
add %r13,0x14(%r9)

add %bl,0x14(%r13)
// add %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
add %sil,0x14(%r13)
add %r9b,0x14(%r13)
add %r13b,0x14(%r13)

add %bx,0x14(%r13)
add %si,0x14(%r13)
add %r9w,0x14(%r13)
add %r13w,0x14(%r13)

add %ebx,0x14(%r13)
add %esi,0x14(%r13)
add %r9d,0x14(%r13)
add %r13d,0x14(%r13)

add %rbx,0x14(%r13)
add %rsi,0x14(%r13)
add %r9,0x14(%r13)
add %r13,0x14(%r13)

// add %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


add %bl,0x14(%ebx,%esi)
add %dh,0x2214(%ebx,%esi,2)
add %sil,0x432214(%ebx,%esi,4)
add %r9b,0x69432214(%esi,%ebx,8)
add %r13b,(%esi,%ebx,1)

add %bl,0x14(%ebx,%r9d,4)
//add %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
add %sil,0x432214(%ebx,%r9d,4)
add %r9b,0x69432214(%ebx,%r9d,4)
add %r13b,(%ebx,%r9d,4)

add %bl,0x14(%ebx,%r13d,4)
//add %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
add %sil,0x432214(%ebx,%r13d,4)
add %r9b,0x69432214(%ebx,%r13d,4)
add %r13b,(%ebx,%r13d,4)

add %bx,0x14(%ebx,%esi,4)
add %si,0x432214(%ebx,%esi,4)
add %r9w,0x69432214(%esi,%ebx,4)
add %r13w,(%esi,%ebx,4)

add %bx,0x14(%ebx,%r9d,4)
add %si,0x432214(%ebx,%r9d,4)
add %r9w,0x69432214(%ebx,%r9d,4)
add %r13w,(%ebx,%r9d,4)

add %bx,0x14(%ebx,%r13d,4)
add %si,0x432214(%ebx,%r13d,4)
add %r9w,0x69432214(%ebx,%r13d,4)
add %r13w,(%ebx,%r13d,4)

add %ebx,0x14(%ebx,%esi,4)
add %esi,0x432214(%ebx,%esi,4)
add %r9d,0x69432214(%esi,%ebx,4)
add %r13d,(%esi,%ebx,4)

add %ebx,0x14(%ebx,%r9d,4)
add %esi,0x432214(%ebx,%r9d,4)
add %r9d,0x69432214(%ebx,%r9d,4)
add %r13d,(%ebx,%r9d,4)

add %ebx,0x14(%ebx,%r13d,4)
add %esi,0x432214(%ebx,%r13d,4)
add %r9d,0x69432214(%ebx,%r13d,4)
add %r13d,(%ebx,%r13d,4)

add %rbx,0x14(%ebx,%esi,4)
add %rsi,0x432214(%ebx,%esi,4)
add %r9,0x69432214(%esi,%ebx,4)
add %r13,(%esi,%ebx,4)

add %rbx,0x14(%ebx,%r9d,4)
add %rsi,0x432214(%ebx,%r9d,4)
add %r9,0x69432214(%ebx,%r9d,4)
add %r13,(%ebx,%r9d,4)

add %rbx,0x14(%ebx,%r13d,4)
add %rsi,0x432214(%ebx,%r13d,4)
add %r9,0x69432214(%ebx,%r13d,4)
add %r13,(%ebx,%r13d,4)

add %rbx,0x14(%r9d,%r13d,4)
add %rsi,0x432214(%r9d,%r13d,4)
add %r9,0x69432214(%r9d,%r13d,4)
add %r13,(%r9d,%r13d,4)


add %bl,0x14(%rbx,%rsi)
add %dh,0x2214(%rbx,%rsi,2)
add %sil,0x432214(%rbx,%rsi,4)
add %r9b,0x69432214(%rsi,%rbx,8)
add %r13b,(%rsi,%rbx,1)

add %bl,0x14(%rbx,%r9,4)
//add %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
add %sil,0x432214(%rbx,%r9,4)
add %r9b,0x69432214(%rbx,%r9,4)
add %r13b,(%rbx,%r9,4)

add %bl,0x14(%rbx,%r13,4)
//add %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
add %sil,0x432214(%rbx,%r13,4)
add %r9b,0x69432214(%rbx,%r13,4)
add %r13b,(%rbx,%r13,4)

add %bx,0x14(%rbx,%rsi,4)
add %si,0x432214(%rbx,%rsi,4)
add %r9w,0x69432214(%rsi,%rbx,4)
add %r13w,(%rsi,%rbx,4)

add %bx,0x14(%rbx,%r9,4)
add %si,0x432214(%rbx,%r9,4)
add %r9w,0x69432214(%rbx,%r9,4)
add %r13w,(%rbx,%r9,4)

add %bx,0x14(%rbx,%r13,4)
add %si,0x432214(%rbx,%r13,4)
add %r9w,0x69432214(%rbx,%r13,4)
add %r13w,(%rbx,%r13,4)

add %ebx,0x14(%rbx,%rsi,4)
add %esi,0x432214(%rbx,%rsi,4)
add %r9d,0x69432214(%rsi,%rbx,4)
add %r13d,(%rsi,%rbx,4)

add %ebx,0x14(%rbx,%r9,4)
add %esi,0x432214(%rbx,%r9,4)
add %r9d,0x69432214(%rbx,%r9,4)
add %r13d,(%rbx,%r9,4)

add %ebx,0x14(%rbx,%r13,4)
add %esi,0x432214(%rbx,%r13,4)
add %r9d,0x69432214(%rbx,%r13,4)
add %r13d,(%rbx,%r13,4)

add %rbx,0x14(%rbx,%rsi,4)
add %rsi,0x432214(%rbx,%rsi,4)
add %r9,0x69432214(%rsi,%rbx,4)
add %r13,(%rsi,%rbx,4)

add %rbx,0x14(%rbx,%r9,4)
add %rsi,0x432214(%rbx,%r9,4)
add %r9,0x69432214(%rbx,%r9,4)
add %r13,(%rbx,%r9,4)

add %rbx,0x14(%rbx,%r13,4)
add %rsi,0x432214(%rbx,%r13,4)
add %r9,0x69432214(%rbx,%r13,4)
add %r13,(%rbx,%r13,4)

add %rbx,0x14(%r9,%r13,4)
add %rsi,0x432214(%r9,%r13,4)
add %r9,0x69432214(%r9,%r13,4)
add %r13,(%r9,%r13,4)

add %r13,(%rbx,%r13,4)
add %r13,(%r9,%rbx,4)

add %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

add (%ebx),%bl
add 0x14(%ebx),%dh
add 0x2814(%ebx),%sil
add 0x792814(%ebx),%r9b
add 0x7b792814(%ebx),%r13b

add 0x14(%ebx),%bx
add 0x14(%ebx),%si
add 0x14(%ebx),%r9w
add 0x14(%ebx),%r13w

add 0x14(%ebx),%ebx
add 0x14(%ebx),%esi
add 0x14(%ebx),%r9d
add 0x14(%ebx),%r13d

add 0x14(%ebx),%rbx
add 0x14(%ebx),%rsi
add 0x14(%ebx),%r9
add 0x14(%ebx),%r13

add 0x14(%esi),%bl
add 0x14(%esi),%dh
add 0x14(%esi),%sil
add 0x14(%esi),%r9b
add 0x14(%esi),%r13b

add 0x14(%esi),%bx
add 0x14(%esi),%si
add 0x14(%esi),%r9w
add 0x14(%esi),%r13w

add 0x14(%esi),%ebx
add 0x14(%esi),%esi
add 0x14(%esi),%r9d
add 0x14(%esi),%r13d

add 0x14(%esi),%rbx
add 0x14(%esi),%rsi
add 0x14(%esi),%r9
add 0x14(%esi),%r13

add 0x14(%r9d),%bl
// add 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
add 0x14(%r9d),%sil
add 0x14(%r9d),%r9b
add 0x14(%r9d),%r13b

add 0x14(%r9d),%bx
add 0x14(%r9d),%si
add 0x14(%r9d),%r9w
add 0x14(%r9d),%r13w

add 0x14(%r9d),%ebx
add 0x14(%r9d),%esi
add 0x14(%r9d),%r9d
add 0x14(%r9d),%r13d

add 0x14(%r9d),%rbx
add 0x14(%r9d),%rsi
add 0x14(%r9d),%r9
add 0x14(%r9d),%r13

add 0x14(%r13d),%bl
// add 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
add 0x14(%r13d),%sil
add 0x14(%r13d),%r9b
add 0x14(%r13d),%r13b

add 0x14(%r13d),%bx
add 0x14(%r13d),%si
add 0x14(%r13d),%r9w
add 0x14(%r13d),%r13w

add 0x14(%r13d),%ebx
add 0x14(%r13d),%esi
add 0x14(%r13d),%r9d
add 0x14(%r13d),%r13d

add 0x14(%r13d),%rbx
add 0x14(%r13d),%rsi
add 0x14(%r13d),%r9
add 0x14(%r13d),%r13

// -----------------

add 0x14(%rbx),%bl
add 0x14(%rbx),%dh
add 0x14(%rbx),%sil
add 0x14(%rbx),%r9b
add 0x14(%rbx),%r13b

add 0x14(%rbx),%bx
add 0x14(%rbx),%si
add 0x14(%rbx),%r9w
add 0x14(%rbx),%r13w

add 0x14(%rbx),%ebx
add 0x14(%rbx),%esi
add 0x14(%rbx),%r9d
add 0x14(%rbx),%r13d

add 0x14(%rbx),%rbx
add 0x14(%rbx),%rsi
add 0x14(%rbx),%r9
add 0x14(%rbx),%r13

add 0x14(%rsi),%bl
add 0x14(%rsi),%dh
add 0x14(%rsi),%sil
add 0x14(%rsi),%r9b
add 0x14(%rsi),%r13b

add 0x14(%rsi),%bx
add 0x14(%rsi),%si
add 0x14(%rsi),%r9w
add 0x14(%rsi),%r13w

add 0x14(%rsi),%ebx
add 0x14(%rsi),%esi
add 0x14(%rsi),%r9d
add 0x14(%rsi),%r13d

add 0x14(%rsi),%rbx
add 0x14(%rsi),%rsi
add 0x14(%rsi),%r9
add 0x14(%rsi),%r13

add 0x14(%r9),%bl
// add 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
add 0x14(%r9),%sil
add 0x14(%r9),%r9b
add 0x14(%r9),%r13b

add 0x14(%r9),%bx
add 0x14(%r9),%si
add 0x14(%r9),%r9w
add 0x14(%r9),%r13w

add 0x14(%r9),%ebx
add 0x14(%r9),%esi
add 0x14(%r9),%r9d
add 0x14(%r9),%r13d

add 0x14(%r9),%rbx
add 0x14(%r9),%rsi
add 0x14(%r9),%r9
add 0x14(%r9),%r13

add 0x14(%r13),%bl
// add 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
add 0x14(%r13),%sil
add 0x14(%r13),%r9b
add 0x14(%r13),%r13b

add 0x14(%r13),%bx
add 0x14(%r13),%si
add 0x14(%r13),%r9w
add 0x14(%r13),%r13w

add 0x14(%r13),%ebx
add 0x14(%r13),%esi
add 0x14(%r13),%r9d
add 0x14(%r13),%r13d

add 0x14(%r13),%rbx
add 0x14(%r13),%rsi
add 0x14(%r13),%r9
add 0x14(%r13),%r13

// add 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


add 0x14(%ebx,%esi),%bl
add 0x2214(%ebx,%esi,2),%dh
add 0x432214(%ebx,%esi,4),%sil
add 0x69432214(%esi,%ebx,8),%r9b
add (%esi,%ebx,1),%r13b

add 0x14(%ebx,%r9d,4),%bl
//add 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
add 0x432214(%ebx,%r9d,4),%sil
add 0x69432214(%ebx,%r9d,4),%r9b
add (%ebx,%r9d,4),%r13b

add 0x14(%ebx,%r13d,4),%bl
//add 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
add 0x432214(%ebx,%r13d,4),%sil
add 0x69432214(%ebx,%r13d,4),%r9b
add (%ebx,%r13d,4),%r13b

add 0x14(%ebx,%esi,4),%bx
add 0x432214(%ebx,%esi,4),%si
add 0x69432214(%esi,%ebx,4),%r9w
add (%esi,%ebx,4),%r13w

add 0x14(%ebx,%r9d,4),%bx
add 0x432214(%ebx,%r9d,4),%si
add 0x69432214(%ebx,%r9d,4),%r9w
add (%ebx,%r9d,4),%r13w

add 0x14(%ebx,%r13d,4),%bx
add 0x432214(%ebx,%r13d,4),%si
add 0x69432214(%ebx,%r13d,4),%r9w
add (%ebx,%r13d,4),%r13w

add 0x14(%ebx,%esi,4),%ebx
add 0x432214(%ebx,%esi,4),%esi
add 0x69432214(%esi,%ebx,4),%r9d
add (%esi,%ebx,4),%r13d

add 0x14(%ebx,%r9d,4),%ebx
add 0x432214(%ebx,%r9d,4),%esi
add 0x69432214(%ebx,%r9d,4),%r9d
add (%ebx,%r9d,4),%r13d

add 0x14(%ebx,%r13d,4),%ebx
add 0x432214(%ebx,%r13d,4),%esi
add 0x69432214(%ebx,%r13d,4),%r9d
add (%ebx,%r13d,4),%r13d

add 0x14(%ebx,%esi,4),%rbx
add 0x432214(%ebx,%esi,4),%rsi
add 0x69432214(%esi,%ebx,4),%r9
add (%esi,%ebx,4),%r13

add 0x14(%ebx,%r9d,4),%rbx
add 0x432214(%ebx,%r9d,4),%rsi
add 0x69432214(%ebx,%r9d,4),%r9
add (%ebx,%r9d,4),%r13

add 0x14(%ebx,%r13d,4),%rbx
add 0x432214(%ebx,%r13d,4),%rsi
add 0x69432214(%ebx,%r13d,4),%r9
add (%ebx,%r13d,4),%r13

add 0x14(%r9d,%r13d,4),%rbx
add 0x432214(%r9d,%r13d,4),%rsi
add 0x69432214(%r9d,%r13d,4),%r9
add (%r9d,%r13d,4),%r13


add 0x14(%rbx,%rsi),%bl
add 0x2214(%rbx,%rsi,2),%dh
add 0x432214(%rbx,%rsi,4),%sil
add 0x69432214(%rsi,%rbx,8),%r9b
add (%rsi,%rbx,1),%r13b

add 0x14(%rbx,%r9,4),%bl
//add 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
add 0x432214(%rbx,%r9,4),%sil
add 0x69432214(%rbx,%r9,4),%r9b
add (%rbx,%r9,4),%r13b

add 0x14(%rbx,%r13,4),%bl
//add 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
add 0x432214(%rbx,%r13,4),%sil
add 0x69432214(%rbx,%r13,4),%r9b
add (%rbx,%r13,4),%r13b

add 0x14(%rbx,%rsi,4),%bx
add 0x432214(%rbx,%rsi,4),%si
add 0x69432214(%rsi,%rbx,4),%r9w
add (%rsi,%rbx,4),%r13w

add 0x14(%rbx,%r9,4),%bx
add 0x432214(%rbx,%r9,4),%si
add 0x69432214(%rbx,%r9,4),%r9w
add (%rbx,%r9,4),%r13w

add 0x14(%rbx,%r13,4),%bx
add 0x432214(%rbx,%r13,4),%si
add 0x69432214(%rbx,%r13,4),%r9w
add (%rbx,%r13,4),%r13w

add 0x14(%rbx,%rsi,4),%ebx
add 0x432214(%rbx,%rsi,4),%esi
add 0x69432214(%rsi,%rbx,4),%r9d
add (%rsi,%rbx,4),%r13d

add 0x14(%rbx,%r9,4),%ebx
add 0x432214(%rbx,%r9,4),%esi
add 0x69432214(%rbx,%r9,4),%r9d
add (%rbx,%r9,4),%r13d

add 0x14(%rbx,%r13,4),%ebx
add 0x432214(%rbx,%r13,4),%esi
add 0x69432214(%rbx,%r13,4),%r9d
add (%rbx,%r13,4),%r13d

add 0x14(%rbx,%rsi,4),%rbx
add 0x432214(%rbx,%rsi,4),%rsi
add 0x69432214(%rsi,%rbx,4),%r9
add (%rsi,%rbx,4),%r13

add 0x14(%rbx,%r9,4),%rbx
add 0x432214(%rbx,%r9,4),%rsi
add 0x69432214(%rbx,%r9,4),%r9
add (%rbx,%r9,4),%r13

add 0x14(%rbx,%r13,4),%rbx
add 0x432214(%rbx,%r13,4),%rsi
add 0x69432214(%rbx,%r13,4),%r9
add (%rbx,%r13,4),%r13

add 0x14(%r9,%r13,4),%rbx
add 0x432214(%r9,%r13,4),%rsi
add 0x69432214(%r9,%r13,4),%r9
add (%r9,%r13,4),%r13

add (%rbx,%r13,4),%r13
add (%r9,%rbx,4),%r13

add (%rbx,%r13,4),%r13w
add (%r9,%rbx,4),%r13w

add (%rbx,%r13,4),%r13
add (%r9,%rbx,4),%r13

add (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

add %bl, %bl
add %dh, %bl
add %sil, %bl
add %r9b, %bl
add %r13b, %bl

add %bl, %dh
add %dh, %dh
//add %sil, %dh		ah-dh and REX error
//add %r9b, %dh
//add %r13b, %dh

add %bl, %sil
//add %dh, %sil		ah-dh and REX error
add %sil, %sil
add %r9b, %sil
add %r13b, %sil

add %bl, %r9b
//add %dh, %r9b		ah,bh,ch,dh and REX error
add %sil, %r9b
add %r9b, %r9b
add %r13b, %r9b

add %bl, %r13b
//add %dh, %r13b	ah,bh,ch,dh and REX error
add %sil, %r13b
add %r9b, %r13b
add %r13b, %r13b

add %bx, %bx
add %si, %bx
add %r9w, %bx
add %r13w, %bx

add %bx, %si
add %si, %si
add %r9w, %si
add %r13w, %si

add %bx, %r9w
add %si, %r9w
add %r9w, %r9w
add %r13w, %r9w

add %bx, %r13w
add %si, %r13w
add %r9w, %r13w
add %r13w, %r13w

add %ebx, %ebx
add %esi, %ebx
add %r9d, %ebx
add %r13d, %ebx

add %ebx, %esi
add %esi, %esi
add %r9d, %esi
add %r13d, %esi

add %ebx, %r9d
add %esi, %r9d
add %r9d, %r9d
add %r13d, %r9d

add %ebx, %r13d
add %esi, %r13d
add %r9d, %r13d
add %r13d, %r13d

add %rbx, %rbx
add %rsi, %rbx
add %r9, %rbx
add %r13, %rbx

add %rbx, %rsi
add %rsi, %rsi
add %r9, %rsi
add %r13, %rsi

add %rbx, %r9
add %rsi, %r9
add %r9, %r9
add %r13, %r9

add %rbx, %r13
add %rsi, %r13
add %r9, %r13
add %r13, %r13


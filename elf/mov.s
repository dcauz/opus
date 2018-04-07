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
mov %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
mov %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
mov %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
mov %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
mov %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
mov %esi,0x3e8
// 11 34 25 e8 03 00 00 	
mov %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
mov %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
mov %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
mov %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
mov %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
mov %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
mov %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
mov %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
mov %bl,0x3e8
// 
mov %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
mov %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
mov %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
mov %r13b,0x3e8

mov %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

mov %bl,(%ebx)
mov %dh,0x14(%ebx)
mov %sil,0x2814(%ebx)
mov %r9b,0x792814(%ebx)
mov %r13b,0x7b792814(%ebx)

mov %bx,0x14(%ebx)
mov %si,0x14(%ebx)
mov %r9w,0x14(%ebx)
mov %r13w,0x14(%ebx)

mov %ebx,0x14(%ebx)
mov %esi,0x14(%ebx)
mov %r9d,0x14(%ebx)
mov %r13d,0x14(%ebx)

mov %rbx,0x14(%ebx)
mov %rsi,0x14(%ebx)
mov %r9,0x14(%ebx)
mov %r13,0x14(%ebx)

mov %bl,0x14(%esi)
mov %dh,0x14(%esi)
mov %sil,0x14(%esi)
mov %r9b,0x14(%esi)
mov %r13b,0x14(%esi)

mov %bx,0x14(%esi)
mov %si,0x14(%esi)
mov %r9w,0x14(%esi)
mov %r13w,0x14(%esi)

mov %ebx,0x14(%esi)
mov %esi,0x14(%esi)
mov %r9d,0x14(%esi)
mov %r13d,0x14(%esi)

mov %rbx,0x14(%esi)
mov %rsi,0x14(%esi)
mov %r9,0x14(%esi)
mov %r13,0x14(%esi)

mov %bl,0x14(%r9d)
// mov %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
mov %sil,0x14(%r9d)
mov %r9b,0x14(%r9d)
mov %r13b,0x14(%r9d)

mov %bx,0x14(%r9d)
mov %si,0x14(%r9d)
mov %r9w,0x14(%r9d)
mov %r13w,0x14(%r9d)

mov %ebx,0x14(%r9d)
mov %esi,0x14(%r9d)
mov %r9d,0x14(%r9d)
mov %r13d,0x14(%r9d)

mov %rbx,0x14(%r9d)
mov %rsi,0x14(%r9d)
mov %r9,0x14(%r9d)
mov %r13,0x14(%r9d)

mov %bl,0x14(%r13d)
// mov %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
mov %sil,0x14(%r13d)
mov %r9b,0x14(%r13d)
mov %r13b,0x14(%r13d)

mov %bx,0x14(%r13d)
mov %si,0x14(%r13d)
mov %r9w,0x14(%r13d)
mov %r13w,0x14(%r13d)

mov %ebx,0x14(%r13d)
mov %esi,0x14(%r13d)
mov %r9d,0x14(%r13d)
mov %r13d,0x14(%r13d)

mov %rbx,0x14(%r13d)
mov %rsi,0x14(%r13d)
mov %r9,0x14(%r13d)
mov %r13,0x14(%r13d)

// -----------------

mov %bl,0x14(%rbx)
mov %dh,0x14(%rbx)
mov %sil,0x14(%rbx)
mov %r9b,0x14(%rbx)
mov %r13b,0x14(%rbx)

mov %bx,0x14(%rbx)
mov %si,0x14(%rbx)
mov %r9w,0x14(%rbx)
mov %r13w,0x14(%rbx)

mov %ebx,0x14(%rbx)
mov %esi,0x14(%rbx)
mov %r9d,0x14(%rbx)
mov %r13d,0x14(%rbx)

mov %rbx,0x14(%rbx)
mov %rsi,0x14(%rbx)
mov %r9,0x14(%rbx)
mov %r13,0x14(%rbx)

mov %bl,0x14(%rsi)
mov %dh,0x14(%rsi)
mov %sil,0x14(%rsi)
mov %r9b,0x14(%rsi)
mov %r13b,0x14(%rsi)

mov %bx,0x14(%rsi)
mov %si,0x14(%rsi)
mov %r9w,0x14(%rsi)
mov %r13w,0x14(%rsi)

mov %ebx,0x14(%rsi)
mov %esi,0x14(%rsi)
mov %r9d,0x14(%rsi)
mov %r13d,0x14(%rsi)

mov %rbx,0x14(%rsi)
mov %rsi,0x14(%rsi)
mov %r9,0x14(%rsi)
mov %r13,0x14(%rsi)

mov %bl,0x14(%r9)
// mov %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
mov %sil,0x14(%r9)
mov %r9b,0x14(%r9)
mov %r13b,0x14(%r9)

mov %bx,0x14(%r9)
mov %si,0x14(%r9)
mov %r9w,0x14(%r9)
mov %r13w,0x14(%r9)

mov %ebx,0x14(%r9)
mov %esi,0x14(%r9)
mov %r9d,0x14(%r9)
mov %r13d,0x14(%r9)

mov %rbx,0x14(%r9)
mov %rsi,0x14(%r9)
mov %r9,0x14(%r9)
mov %r13,0x14(%r9)

mov %bl,0x14(%r13)
// mov %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
mov %sil,0x14(%r13)
mov %r9b,0x14(%r13)
mov %r13b,0x14(%r13)

mov %bx,0x14(%r13)
mov %si,0x14(%r13)
mov %r9w,0x14(%r13)
mov %r13w,0x14(%r13)

mov %ebx,0x14(%r13)
mov %esi,0x14(%r13)
mov %r9d,0x14(%r13)
mov %r13d,0x14(%r13)

mov %rbx,0x14(%r13)
mov %rsi,0x14(%r13)
mov %r9,0x14(%r13)
mov %r13,0x14(%r13)

// mov %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


mov %bl,0x14(%ebx,%esi)
mov %dh,0x2214(%ebx,%esi,2)
mov %sil,0x432214(%ebx,%esi,4)
mov %r9b,0x69432214(%esi,%ebx,8)
mov %r13b,(%esi,%ebx,1)

mov %bl,0x14(%ebx,%r9d,4)
//mov %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
mov %sil,0x432214(%ebx,%r9d,4)
mov %r9b,0x69432214(%ebx,%r9d,4)
mov %r13b,(%ebx,%r9d,4)

mov %bl,0x14(%ebx,%r13d,4)
//mov %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
mov %sil,0x432214(%ebx,%r13d,4)
mov %r9b,0x69432214(%ebx,%r13d,4)
mov %r13b,(%ebx,%r13d,4)

mov %bx,0x14(%ebx,%esi,4)
mov %si,0x432214(%ebx,%esi,4)
mov %r9w,0x69432214(%esi,%ebx,4)
mov %r13w,(%esi,%ebx,4)

mov %bx,0x14(%ebx,%r9d,4)
mov %si,0x432214(%ebx,%r9d,4)
mov %r9w,0x69432214(%ebx,%r9d,4)
mov %r13w,(%ebx,%r9d,4)

mov %bx,0x14(%ebx,%r13d,4)
mov %si,0x432214(%ebx,%r13d,4)
mov %r9w,0x69432214(%ebx,%r13d,4)
mov %r13w,(%ebx,%r13d,4)

mov %ebx,0x14(%ebx,%esi,4)
mov %esi,0x432214(%ebx,%esi,4)
mov %r9d,0x69432214(%esi,%ebx,4)
mov %r13d,(%esi,%ebx,4)

mov %ebx,0x14(%ebx,%r9d,4)
mov %esi,0x432214(%ebx,%r9d,4)
mov %r9d,0x69432214(%ebx,%r9d,4)
mov %r13d,(%ebx,%r9d,4)

mov %ebx,0x14(%ebx,%r13d,4)
mov %esi,0x432214(%ebx,%r13d,4)
mov %r9d,0x69432214(%ebx,%r13d,4)
mov %r13d,(%ebx,%r13d,4)

mov %rbx,0x14(%ebx,%esi,4)
mov %rsi,0x432214(%ebx,%esi,4)
mov %r9,0x69432214(%esi,%ebx,4)
mov %r13,(%esi,%ebx,4)

mov %rbx,0x14(%ebx,%r9d,4)
mov %rsi,0x432214(%ebx,%r9d,4)
mov %r9,0x69432214(%ebx,%r9d,4)
mov %r13,(%ebx,%r9d,4)

mov %rbx,0x14(%ebx,%r13d,4)
mov %rsi,0x432214(%ebx,%r13d,4)
mov %r9,0x69432214(%ebx,%r13d,4)
mov %r13,(%ebx,%r13d,4)

mov %rbx,0x14(%r9d,%r13d,4)
mov %rsi,0x432214(%r9d,%r13d,4)
mov %r9,0x69432214(%r9d,%r13d,4)
mov %r13,(%r9d,%r13d,4)


mov %bl,0x14(%rbx,%rsi)
mov %dh,0x2214(%rbx,%rsi,2)
mov %sil,0x432214(%rbx,%rsi,4)
mov %r9b,0x69432214(%rsi,%rbx,8)
mov %r13b,(%rsi,%rbx,1)

mov %bl,0x14(%rbx,%r9,4)
//mov %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
mov %sil,0x432214(%rbx,%r9,4)
mov %r9b,0x69432214(%rbx,%r9,4)
mov %r13b,(%rbx,%r9,4)

mov %bl,0x14(%rbx,%r13,4)
//mov %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
mov %sil,0x432214(%rbx,%r13,4)
mov %r9b,0x69432214(%rbx,%r13,4)
mov %r13b,(%rbx,%r13,4)

mov %bx,0x14(%rbx,%rsi,4)
mov %si,0x432214(%rbx,%rsi,4)
mov %r9w,0x69432214(%rsi,%rbx,4)
mov %r13w,(%rsi,%rbx,4)

mov %bx,0x14(%rbx,%r9,4)
mov %si,0x432214(%rbx,%r9,4)
mov %r9w,0x69432214(%rbx,%r9,4)
mov %r13w,(%rbx,%r9,4)

mov %bx,0x14(%rbx,%r13,4)
mov %si,0x432214(%rbx,%r13,4)
mov %r9w,0x69432214(%rbx,%r13,4)
mov %r13w,(%rbx,%r13,4)

mov %ebx,0x14(%rbx,%rsi,4)
mov %esi,0x432214(%rbx,%rsi,4)
mov %r9d,0x69432214(%rsi,%rbx,4)
mov %r13d,(%rsi,%rbx,4)

mov %ebx,0x14(%rbx,%r9,4)
mov %esi,0x432214(%rbx,%r9,4)
mov %r9d,0x69432214(%rbx,%r9,4)
mov %r13d,(%rbx,%r9,4)

mov %ebx,0x14(%rbx,%r13,4)
mov %esi,0x432214(%rbx,%r13,4)
mov %r9d,0x69432214(%rbx,%r13,4)
mov %r13d,(%rbx,%r13,4)

mov %rbx,0x14(%rbx,%rsi,4)
mov %rsi,0x432214(%rbx,%rsi,4)
mov %r9,0x69432214(%rsi,%rbx,4)
mov %r13,(%rsi,%rbx,4)

mov %rbx,0x14(%rbx,%r9,4)
mov %rsi,0x432214(%rbx,%r9,4)
mov %r9,0x69432214(%rbx,%r9,4)
mov %r13,(%rbx,%r9,4)

mov %rbx,0x14(%rbx,%r13,4)
mov %rsi,0x432214(%rbx,%r13,4)
mov %r9,0x69432214(%rbx,%r13,4)
mov %r13,(%rbx,%r13,4)

mov %rbx,0x14(%r9,%r13,4)
mov %rsi,0x432214(%r9,%r13,4)
mov %r9,0x69432214(%r9,%r13,4)
mov %r13,(%r9,%r13,4)

mov %r13,(%rbx,%r13,4)
mov %r13,(%r9,%rbx,4)

mov %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

mov (%ebx),%bl
mov 0x14(%ebx),%dh
mov 0x2814(%ebx),%sil
mov 0x792814(%ebx),%r9b
mov 0x7b792814(%ebx),%r13b

mov 0x14(%ebx),%bx
mov 0x14(%ebx),%si
mov 0x14(%ebx),%r9w
mov 0x14(%ebx),%r13w

mov 0x14(%ebx),%ebx
mov 0x14(%ebx),%esi
mov 0x14(%ebx),%r9d
mov 0x14(%ebx),%r13d

mov 0x14(%ebx),%rbx
mov 0x14(%ebx),%rsi
mov 0x14(%ebx),%r9
mov 0x14(%ebx),%r13

mov 0x14(%esi),%bl
mov 0x14(%esi),%dh
mov 0x14(%esi),%sil
mov 0x14(%esi),%r9b
mov 0x14(%esi),%r13b

mov 0x14(%esi),%bx
mov 0x14(%esi),%si
mov 0x14(%esi),%r9w
mov 0x14(%esi),%r13w

mov 0x14(%esi),%ebx
mov 0x14(%esi),%esi
mov 0x14(%esi),%r9d
mov 0x14(%esi),%r13d

mov 0x14(%esi),%rbx
mov 0x14(%esi),%rsi
mov 0x14(%esi),%r9
mov 0x14(%esi),%r13

mov 0x14(%r9d),%bl
// mov 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
mov 0x14(%r9d),%sil
mov 0x14(%r9d),%r9b
mov 0x14(%r9d),%r13b

mov 0x14(%r9d),%bx
mov 0x14(%r9d),%si
mov 0x14(%r9d),%r9w
mov 0x14(%r9d),%r13w

mov 0x14(%r9d),%ebx
mov 0x14(%r9d),%esi
mov 0x14(%r9d),%r9d
mov 0x14(%r9d),%r13d

mov 0x14(%r9d),%rbx
mov 0x14(%r9d),%rsi
mov 0x14(%r9d),%r9
mov 0x14(%r9d),%r13

mov 0x14(%r13d),%bl
// mov 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
mov 0x14(%r13d),%sil
mov 0x14(%r13d),%r9b
mov 0x14(%r13d),%r13b

mov 0x14(%r13d),%bx
mov 0x14(%r13d),%si
mov 0x14(%r13d),%r9w
mov 0x14(%r13d),%r13w

mov 0x14(%r13d),%ebx
mov 0x14(%r13d),%esi
mov 0x14(%r13d),%r9d
mov 0x14(%r13d),%r13d

mov 0x14(%r13d),%rbx
mov 0x14(%r13d),%rsi
mov 0x14(%r13d),%r9
mov 0x14(%r13d),%r13

// -----------------

mov 0x14(%rbx),%bl
mov 0x14(%rbx),%dh
mov 0x14(%rbx),%sil
mov 0x14(%rbx),%r9b
mov 0x14(%rbx),%r13b

mov 0x14(%rbx),%bx
mov 0x14(%rbx),%si
mov 0x14(%rbx),%r9w
mov 0x14(%rbx),%r13w

mov 0x14(%rbx),%ebx
mov 0x14(%rbx),%esi
mov 0x14(%rbx),%r9d
mov 0x14(%rbx),%r13d

mov 0x14(%rbx),%rbx
mov 0x14(%rbx),%rsi
mov 0x14(%rbx),%r9
mov 0x14(%rbx),%r13

mov 0x14(%rsi),%bl
mov 0x14(%rsi),%dh
mov 0x14(%rsi),%sil
mov 0x14(%rsi),%r9b
mov 0x14(%rsi),%r13b

mov 0x14(%rsi),%bx
mov 0x14(%rsi),%si
mov 0x14(%rsi),%r9w
mov 0x14(%rsi),%r13w

mov 0x14(%rsi),%ebx
mov 0x14(%rsi),%esi
mov 0x14(%rsi),%r9d
mov 0x14(%rsi),%r13d

mov 0x14(%rsi),%rbx
mov 0x14(%rsi),%rsi
mov 0x14(%rsi),%r9
mov 0x14(%rsi),%r13

mov 0x14(%r9),%bl
// mov 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
mov 0x14(%r9),%sil
mov 0x14(%r9),%r9b
mov 0x14(%r9),%r13b

mov 0x14(%r9),%bx
mov 0x14(%r9),%si
mov 0x14(%r9),%r9w
mov 0x14(%r9),%r13w

mov 0x14(%r9),%ebx
mov 0x14(%r9),%esi
mov 0x14(%r9),%r9d
mov 0x14(%r9),%r13d

mov 0x14(%r9),%rbx
mov 0x14(%r9),%rsi
mov 0x14(%r9),%r9
mov 0x14(%r9),%r13

mov 0x14(%r13),%bl
// mov 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
mov 0x14(%r13),%sil
mov 0x14(%r13),%r9b
mov 0x14(%r13),%r13b

mov 0x14(%r13),%bx
mov 0x14(%r13),%si
mov 0x14(%r13),%r9w
mov 0x14(%r13),%r13w

mov 0x14(%r13),%ebx
mov 0x14(%r13),%esi
mov 0x14(%r13),%r9d
mov 0x14(%r13),%r13d

mov 0x14(%r13),%rbx
mov 0x14(%r13),%rsi
mov 0x14(%r13),%r9
mov 0x14(%r13),%r13

// mov 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


mov 0x14(%ebx,%esi),%bl
mov 0x2214(%ebx,%esi,2),%dh
mov 0x432214(%ebx,%esi,4),%sil
mov 0x69432214(%esi,%ebx,8),%r9b
mov (%esi,%ebx,1),%r13b

mov 0x14(%ebx,%r9d,4),%bl
//mov 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
mov 0x432214(%ebx,%r9d,4),%sil
mov 0x69432214(%ebx,%r9d,4),%r9b
mov (%ebx,%r9d,4),%r13b

mov 0x14(%ebx,%r13d,4),%bl
//mov 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
mov 0x432214(%ebx,%r13d,4),%sil
mov 0x69432214(%ebx,%r13d,4),%r9b
mov (%ebx,%r13d,4),%r13b

mov 0x14(%ebx,%esi,4),%bx
mov 0x432214(%ebx,%esi,4),%si
mov 0x69432214(%esi,%ebx,4),%r9w
mov (%esi,%ebx,4),%r13w

mov 0x14(%ebx,%r9d,4),%bx
mov 0x432214(%ebx,%r9d,4),%si
mov 0x69432214(%ebx,%r9d,4),%r9w
mov (%ebx,%r9d,4),%r13w

mov 0x14(%ebx,%r13d,4),%bx
mov 0x432214(%ebx,%r13d,4),%si
mov 0x69432214(%ebx,%r13d,4),%r9w
mov (%ebx,%r13d,4),%r13w

mov 0x14(%ebx,%esi,4),%ebx
mov 0x432214(%ebx,%esi,4),%esi
mov 0x69432214(%esi,%ebx,4),%r9d
mov (%esi,%ebx,4),%r13d

mov 0x14(%ebx,%r9d,4),%ebx
mov 0x432214(%ebx,%r9d,4),%esi
mov 0x69432214(%ebx,%r9d,4),%r9d
mov (%ebx,%r9d,4),%r13d

mov 0x14(%ebx,%r13d,4),%ebx
mov 0x432214(%ebx,%r13d,4),%esi
mov 0x69432214(%ebx,%r13d,4),%r9d
mov (%ebx,%r13d,4),%r13d

mov 0x14(%ebx,%esi,4),%rbx
mov 0x432214(%ebx,%esi,4),%rsi
mov 0x69432214(%esi,%ebx,4),%r9
mov (%esi,%ebx,4),%r13

mov 0x14(%ebx,%r9d,4),%rbx
mov 0x432214(%ebx,%r9d,4),%rsi
mov 0x69432214(%ebx,%r9d,4),%r9
mov (%ebx,%r9d,4),%r13

mov 0x14(%ebx,%r13d,4),%rbx
mov 0x432214(%ebx,%r13d,4),%rsi
mov 0x69432214(%ebx,%r13d,4),%r9
mov (%ebx,%r13d,4),%r13

mov 0x14(%r9d,%r13d,4),%rbx
mov 0x432214(%r9d,%r13d,4),%rsi
mov 0x69432214(%r9d,%r13d,4),%r9
mov (%r9d,%r13d,4),%r13


mov 0x14(%rbx,%rsi),%bl
mov 0x2214(%rbx,%rsi,2),%dh
mov 0x432214(%rbx,%rsi,4),%sil
mov 0x69432214(%rsi,%rbx,8),%r9b
mov (%rsi,%rbx,1),%r13b

mov 0x14(%rbx,%r9,4),%bl
//mov 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
mov 0x432214(%rbx,%r9,4),%sil
mov 0x69432214(%rbx,%r9,4),%r9b
mov (%rbx,%r9,4),%r13b

mov 0x14(%rbx,%r13,4),%bl
//mov 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
mov 0x432214(%rbx,%r13,4),%sil
mov 0x69432214(%rbx,%r13,4),%r9b
mov (%rbx,%r13,4),%r13b

mov 0x14(%rbx,%rsi,4),%bx
mov 0x432214(%rbx,%rsi,4),%si
mov 0x69432214(%rsi,%rbx,4),%r9w
mov (%rsi,%rbx,4),%r13w

mov 0x14(%rbx,%r9,4),%bx
mov 0x432214(%rbx,%r9,4),%si
mov 0x69432214(%rbx,%r9,4),%r9w
mov (%rbx,%r9,4),%r13w

mov 0x14(%rbx,%r13,4),%bx
mov 0x432214(%rbx,%r13,4),%si
mov 0x69432214(%rbx,%r13,4),%r9w
mov (%rbx,%r13,4),%r13w

mov 0x14(%rbx,%rsi,4),%ebx
mov 0x432214(%rbx,%rsi,4),%esi
mov 0x69432214(%rsi,%rbx,4),%r9d
mov (%rsi,%rbx,4),%r13d

mov 0x14(%rbx,%r9,4),%ebx
mov 0x432214(%rbx,%r9,4),%esi
mov 0x69432214(%rbx,%r9,4),%r9d
mov (%rbx,%r9,4),%r13d

mov 0x14(%rbx,%r13,4),%ebx
mov 0x432214(%rbx,%r13,4),%esi
mov 0x69432214(%rbx,%r13,4),%r9d
mov (%rbx,%r13,4),%r13d

mov 0x14(%rbx,%rsi,4),%rbx
mov 0x432214(%rbx,%rsi,4),%rsi
mov 0x69432214(%rsi,%rbx,4),%r9
mov (%rsi,%rbx,4),%r13

mov 0x14(%rbx,%r9,4),%rbx
mov 0x432214(%rbx,%r9,4),%rsi
mov 0x69432214(%rbx,%r9,4),%r9
mov (%rbx,%r9,4),%r13

mov 0x14(%rbx,%r13,4),%rbx
mov 0x432214(%rbx,%r13,4),%rsi
mov 0x69432214(%rbx,%r13,4),%r9
mov (%rbx,%r13,4),%r13

mov 0x14(%r9,%r13,4),%rbx
mov 0x432214(%r9,%r13,4),%rsi
mov 0x69432214(%r9,%r13,4),%r9
mov (%r9,%r13,4),%r13

mov (%rbx,%r13,4),%r13
mov (%r9,%rbx,4),%r13

mov (%rbx,%r13,4),%r13w
mov (%r9,%rbx,4),%r13w

mov (%rbx,%r13,4),%r13
mov (%r9,%rbx,4),%r13

mov (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

mov %bl, %bl
mov %dh, %bl
mov %sil, %bl
mov %r9b, %bl
mov %r13b, %bl

mov %bl, %dh
mov %dh, %dh
//mov %sil, %dh		ah-dh and REX error
//mov %r9b, %dh
//mov %r13b, %dh

mov %bl, %sil
//mov %dh, %sil		ah-dh and REX error
mov %sil, %sil
mov %r9b, %sil
mov %r13b, %sil

mov %bl, %r9b
//mov %dh, %r9b		ah,bh,ch,dh and REX error
mov %sil, %r9b
mov %r9b, %r9b
mov %r13b, %r9b

mov %bl, %r13b
//mov %dh, %r13b	ah,bh,ch,dh and REX error
mov %sil, %r13b
mov %r9b, %r13b
mov %r13b, %r13b

mov %bx, %bx
mov %si, %bx
mov %r9w, %bx
mov %r13w, %bx

mov %bx, %si
mov %si, %si
mov %r9w, %si
mov %r13w, %si

mov %bx, %r9w
mov %si, %r9w
mov %r9w, %r9w
mov %r13w, %r9w

mov %bx, %r13w
mov %si, %r13w
mov %r9w, %r13w
mov %r13w, %r13w

mov %ebx, %ebx
mov %esi, %ebx
mov %r9d, %ebx
mov %r13d, %ebx

mov %ebx, %esi
mov %esi, %esi
mov %r9d, %esi
mov %r13d, %esi

mov %ebx, %r9d
mov %esi, %r9d
mov %r9d, %r9d
mov %r13d, %r9d

mov %ebx, %r13d
mov %esi, %r13d
mov %r9d, %r13d
mov %r13d, %r13d

mov %rbx, %rbx
mov %rsi, %rbx
mov %r9, %rbx
mov %r13, %rbx

mov %rbx, %rsi
mov %rsi, %rsi
mov %r9, %rsi
mov %r13, %rsi

mov %rbx, %r9
mov %rsi, %r9
mov %r9, %r9
mov %r13, %r9

mov %rbx, %r13
mov %rsi, %r13
mov %r9, %r13
mov %r13, %r13


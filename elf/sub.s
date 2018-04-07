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
sub %rbx,0x3e
// 48 11 34 25 e8 03 00 00    : 0011 0100, 00 110 100
sub %rsi,0x23e8
// 4c 11 0c 25 e8 03 00 00 	
sub %r9,0x3e8
// 4c 11 2c 25 e8 03 00 00 	
sub %r13,0x3e8

// 32
// 11 1c 25 e8 03 00 00 	
sub %ebx,0x3e8
// 11 3c 25 e8 03 00 00 	
sub %esi,0x3e8
// 11 34 25 e8 03 00 00 	
sub %esi,0x3e8
// 44 11 0c 25 e8 03 00 00 	
sub %r9d,0x3e8
// 44 11 14 25 e8 03 00 00 	
sub %r13d,0x3e8

// 16-bit
// 66 11 1c 25 e8 03 00 00 	
sub %bx,0x3e8
// 66 11 3c 25 e8 03 00 00 	
sub %si,0x3e8
// 66 11 34 25 e8 03 00 00 	
sub %si,0x3e8
// 66 44 11 0c 25 e8 03 00 00 	
sub %r9w,0x3e8
// 66 44 11 2c 25 e8 03 00 00 	
sub %r13w,0x3e8
 
// 8-bit
// 10 1c 25 e8 03 00 00 	
sub %bl,0x3e8
// 
sub %dh,0x3e8
// 40 10 34 25 e8 03 00 00 	: 0011 0100 = 00 110 100
sub %sil,0x3e8

// 44 10 0c 25 e8 03 00 00 	
sub %r9b,0x3e8
// 44 10 2c 25 e8 03 00 00 	
sub %r13b,0x3e8

sub %rsp, 0x20

/////////////////////////////////////////////////////////////////////
// mem to reg
//
// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13
/////////////////////////////////////////////////////////////////////

sub %bl,(%ebx)
sub %dh,0x14(%ebx)
sub %sil,0x2814(%ebx)
sub %r9b,0x792814(%ebx)
sub %r13b,0x7b792814(%ebx)

sub %bx,0x14(%ebx)
sub %si,0x14(%ebx)
sub %r9w,0x14(%ebx)
sub %r13w,0x14(%ebx)

sub %ebx,0x14(%ebx)
sub %esi,0x14(%ebx)
sub %r9d,0x14(%ebx)
sub %r13d,0x14(%ebx)

sub %rbx,0x14(%ebx)
sub %rsi,0x14(%ebx)
sub %r9,0x14(%ebx)
sub %r13,0x14(%ebx)

sub %bl,0x14(%esi)
sub %dh,0x14(%esi)
sub %sil,0x14(%esi)
sub %r9b,0x14(%esi)
sub %r13b,0x14(%esi)

sub %bx,0x14(%esi)
sub %si,0x14(%esi)
sub %r9w,0x14(%esi)
sub %r13w,0x14(%esi)

sub %ebx,0x14(%esi)
sub %esi,0x14(%esi)
sub %r9d,0x14(%esi)
sub %r13d,0x14(%esi)

sub %rbx,0x14(%esi)
sub %rsi,0x14(%esi)
sub %r9,0x14(%esi)
sub %r13,0x14(%esi)

sub %bl,0x14(%r9d)
// sub %dh,0x14(%r9d)  cannot use ah,bh,ch,dh with REX
sub %sil,0x14(%r9d)
sub %r9b,0x14(%r9d)
sub %r13b,0x14(%r9d)

sub %bx,0x14(%r9d)
sub %si,0x14(%r9d)
sub %r9w,0x14(%r9d)
sub %r13w,0x14(%r9d)

sub %ebx,0x14(%r9d)
sub %esi,0x14(%r9d)
sub %r9d,0x14(%r9d)
sub %r13d,0x14(%r9d)

sub %rbx,0x14(%r9d)
sub %rsi,0x14(%r9d)
sub %r9,0x14(%r9d)
sub %r13,0x14(%r9d)

sub %bl,0x14(%r13d)
// sub %dh,0x14(%r13d)	cannot use ah,bh,ch,dh with REX
sub %sil,0x14(%r13d)
sub %r9b,0x14(%r13d)
sub %r13b,0x14(%r13d)

sub %bx,0x14(%r13d)
sub %si,0x14(%r13d)
sub %r9w,0x14(%r13d)
sub %r13w,0x14(%r13d)

sub %ebx,0x14(%r13d)
sub %esi,0x14(%r13d)
sub %r9d,0x14(%r13d)
sub %r13d,0x14(%r13d)

sub %rbx,0x14(%r13d)
sub %rsi,0x14(%r13d)
sub %r9,0x14(%r13d)
sub %r13,0x14(%r13d)

// -----------------

sub %bl,0x14(%rbx)
sub %dh,0x14(%rbx)
sub %sil,0x14(%rbx)
sub %r9b,0x14(%rbx)
sub %r13b,0x14(%rbx)

sub %bx,0x14(%rbx)
sub %si,0x14(%rbx)
sub %r9w,0x14(%rbx)
sub %r13w,0x14(%rbx)

sub %ebx,0x14(%rbx)
sub %esi,0x14(%rbx)
sub %r9d,0x14(%rbx)
sub %r13d,0x14(%rbx)

sub %rbx,0x14(%rbx)
sub %rsi,0x14(%rbx)
sub %r9,0x14(%rbx)
sub %r13,0x14(%rbx)

sub %bl,0x14(%rsi)
sub %dh,0x14(%rsi)
sub %sil,0x14(%rsi)
sub %r9b,0x14(%rsi)
sub %r13b,0x14(%rsi)

sub %bx,0x14(%rsi)
sub %si,0x14(%rsi)
sub %r9w,0x14(%rsi)
sub %r13w,0x14(%rsi)

sub %ebx,0x14(%rsi)
sub %esi,0x14(%rsi)
sub %r9d,0x14(%rsi)
sub %r13d,0x14(%rsi)

sub %rbx,0x14(%rsi)
sub %rsi,0x14(%rsi)
sub %r9,0x14(%rsi)
sub %r13,0x14(%rsi)

sub %bl,0x14(%r9)
// sub %dh,0x14(%r9)	cannot use ah,bh,ch,dh with REX
sub %sil,0x14(%r9)
sub %r9b,0x14(%r9)
sub %r13b,0x14(%r9)

sub %bx,0x14(%r9)
sub %si,0x14(%r9)
sub %r9w,0x14(%r9)
sub %r13w,0x14(%r9)

sub %ebx,0x14(%r9)
sub %esi,0x14(%r9)
sub %r9d,0x14(%r9)
sub %r13d,0x14(%r9)

sub %rbx,0x14(%r9)
sub %rsi,0x14(%r9)
sub %r9,0x14(%r9)
sub %r13,0x14(%r9)

sub %bl,0x14(%r13)
// sub %dh,0x14(%r13)	cannot use ah,bh,ch,dh with REX
sub %sil,0x14(%r13)
sub %r9b,0x14(%r13)
sub %r13b,0x14(%r13)

sub %bx,0x14(%r13)
sub %si,0x14(%r13)
sub %r9w,0x14(%r13)
sub %r13w,0x14(%r13)

sub %ebx,0x14(%r13)
sub %esi,0x14(%r13)
sub %r9d,0x14(%r13)
sub %r13d,0x14(%r13)

sub %rbx,0x14(%r13)
sub %rsi,0x14(%r13)
sub %r9,0x14(%r13)
sub %r13,0x14(%r13)

// sub %r13,0x14(%r13w)	Index must be 32 and 64

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


sub %bl,0x14(%ebx,%esi)
sub %dh,0x2214(%ebx,%esi,2)
sub %sil,0x432214(%ebx,%esi,4)
sub %r9b,0x69432214(%esi,%ebx,8)
sub %r13b,(%esi,%ebx,1)

sub %bl,0x14(%ebx,%r9d,4)
//sub %dh,0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX
sub %sil,0x432214(%ebx,%r9d,4)
sub %r9b,0x69432214(%ebx,%r9d,4)
sub %r13b,(%ebx,%r9d,4)

sub %bl,0x14(%ebx,%r13d,4)
//sub %dh,0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX
sub %sil,0x432214(%ebx,%r13d,4)
sub %r9b,0x69432214(%ebx,%r13d,4)
sub %r13b,(%ebx,%r13d,4)

sub %bx,0x14(%ebx,%esi,4)
sub %si,0x432214(%ebx,%esi,4)
sub %r9w,0x69432214(%esi,%ebx,4)
sub %r13w,(%esi,%ebx,4)

sub %bx,0x14(%ebx,%r9d,4)
sub %si,0x432214(%ebx,%r9d,4)
sub %r9w,0x69432214(%ebx,%r9d,4)
sub %r13w,(%ebx,%r9d,4)

sub %bx,0x14(%ebx,%r13d,4)
sub %si,0x432214(%ebx,%r13d,4)
sub %r9w,0x69432214(%ebx,%r13d,4)
sub %r13w,(%ebx,%r13d,4)

sub %ebx,0x14(%ebx,%esi,4)
sub %esi,0x432214(%ebx,%esi,4)
sub %r9d,0x69432214(%esi,%ebx,4)
sub %r13d,(%esi,%ebx,4)

sub %ebx,0x14(%ebx,%r9d,4)
sub %esi,0x432214(%ebx,%r9d,4)
sub %r9d,0x69432214(%ebx,%r9d,4)
sub %r13d,(%ebx,%r9d,4)

sub %ebx,0x14(%ebx,%r13d,4)
sub %esi,0x432214(%ebx,%r13d,4)
sub %r9d,0x69432214(%ebx,%r13d,4)
sub %r13d,(%ebx,%r13d,4)

sub %rbx,0x14(%ebx,%esi,4)
sub %rsi,0x432214(%ebx,%esi,4)
sub %r9,0x69432214(%esi,%ebx,4)
sub %r13,(%esi,%ebx,4)

sub %rbx,0x14(%ebx,%r9d,4)
sub %rsi,0x432214(%ebx,%r9d,4)
sub %r9,0x69432214(%ebx,%r9d,4)
sub %r13,(%ebx,%r9d,4)

sub %rbx,0x14(%ebx,%r13d,4)
sub %rsi,0x432214(%ebx,%r13d,4)
sub %r9,0x69432214(%ebx,%r13d,4)
sub %r13,(%ebx,%r13d,4)

sub %rbx,0x14(%r9d,%r13d,4)
sub %rsi,0x432214(%r9d,%r13d,4)
sub %r9,0x69432214(%r9d,%r13d,4)
sub %r13,(%r9d,%r13d,4)


sub %bl,0x14(%rbx,%rsi)
sub %dh,0x2214(%rbx,%rsi,2)
sub %sil,0x432214(%rbx,%rsi,4)
sub %r9b,0x69432214(%rsi,%rbx,8)
sub %r13b,(%rsi,%rbx,1)

sub %bl,0x14(%rbx,%r9,4)
//sub %dh,0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX
sub %sil,0x432214(%rbx,%r9,4)
sub %r9b,0x69432214(%rbx,%r9,4)
sub %r13b,(%rbx,%r9,4)

sub %bl,0x14(%rbx,%r13,4)
//sub %dh,0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX
sub %sil,0x432214(%rbx,%r13,4)
sub %r9b,0x69432214(%rbx,%r13,4)
sub %r13b,(%rbx,%r13,4)

sub %bx,0x14(%rbx,%rsi,4)
sub %si,0x432214(%rbx,%rsi,4)
sub %r9w,0x69432214(%rsi,%rbx,4)
sub %r13w,(%rsi,%rbx,4)

sub %bx,0x14(%rbx,%r9,4)
sub %si,0x432214(%rbx,%r9,4)
sub %r9w,0x69432214(%rbx,%r9,4)
sub %r13w,(%rbx,%r9,4)

sub %bx,0x14(%rbx,%r13,4)
sub %si,0x432214(%rbx,%r13,4)
sub %r9w,0x69432214(%rbx,%r13,4)
sub %r13w,(%rbx,%r13,4)

sub %ebx,0x14(%rbx,%rsi,4)
sub %esi,0x432214(%rbx,%rsi,4)
sub %r9d,0x69432214(%rsi,%rbx,4)
sub %r13d,(%rsi,%rbx,4)

sub %ebx,0x14(%rbx,%r9,4)
sub %esi,0x432214(%rbx,%r9,4)
sub %r9d,0x69432214(%rbx,%r9,4)
sub %r13d,(%rbx,%r9,4)

sub %ebx,0x14(%rbx,%r13,4)
sub %esi,0x432214(%rbx,%r13,4)
sub %r9d,0x69432214(%rbx,%r13,4)
sub %r13d,(%rbx,%r13,4)

sub %rbx,0x14(%rbx,%rsi,4)
sub %rsi,0x432214(%rbx,%rsi,4)
sub %r9,0x69432214(%rsi,%rbx,4)
sub %r13,(%rsi,%rbx,4)

sub %rbx,0x14(%rbx,%r9,4)
sub %rsi,0x432214(%rbx,%r9,4)
sub %r9,0x69432214(%rbx,%r9,4)
sub %r13,(%rbx,%r9,4)

sub %rbx,0x14(%rbx,%r13,4)
sub %rsi,0x432214(%rbx,%r13,4)
sub %r9,0x69432214(%rbx,%r13,4)
sub %r13,(%rbx,%r13,4)

sub %rbx,0x14(%r9,%r13,4)
sub %rsi,0x432214(%r9,%r13,4)
sub %r9,0x69432214(%r9,%r13,4)
sub %r13,(%r9,%r13,4)

sub %r13,(%rbx,%r13,4)
sub %r13,(%r9,%rbx,4)

sub %ebx,(%r9,%r13,4)

/////////////////////////////////////////////////////////////
//  reg to mem
/////////////////////////////////////////////////////////////

sub (%ebx),%bl
sub 0x14(%ebx),%dh
sub 0x2814(%ebx),%sil
sub 0x792814(%ebx),%r9b
sub 0x7b792814(%ebx),%r13b

sub 0x14(%ebx),%bx
sub 0x14(%ebx),%si
sub 0x14(%ebx),%r9w
sub 0x14(%ebx),%r13w

sub 0x14(%ebx),%ebx
sub 0x14(%ebx),%esi
sub 0x14(%ebx),%r9d
sub 0x14(%ebx),%r13d

sub 0x14(%ebx),%rbx
sub 0x14(%ebx),%rsi
sub 0x14(%ebx),%r9
sub 0x14(%ebx),%r13

sub 0x14(%esi),%bl
sub 0x14(%esi),%dh
sub 0x14(%esi),%sil
sub 0x14(%esi),%r9b
sub 0x14(%esi),%r13b

sub 0x14(%esi),%bx
sub 0x14(%esi),%si
sub 0x14(%esi),%r9w
sub 0x14(%esi),%r13w

sub 0x14(%esi),%ebx
sub 0x14(%esi),%esi
sub 0x14(%esi),%r9d
sub 0x14(%esi),%r13d

sub 0x14(%esi),%rbx
sub 0x14(%esi),%rsi
sub 0x14(%esi),%r9
sub 0x14(%esi),%r13

sub 0x14(%r9d),%bl
// sub 0x14(%r9d)  cannot use ah,bh,ch,dh with REX,%dh
sub 0x14(%r9d),%sil
sub 0x14(%r9d),%r9b
sub 0x14(%r9d),%r13b

sub 0x14(%r9d),%bx
sub 0x14(%r9d),%si
sub 0x14(%r9d),%r9w
sub 0x14(%r9d),%r13w

sub 0x14(%r9d),%ebx
sub 0x14(%r9d),%esi
sub 0x14(%r9d),%r9d
sub 0x14(%r9d),%r13d

sub 0x14(%r9d),%rbx
sub 0x14(%r9d),%rsi
sub 0x14(%r9d),%r9
sub 0x14(%r9d),%r13

sub 0x14(%r13d),%bl
// sub 0x14(%r13d)	cannot use ah,bh,ch,dh with REX,%dh
sub 0x14(%r13d),%sil
sub 0x14(%r13d),%r9b
sub 0x14(%r13d),%r13b

sub 0x14(%r13d),%bx
sub 0x14(%r13d),%si
sub 0x14(%r13d),%r9w
sub 0x14(%r13d),%r13w

sub 0x14(%r13d),%ebx
sub 0x14(%r13d),%esi
sub 0x14(%r13d),%r9d
sub 0x14(%r13d),%r13d

sub 0x14(%r13d),%rbx
sub 0x14(%r13d),%rsi
sub 0x14(%r13d),%r9
sub 0x14(%r13d),%r13

// -----------------

sub 0x14(%rbx),%bl
sub 0x14(%rbx),%dh
sub 0x14(%rbx),%sil
sub 0x14(%rbx),%r9b
sub 0x14(%rbx),%r13b

sub 0x14(%rbx),%bx
sub 0x14(%rbx),%si
sub 0x14(%rbx),%r9w
sub 0x14(%rbx),%r13w

sub 0x14(%rbx),%ebx
sub 0x14(%rbx),%esi
sub 0x14(%rbx),%r9d
sub 0x14(%rbx),%r13d

sub 0x14(%rbx),%rbx
sub 0x14(%rbx),%rsi
sub 0x14(%rbx),%r9
sub 0x14(%rbx),%r13

sub 0x14(%rsi),%bl
sub 0x14(%rsi),%dh
sub 0x14(%rsi),%sil
sub 0x14(%rsi),%r9b
sub 0x14(%rsi),%r13b

sub 0x14(%rsi),%bx
sub 0x14(%rsi),%si
sub 0x14(%rsi),%r9w
sub 0x14(%rsi),%r13w

sub 0x14(%rsi),%ebx
sub 0x14(%rsi),%esi
sub 0x14(%rsi),%r9d
sub 0x14(%rsi),%r13d

sub 0x14(%rsi),%rbx
sub 0x14(%rsi),%rsi
sub 0x14(%rsi),%r9
sub 0x14(%rsi),%r13

sub 0x14(%r9),%bl
// sub 0x14(%r9)	cannot use ah,bh,ch,dh with REX,%dh
sub 0x14(%r9),%sil
sub 0x14(%r9),%r9b
sub 0x14(%r9),%r13b

sub 0x14(%r9),%bx
sub 0x14(%r9),%si
sub 0x14(%r9),%r9w
sub 0x14(%r9),%r13w

sub 0x14(%r9),%ebx
sub 0x14(%r9),%esi
sub 0x14(%r9),%r9d
sub 0x14(%r9),%r13d

sub 0x14(%r9),%rbx
sub 0x14(%r9),%rsi
sub 0x14(%r9),%r9
sub 0x14(%r9),%r13

sub 0x14(%r13),%bl
// sub 0x14(%r13)	cannot use ah,bh,ch,dh with REX,%dh
sub 0x14(%r13),%sil
sub 0x14(%r13),%r9b
sub 0x14(%r13),%r13b

sub 0x14(%r13),%bx
sub 0x14(%r13),%si
sub 0x14(%r13),%r9w
sub 0x14(%r13),%r13w

sub 0x14(%r13),%ebx
sub 0x14(%r13),%esi
sub 0x14(%r13),%r9d
sub 0x14(%r13),%r13d

sub 0x14(%r13),%rbx
sub 0x14(%r13),%rsi
sub 0x14(%r13),%r9
sub 0x14(%r13),%r13

// sub 0x14(%r13w)	Index must be 32 and 64,%r13

// BL DH SIL R9B R13B / BX SI R9W R13W / EBX ESI R9D R13D / RBX RSI R9 R13


sub 0x14(%ebx,%esi),%bl
sub 0x2214(%ebx,%esi,2),%dh
sub 0x432214(%ebx,%esi,4),%sil
sub 0x69432214(%esi,%ebx,8),%r9b
sub (%esi,%ebx,1),%r13b

sub 0x14(%ebx,%r9d,4),%bl
//sub 0x2214(%ebx,%r9d,4)			ah,bh,ch,dh cannot be with REX,%dh
sub 0x432214(%ebx,%r9d,4),%sil
sub 0x69432214(%ebx,%r9d,4),%r9b
sub (%ebx,%r9d,4),%r13b

sub 0x14(%ebx,%r13d,4),%bl
//sub 0x2214(%ebx,%r13d,4)			ah,bh,ch,dh cannot be with REX,%dh
sub 0x432214(%ebx,%r13d,4),%sil
sub 0x69432214(%ebx,%r13d,4),%r9b
sub (%ebx,%r13d,4),%r13b

sub 0x14(%ebx,%esi,4),%bx
sub 0x432214(%ebx,%esi,4),%si
sub 0x69432214(%esi,%ebx,4),%r9w
sub (%esi,%ebx,4),%r13w

sub 0x14(%ebx,%r9d,4),%bx
sub 0x432214(%ebx,%r9d,4),%si
sub 0x69432214(%ebx,%r9d,4),%r9w
sub (%ebx,%r9d,4),%r13w

sub 0x14(%ebx,%r13d,4),%bx
sub 0x432214(%ebx,%r13d,4),%si
sub 0x69432214(%ebx,%r13d,4),%r9w
sub (%ebx,%r13d,4),%r13w

sub 0x14(%ebx,%esi,4),%ebx
sub 0x432214(%ebx,%esi,4),%esi
sub 0x69432214(%esi,%ebx,4),%r9d
sub (%esi,%ebx,4),%r13d

sub 0x14(%ebx,%r9d,4),%ebx
sub 0x432214(%ebx,%r9d,4),%esi
sub 0x69432214(%ebx,%r9d,4),%r9d
sub (%ebx,%r9d,4),%r13d

sub 0x14(%ebx,%r13d,4),%ebx
sub 0x432214(%ebx,%r13d,4),%esi
sub 0x69432214(%ebx,%r13d,4),%r9d
sub (%ebx,%r13d,4),%r13d

sub 0x14(%ebx,%esi,4),%rbx
sub 0x432214(%ebx,%esi,4),%rsi
sub 0x69432214(%esi,%ebx,4),%r9
sub (%esi,%ebx,4),%r13

sub 0x14(%ebx,%r9d,4),%rbx
sub 0x432214(%ebx,%r9d,4),%rsi
sub 0x69432214(%ebx,%r9d,4),%r9
sub (%ebx,%r9d,4),%r13

sub 0x14(%ebx,%r13d,4),%rbx
sub 0x432214(%ebx,%r13d,4),%rsi
sub 0x69432214(%ebx,%r13d,4),%r9
sub (%ebx,%r13d,4),%r13

sub 0x14(%r9d,%r13d,4),%rbx
sub 0x432214(%r9d,%r13d,4),%rsi
sub 0x69432214(%r9d,%r13d,4),%r9
sub (%r9d,%r13d,4),%r13


sub 0x14(%rbx,%rsi),%bl
sub 0x2214(%rbx,%rsi,2),%dh
sub 0x432214(%rbx,%rsi,4),%sil
sub 0x69432214(%rsi,%rbx,8),%r9b
sub (%rsi,%rbx,1),%r13b

sub 0x14(%rbx,%r9,4),%bl
//sub 0x2214(%rbx,%r9,4)			ah,bh,ch,dh cannot be with REX,%dh
sub 0x432214(%rbx,%r9,4),%sil
sub 0x69432214(%rbx,%r9,4),%r9b
sub (%rbx,%r9,4),%r13b

sub 0x14(%rbx,%r13,4),%bl
//sub 0x2214(%rbx,%r13,4)			ah,bh,ch,dh cannot be with REX,%dh
sub 0x432214(%rbx,%r13,4),%sil
sub 0x69432214(%rbx,%r13,4),%r9b
sub (%rbx,%r13,4),%r13b

sub 0x14(%rbx,%rsi,4),%bx
sub 0x432214(%rbx,%rsi,4),%si
sub 0x69432214(%rsi,%rbx,4),%r9w
sub (%rsi,%rbx,4),%r13w

sub 0x14(%rbx,%r9,4),%bx
sub 0x432214(%rbx,%r9,4),%si
sub 0x69432214(%rbx,%r9,4),%r9w
sub (%rbx,%r9,4),%r13w

sub 0x14(%rbx,%r13,4),%bx
sub 0x432214(%rbx,%r13,4),%si
sub 0x69432214(%rbx,%r13,4),%r9w
sub (%rbx,%r13,4),%r13w

sub 0x14(%rbx,%rsi,4),%ebx
sub 0x432214(%rbx,%rsi,4),%esi
sub 0x69432214(%rsi,%rbx,4),%r9d
sub (%rsi,%rbx,4),%r13d

sub 0x14(%rbx,%r9,4),%ebx
sub 0x432214(%rbx,%r9,4),%esi
sub 0x69432214(%rbx,%r9,4),%r9d
sub (%rbx,%r9,4),%r13d

sub 0x14(%rbx,%r13,4),%ebx
sub 0x432214(%rbx,%r13,4),%esi
sub 0x69432214(%rbx,%r13,4),%r9d
sub (%rbx,%r13,4),%r13d

sub 0x14(%rbx,%rsi,4),%rbx
sub 0x432214(%rbx,%rsi,4),%rsi
sub 0x69432214(%rsi,%rbx,4),%r9
sub (%rsi,%rbx,4),%r13

sub 0x14(%rbx,%r9,4),%rbx
sub 0x432214(%rbx,%r9,4),%rsi
sub 0x69432214(%rbx,%r9,4),%r9
sub (%rbx,%r9,4),%r13

sub 0x14(%rbx,%r13,4),%rbx
sub 0x432214(%rbx,%r13,4),%rsi
sub 0x69432214(%rbx,%r13,4),%r9
sub (%rbx,%r13,4),%r13

sub 0x14(%r9,%r13,4),%rbx
sub 0x432214(%r9,%r13,4),%rsi
sub 0x69432214(%r9,%r13,4),%r9
sub (%r9,%r13,4),%r13

sub (%rbx,%r13,4),%r13
sub (%r9,%rbx,4),%r13

sub (%rbx,%r13,4),%r13w
sub (%r9,%rbx,4),%r13w

sub (%rbx,%r13,4),%r13
sub (%r9,%rbx,4),%r13

sub (%r9,%r13,4),%ebx

/////////////////////////////////////////////////////////////
// reg to reg
/////////////////////////////////////////////////////////////

sub %bl, %bl
sub %dh, %bl
sub %sil, %bl
sub %r9b, %bl
sub %r13b, %bl

sub %bl, %dh
sub %dh, %dh
//sub %sil, %dh		ah-dh and REX error
//sub %r9b, %dh
//sub %r13b, %dh

sub %bl, %sil
//sub %dh, %sil		ah-dh and REX error
sub %sil, %sil
sub %r9b, %sil
sub %r13b, %sil

sub %bl, %r9b
//sub %dh, %r9b		ah,bh,ch,dh and REX error
sub %sil, %r9b
sub %r9b, %r9b
sub %r13b, %r9b

sub %bl, %r13b
//sub %dh, %r13b	ah,bh,ch,dh and REX error
sub %sil, %r13b
sub %r9b, %r13b
sub %r13b, %r13b

sub %bx, %bx
sub %si, %bx
sub %r9w, %bx
sub %r13w, %bx

sub %bx, %si
sub %si, %si
sub %r9w, %si
sub %r13w, %si

sub %bx, %r9w
sub %si, %r9w
sub %r9w, %r9w
sub %r13w, %r9w

sub %bx, %r13w
sub %si, %r13w
sub %r9w, %r13w
sub %r13w, %r13w

sub %ebx, %ebx
sub %esi, %ebx
sub %r9d, %ebx
sub %r13d, %ebx

sub %ebx, %esi
sub %esi, %esi
sub %r9d, %esi
sub %r13d, %esi

sub %ebx, %r9d
sub %esi, %r9d
sub %r9d, %r9d
sub %r13d, %r9d

sub %ebx, %r13d
sub %esi, %r13d
sub %r9d, %r13d
sub %r13d, %r13d

sub %rbx, %rbx
sub %rsi, %rbx
sub %r9, %rbx
sub %r13, %rbx

sub %rbx, %rsi
sub %rsi, %rsi
sub %r9, %rsi
sub %r13, %rsi

sub %rbx, %r9
sub %rsi, %r9
sub %r9, %r9
sub %r13, %r9

sub %rbx, %r13
sub %rsi, %r13
sub %r9, %r13
sub %r13, %r13


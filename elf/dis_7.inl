
// tttn
// 0001 NO     No overflow
// 0010 B, NAE Below, Not above or equal
// 0011 NB, AE Not below, Above or equal
// 0100 E, Z   Equal, Zero
// 0101 NE, NZ Not equal, Not zero
// 0110 BE, NA Below or equal, Not above
// 0111 NBE, A Not below or equal, Above
// 1000 S      Sign
// 1001 NS     Not sign
// 1010 P, PE  Parity, Parity Even
// 1011 NP, PO Not parity, Parity Odd
// 1100 L, NGE Less than, Not greater than or equal to
// 1101 NL, GE Not less than, Greater than or equal to
// 1110 LE, NG Less than or equal to, Not greater than
// 1111 NLE, G Not less than or equal to, Greater than


const char * dis_70(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_71(const char * code, unsigned prefix)
{
	// 7 0001 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jno %s\n", disp );

	return code;
}

const char * dis_72(const char * code, unsigned prefix)
{
	// 7 0010 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jb %s\n", disp );

	return code;
}

const char * dis_73(const char * code, unsigned prefix)
{
	// 7 0011 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jnb %s\n", disp );

	return code;
}

const char * dis_74(const char * code, unsigned prefix)
{
	// 7 0100 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "je %s\n", disp );
	return code;
}

const char * dis_75(const char * code, unsigned prefix)
{
	// 7 0101 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jne %s\n", disp );

	return code;
}

const char * dis_76(const char * code, unsigned prefix)
{
	// 7 0110 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jbe %s\n", disp );

	return code;
}

const char * dis_77(const char * code, unsigned prefix)
{
	// 7 0111 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jnbe %s\n", disp );

	return code;
}

const char * dis_78(const char * code, unsigned prefix)
{
	// 7 1000 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "js %s\n", disp );

	return code;
}

const char * dis_79(const char * code, unsigned prefix)
{
	// 7 1001 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jns %s\n", disp );

	return code;
}

const char * dis_7a(const char * code, unsigned prefix)
{
	// 7 1010 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jp %s\n", disp );

	return code;
}

const char * dis_7b(const char * code, unsigned prefix)
{
	// 7 1011 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jnp %s\n", disp );

	return code;
}

const char * dis_7c(const char * code, unsigned prefix)
{
	// 7 1100 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jl %s\n", disp );

	return code;
}

const char * dis_7d(const char * code, unsigned prefix)
{
	// 7 1101 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jnl %s\n", disp );

	return code;
}

const char * dis_7e(const char * code, unsigned prefix)
{
	// 7 1110 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jle %s\n", disp );

	return code;
}

const char * dis_7f(const char * code, unsigned prefix)
{
	// 7 1111 : disp8

	char disp[16];
	code = imm8( code, disp );
	printf( "jg %s\n", disp );

	return code;
}


const char * dis_70(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jo %s\n", disp );

	return code;
}

const char * dis_71(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jno %s\n", disp );

	return code;
}

const char * dis_72(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jb %s\n", disp );

	return code;
}

const char * dis_73(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jnb %s\n", disp );

	return code;
}

const char * dis_74(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "je %s\n", disp );
	return code;
}

const char * dis_75(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jne %s\n", disp );

	return code;
}

const char * dis_76(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jbe %s\n", disp );

	return code;
}

const char * dis_77(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jnbe %s\n", disp );

	return code;
}

const char * dis_78(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "js %s\n", disp );

	return code;
}

const char * dis_79(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jns %s\n", disp );

	return code;
}

const char * dis_7a(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jp %s\n", disp );

	return code;
}

const char * dis_7b(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jnp %s\n", disp );

	return code;
}

const char * dis_7c(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jl %s\n", disp );

	return code;
}

const char * dis_7d(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jnl %s\n", disp );

	return code;
}

const char * dis_7e(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "jle %s\n", disp );
	}
	else
	{
		std::string op1;
		std::string op2;

		if( ( prefix & REX_W ) == REX_W )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );	
			if( prefix & PRE_REP )
				printf( "vmovq %s,%s\n", op2.c_str(), op1.c_str() );
			else
				printf( "vmovd %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );	
			if( prefix & PRE_REP )
				printf( "vmovq %s,%s\n", op2.c_str(), op1.c_str() );
			else
				printf( "vmovd %s,%s\n", op1.c_str(), op2.c_str() );
		}
	}

	return code;
}

const char * dis_7f(const char * code, unsigned prefix)
{
	char disp[16];
	code = imm8( code, disp );
	printf( "jg %s\n", disp );

	return code;
}

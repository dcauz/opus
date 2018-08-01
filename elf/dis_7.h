
const char * dis_70(const char * code, unsigned prefix)
{
	if( prefix & VEX )
	{
		std::string op1;
		std::string op2;

		if( prefix & PRE_256 )
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
		else
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
		char imm[12];
		code = uimm8( code, imm );

		if( prefix & PRE_OS )
			printf( "vpshufd $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		else if( prefix & PRE_REP )
			printf( "vpshufhw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		else
			printf( "vpshuflw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
	}
	else
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "jo %s\n", disp );
	}

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
	if( prefix & VEX )
	{
		std::string op1;
		std::string op2;

		int v = vvvv(prefix);

		unsigned reg = (*code & 0x38) >> 3;

		const char * r2;
		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
			r2 = regToStr(static_cast<Register>(YMM0+(15-v)));
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			r2 = regToStr(static_cast<Register>(XMM0+(15-v)));
		}

		char imm[12];
		code = uimm8( code, imm );

		if( reg == 3 )
			printf( "vpsrldq $%s,%s,%s\n", imm, op2.c_str(), r2 );
		else
			printf( "vpslldq $%s,%s,%s\n", imm, op2.c_str(), r2 );
	}
	else
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "jnb %s\n", disp );
	}
	return code;
}

const char * dis_74(const char * code, unsigned prefix)
{
	if((prefix & VEX ) == 0 )
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "je %s\n", disp );
	}
	else
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;
	
		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			printf( "vpcmpeqb %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpcmpeqb %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_75(const char * code, unsigned prefix)
{
	if((prefix & VEX ) == 0 )
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "jne %s\n", disp );
	}
	else
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;
	
		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			printf( "vpcmpeqw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpcmpeqw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_76(const char * code, unsigned prefix)
{
	if((prefix & VEX ) == 0 )
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "jbe %s\n", disp );
	}
	else
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;
	
		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			printf( "vpcmpeqd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpcmpeqd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

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
	if(prefix & VEX )
	{
		std::string op1;
		std::string op2;

		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			if(prefix & PRE_OS )
				printf( "vhaddpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
			else
				printf( "vhaddps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			if(prefix & PRE_OS )
				printf( "vhaddpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
			else
				printf( "vhaddps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}
	else
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "jl %s\n", disp );
	}

	return code;
}

const char * dis_7d(const char * code, unsigned prefix)
{
	if(prefix & VEX )
	{
		std::string op1;
		std::string op2;

		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			if( prefix & PRE_OS )
				printf( "vhsubpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
			else
				printf( "vhsubps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			if( prefix & PRE_OS )
				printf( "vhsubpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
			else
				printf( "vhsubps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}
	else
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "jnl %s\n", disp );
	}

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
	if( ( prefix & VEX ) == 0 )
	{
		char disp[16];
		code = imm8( code, disp );
		printf( "jg %s\n", disp );
	}
	else
	{
		std::string op1;
		std::string op2;

		if( prefix & PRE_REP )
		{
			if( prefix & PRE_256 )
			{
				code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
				printf( "vmovdqu %s,%s\n", op1.c_str(), op2.c_str() );
			}
			else
			{
				code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
				printf( "vmovdqu %s,%s\n", op1.c_str(), op2.c_str() );
			}
		}
		else
		{
			if( prefix & PRE_256 )
			{
				code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
				printf( "vmovdqa %s,%s\n", op1.c_str(), op2.c_str() );
			}
			else
			{
				code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
				printf( "vmovdqa %s,%s\n", op1.c_str(), op2.c_str() );
			}
		}
	}

	return code;
}

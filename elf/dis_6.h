
const char * dis_60(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpunpcklbw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpunpcklbw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_61(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpunpcklwd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpunpcklwd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_62(const char * code, unsigned prefix)
{
	assert( prefix & VEX );

	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpunpckldq %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpunpckldq %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_63(const char * code, unsigned prefix)
{
	if(( prefix & VEX ) == 0 )
	{
		std::string op1;
		std::string op2;

		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2, -1, 32, -1 );	

		printf( "movslq %s,%s\n", op2.c_str(),op1.c_str() );
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
			printf( "vpacksswb %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpacksswb %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_64(const char * code, unsigned prefix)
{
	assert( prefix & VEX );

	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpcmpgtb %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpcmpgtb %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_65(const char * code, unsigned prefix)
{
	assert( prefix & VEX );

	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpcmpgtw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpcmpgtw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_66(const char * code, unsigned prefix)
{
	assert( prefix & VEX );

	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpcmpgtd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpcmpgtd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_67(const char * code, unsigned prefix)
{
	assert( prefix & VEX );

	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpackuswb %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpackuswb %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_68(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpunpckhbw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpunpckhbw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_69(const char * code, unsigned prefix)
{
	if(( prefix & VEX ) == 0 )
	{
		std::string op1;
		std::string op2;

		int opSize = (prefix & PRE_OS )?16:(((prefix & REX_W) == REX_W)?64:32);

		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2, -1, opSize, -1 );	

		char imm[16];
		if( prefix & PRE_OS )
			code = imm16( code, imm );
		else
			code = imm32( code, imm );
	
		printf( "imul $%s,%s,%s\n", imm, op2.c_str(),op1.c_str() );
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
			printf( "vpunpckhwd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpunpckhwd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_6a(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpunpckhdq %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpunpckhdq %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}


const char * dis_6b(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		std::string op1;
		std::string op2;

		int opSize = (prefix & PRE_OS )?16:(((prefix & REX_W) == REX_W)?64:32);

		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2, -1, opSize, -1 );	

		char imm[10];
		code = imm8( code, imm );

		printf( "imul $%s,%s,%s\n", imm, op2.c_str(),op1.c_str() );
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
			printf( "vpackssdw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpackssdw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_6c(const char * code, unsigned prefix)
{
	if( (prefix & VEX) == 0 )
	{
		if( prefix & PRE_REP )
			printf( "rep " );

		printf( "insb (%%dx),%%es:(%%rdi)\n");
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
			printf( "vpunpcklqdq %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpunpcklqdq %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_6d(const char * code, unsigned prefix)
{
	if( (prefix & VEX) == 0 )
	{
		if( prefix & PRE_REP )
			printf( "rep " );

		if( prefix & PRE_OS )
			printf( "insw (%%dx),%%es:(%%rdi)\n" );
		else
		   	printf( "insl (%%dx),%%es:(%%rdi)\n" );
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
			printf( "vpunpckhqdq %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpunpckhqdq %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_6e(const char * code, unsigned prefix)
{
	if( (prefix & VEX) == 0 )
	{
		if( prefix & PRE_REP )
			printf( "rep outsb %%ds:(%%rsi),(%%dx)\n" );
		else
			printf( "outsb %%ds:(%%rsi),(%%dx)\n");
	}
	else
	{
		std::string op1;
		std::string op2;
        code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );

		printf( "vmovd %s,%s\n", op2.c_str(), op1.c_str() );
	}

	return code;
}

const char * dis_6f(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		if( prefix & PRE_REP )
			printf( "rep ");

		if( prefix & PRE_OS )
			printf( "outsw %%ds:(%%rsi),(%%dx)\n");
		else
			printf( "outsl %%ds:(%%rsi),(%%dx)\n");
	}
	else
	{
		std::string op1;
		std::string op2;

		if( prefix & PRE_256 )
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
			printf( "vmovdqa %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vmovdqa %s,%s\n", op2.c_str(), op1.c_str() );
		}
	}

	return code;
}


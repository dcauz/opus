
const char * dis_10(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( (prefix & VEX ) == 0 )
	{
		if(code[1] == 0x25)
			code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );	
		else
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );
	
		printf( "adc %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
		printf( "vmovups %s,%s\n", op2.c_str(), op1.c_str() );
	}

	return code;
}

const char * dis_11(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( ( prefix & VEX ) == 0 )
	{
		if( code[1] == 0x25)
			code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );	
		else
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );

		printf( "adc %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
		printf( "vmovups %s,%s\n", op1.c_str(), op2.c_str() );
	}

	return code;
}

const char * dis_12(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		std::string op1;
		std::string op2;

		if( code[1] == 0x25)
			code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );	
		else
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );

		printf( "adc %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;

		int mod = (*code & 0xc0) >> 6;

		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			if( mod == 3 )
				printf( "vmovhlps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
			else
				printf( "vmovlps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			if( mod == 3 )
				printf( "vmovhlps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
			else
				printf( "vmovlps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_13(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		std::string op1;
		std::string op2;

		if( code[1] == 0x25)
			code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );	
		else
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

		printf( "adc %s,%s\n", op1.c_str(), op2.c_str() );
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
			printf( "vmovlps %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vmovlps %s,%s\n", op1.c_str(), op2.c_str() );
		}
	}

	return code;
}

const char * dis_14(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_15(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_16(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	int mod = (*code & 0xc0 ) >> 6;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		if( mod != 3 )
			printf( "vmovhps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		else
			printf( "vmovlhps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		if( mod != 3 )
			printf( "vmovhps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		else
			printf( "vmovlhps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_17(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vmovhps %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vmovhps %s,%s\n", op1.c_str(), op2.c_str() );
	}

	return code;
}

const char * dis_18(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if(code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );	
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );

	printf( "sbb %s,%s\n", op1.c_str(), op2.c_str() );
	return code;
}

const char * dis_19(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );	
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );

	printf( "sbb %s,%s\n", op1.c_str(), op2.c_str() );
	return code;
}

const char * dis_1a(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );	
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );

	printf( "sbb %s,%s\n", op1.c_str(), op2.c_str() );
	return code;
}

const char * dis_1b(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );	
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

	printf( "sbb %s,%s\n", op1.c_str(), op2.c_str() );
	return code;
}

const char * dis_1c(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_1d(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_1e(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_1f(const char * code, unsigned prefix)
{
TODO
	return code;
}


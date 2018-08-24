
const char * dis_40(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		if( prefix & PRE_3A )
		{

			char imm[10];
			code = uimm8( code, imm );

			printf( "vdpps $%s,%s,%%ymm%d,%s\n", imm,op2.c_str(), vvvv, op1.c_str() );
		}
		else
			printf( "vpmulld %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		if( prefix & PRE_3A )
		{

			char imm[10];
			code = uimm8( code, imm );

			printf( "vdpps $%s,%s,%%xmm%d,%s\n", imm,op2.c_str(), vvvv, op1.c_str() );
		}
		else
			printf( "vpmulld %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_41(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	
	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

	if( prefix & PRE_38 )
		printf( "vphminposuw %s,%s\n", op2.c_str(), op1.c_str() );
	else
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		char imm[10];
		code = uimm8( code, imm );

		printf( "vdppd $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_42(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

	char imm[10];
	code = uimm8( code, imm );

	if( prefix & PRE_256 )
		printf( "vmpsadbw $%s,%s,%%ymm%d,%s\n", imm, op2.c_str(), vvvv, op1.c_str() );
	else
		printf( "vmpsadbw $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), vvvv, op1.c_str() );

	return code;
}

const char * dis_44(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op2, op1 );
		
	char imm[10];
	code = uimm8( code, imm );

	int i = strtol(imm, NULL, 16);

	switch(i)
	{
	default:
		printf( "vpclmulqdq $%s,%s,%%xmm%d,%s\n", imm, op1.c_str(), vvvv, op2.c_str() );
		break;
	case 0:
		printf( "vpclmullqlqdq %s,%%xmm%d,%s\n", op1.c_str(), vvvv, op2.c_str() );
		break;
	case 1:
		printf( "vpclmulhqlqdq %s,%%xmm%d,%s\n", op1.c_str(), vvvv, op2.c_str() );
		break;
	case 2:
		printf( "vpclmullqhqdq %s,%%xmm%d,%s\n", op1.c_str(), vvvv, op2.c_str() );
		break;
	case 3:
		printf( "vpclmulhqhqdq %s,%%xmm%d,%s\n", op1.c_str(), vvvv, op2.c_str() );
		break;
	case 16:
		printf( "vpclmullqhqdq %s,%%xmm%d,%s\n", op1.c_str(), vvvv, op2.c_str() );
		break;
	case 17:
		printf( "vpclmulhqhqdq %s,%%xmm%d,%s\n", op1.c_str(), vvvv, op2.c_str() );
		break;
	}

	return code;
}

const char * dis_4a(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	

		int r = (*code++ >> 4) & 0x0f;
		const char * reg = regToStr( static_cast<Register>(YMM0+r) );

		printf( "vblendvps %s,%s,%%ymm%d,%s\n", reg, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		int r = (*code++ >> 4) & 0x0f;
		const char * reg = regToStr( static_cast<Register>(XMM0+r) );

		printf( "vblendvps %s,%s,%%xmm%d,%s\n", reg, op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_4b(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	

		int r = (*code++ >> 4) & 0x0f;
		const char * reg = regToStr( static_cast<Register>(YMM0+r) );

		printf( "vblendvpd %s,%s,%%ymm%d,%s\n", reg, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		int r = (*code++ >> 4) & 0x0f;
		const char * reg = regToStr( static_cast<Register>(XMM0+r) );

		printf( "vblendvpd %s,%s,%%xmm%d,%s\n", reg, op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_4c(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	

		int r = (*code++ >> 4) & 0x0f;
		const char * reg = regToStr( static_cast<Register>(YMM0+r) );

		printf( "vpblendvb %s,%s,%%ymm%d,%s\n", reg, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

		int r = (*code++ >> 4) & 0x0f;
		const char * reg = regToStr( static_cast<Register>(XMM0+r) );

		printf( "vpblendvb %s,%s,%%xmm%d,%s\n", reg, op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

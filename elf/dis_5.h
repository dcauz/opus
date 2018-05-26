
const char * push_pop_reg( char code, unsigned prefix )
{
	if( prefix & PRE_OS )
	{
		switch(code)
		{
		default:	return "ERROR";

		case 0:	return ((prefix & REX_B) == 0)? "%ax" : "%r8w";
		case 1:	return ((prefix & REX_B) == 0)? "%cx" : "%r9w";
		case 2:	return ((prefix & REX_B) == 0)? "%dx" : "%r10w";
		case 3:	return ((prefix & REX_B) == 0)? "%bx" : "%r11w";
		case 4:	return ((prefix & REX_B) == 0)? "%sp" : "%r12w";
		case 5:	return ((prefix & REX_B) == 0)? "%bp" : "%r13w";
		case 6:	return ((prefix & REX_B) == 0)? "%si" : "%r14w";
		case 7:	return ((prefix & REX_B) == 0)? "%di" : "%r15w";
		}
	}
	else
	{
		switch(code)
		{
		default:	return "ERROR";

		case 0:	return ((prefix & REX_B) == 0)? "%rax" : "%r8";
		case 1:	return ((prefix & REX_B) == 0)? "%rcx" : "%r9";
		case 2:	return ((prefix & REX_B) == 0)? "%rdx" : "%r10";
		case 3:	return ((prefix & REX_B) == 0)? "%rbx" : "%r11";
		case 4:	return ((prefix & REX_B) == 0)? "%rsp" : "%r12";
		case 5:	return ((prefix & REX_B) == 0)? "%rbp" : "%r13";
		case 6:	return ((prefix & REX_B) == 0)? "%rsi" : "%r14";
		case 7:	return ((prefix & REX_B) == 0)? "%rdi" : "%r15";
		}
	}
}

const char * dis_push(const char * code, unsigned prefix)
{
	printf( "push %s\n", push_pop_reg(*code & 0x07, prefix) );
	return code+1;
}

const char * dis_pop(const char * code, unsigned prefix)
{
	printf( "pop %s\n", push_pop_reg((*code-8) & 0x07, prefix) );
	return code+1;
}

const char * dis_50(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( prefix & PRE_256 )
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL_YMM0, 0, op1, op2, 32 );
        printf( "vmovmskps %s,%s\n", op2.c_str(), op1.c_str() );
    }
    else
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL_XMM0, 0, op1, op2, 32 );
        printf( "vmovmskps %s,%s\n", op2.c_str(), op1.c_str() );
    }

    return code;
}

const char * dis_53(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( prefix & PRE_REP )
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;
		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			printf( "vrcpss %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vrcpss %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}
	else
	{
		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			printf( "vrcpps %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vrcpps %s,%s\n", op2.c_str(), op1.c_str() );
		}
	}

	return code;
}

const char * dis_58(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	const char * inst = ( prefix & PRE_REP ) ? "vaddss" : "vaddps";

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_59(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	const char * inst = ( prefix & PRE_REP ) ? "vmulss" : "vmulps";

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_5c(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	const char * inst = ( prefix & PRE_REP ) ? "vsubss" : "vsubps";

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}

    return code;
}

const char * dis_5e(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	const char * inst = ( prefix & PRE_REP ) ? "vdivss" : "vdivps";

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}

    return code;
}

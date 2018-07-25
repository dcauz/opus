
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
		if( prefix & PRE_OS )
	        printf( "vmovmskpd %s,%s\n", op2.c_str(), op1.c_str() );
		else
	        printf( "vmovmskps %s,%s\n", op2.c_str(), op1.c_str() );
    }
    else
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL_XMM0, 0, op1, op2, 32 );
		if( prefix & PRE_OS )
	        printf( "vmovmskpd %s,%s\n", op2.c_str(), op1.c_str() );
		else
	        printf( "vmovmskps %s,%s\n", op2.c_str(), op1.c_str() );
    }

    return code;
}

const char * dis_51(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

	int mod = ( *code & 0xc0 ) >> 6;

	if( prefix & PRE_REP )
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		if( mod == 3 )
		{
   		 	if( prefix & PRE_256 )
		    {
   		    	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
   		     	printf( "vsqrtss %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
   		 	}
   		 	else
		    {
   		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
   		     	printf( "vsqrtss %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
   		 	}
		}
		else
		{
   		 	if( prefix & PRE_256 )
		    {
   		    	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0_AL, 0, op1, op2, 32 );
   		     	printf( "vsqrtss %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
   		 	}
   		 	else
		    {
   		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2, 32 );
   		     	printf( "vsqrtss %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
   		 	}
		}
	}
	else
	{
		if( mod == 3 )
		{
   		 	if( prefix & PRE_256 )
		    {
   		    	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
				if( prefix & PRE_OS )
	   		     	printf( "vsqrtpd %s,%s\n", op2.c_str(), op1.c_str() );
				else
   		     		printf( "vsqrtps %s,%s\n", op2.c_str(), op1.c_str() );
   		 	}
			else if( prefix & PRE_NE )
			{
				int vvvv = prefix >> 28;
				vvvv = vvvv ^ 0xf;

		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
		     	printf( "vsqrtsd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
			}
   		 	else
		    {
   		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
				if( prefix & PRE_OS )
	   		     	printf( "vsqrtpd %s,%s\n", op2.c_str(), op1.c_str() );
				else
   		     		printf( "vsqrtps %s,%s\n", op2.c_str(), op1.c_str() );
   		 	}
		}
		else if( prefix & PRE_NE )
		{
			int vvvv = prefix >> 28;
			vvvv = vvvv ^ 0xf;

	     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2, 32 );
	     	printf( "vsqrtsd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
   		 	if( prefix & PRE_256 )
		    {
   		    	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0_AL, 0, op1, op2, 32 );
				if( prefix & PRE_OS )
	   		     	printf( "vsqrtpd %s,%s\n", op2.c_str(), op1.c_str() );
				else
	   		     	printf( "vsqrtps %s,%s\n", op2.c_str(), op1.c_str() );
   		 	}
   		 	else
		    {
   		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2, 32 );
				if( prefix & PRE_OS )
	   		     	printf( "vsqrtpd %s,%s\n", op2.c_str(), op1.c_str() );
				else
   		     		printf( "vsqrtps %s,%s\n", op2.c_str(), op1.c_str() );
   		 	}
		}
	}

    return code;
}

const char * dis_52(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

	int mod = ( *code & 0xc0 ) >> 6;

	if( prefix & PRE_REP )
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		if( mod == 3 )
		{
   		 	if( prefix & PRE_256 )
		    {
   		    	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
   		     	printf( "vrsqrtss %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
   		 	}
   		 	else
		    {
   		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
   		     	printf( "vrsqrtss %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
   		 	}
		}
		else
		{
   		 	if( prefix & PRE_256 )
		    {
   		    	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0_AL, 0, op1, op2, 32 );
   		     	printf( "vrsqrtss %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
   		 	}
   		 	else
		    {
   		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2, 32 );
   		     	printf( "vrsqrtss %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
   		 	}
		}
	}
	else
	{
		if( mod == 3 )
		{
   		 	if( prefix & PRE_256 )
		    {
   		    	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
   		     	printf( "vrsqrtps %s,%s\n", op2.c_str(), op1.c_str() );
   		 	}
   		 	else
		    {
   		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
   		     	printf( "vrsqrtps %s,%s\n", op2.c_str(), op1.c_str() );
   		 	}
		}
		else
		{
   		 	if( prefix & PRE_256 )
		    {
   		    	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0_AL, 0, op1, op2, 32 );
   		     	printf( "vrsqrtps %s,%s\n", op2.c_str(), op1.c_str() );
   		 	}
   		 	else
		    {
   		     	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2, 32 );
   		     	printf( "vrsqrtps %s,%s\n", op2.c_str(), op1.c_str() );
   		 	}
		}
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

const char * dis_54(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

    std::string op1;
    std::string op2;

    if( prefix & PRE_OS )
    {
    	if( prefix & PRE_256 )
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
	        printf( "vandpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
	        printf( "vandpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
    }
    else if( prefix & PRE_256 )
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
        printf( "vandps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
    }
    else
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
        printf( "vandps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
    }

    return code;
}

const char * dis_55(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

    std::string op1;
    std::string op2;

    if( prefix & PRE_OS )
    {
    	if( prefix & PRE_256 )
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
	        printf( "vandnpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
	        printf( "vandnpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
    }
    else if( prefix & PRE_256 )
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
        printf( "vandnps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
    }
    else
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
        printf( "vandnps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
    }

    return code;
}

const char * dis_56(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

    std::string op1;
    std::string op2;

    if( prefix & PRE_OS )
    {
    	if( prefix & PRE_256 )
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
	        printf( "vorpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
	        printf( "vorpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
    }
    else if( prefix & PRE_256 )
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
        printf( "vorps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
    }
    else
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
        printf( "vorps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
    }

    return code;
}

const char * dis_57(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

    std::string op1;
    std::string op2;

    if( prefix & PRE_OS )
    {
    	if( prefix & PRE_256 )
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
	        printf( "vxorpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
        	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
	        printf( "vxorpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
    }
    else if( prefix & PRE_256 )
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2, 32 );
        printf( "vxorps %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
    }
    else
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
        printf( "vxorps %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
    }

    return code;
}

const char * dis_58(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	const char * inst = ( prefix & PRE_REP ) ? "vaddss" : 
		((prefix & PRE_OS) ?"vaddpd":
			((prefix & PRE_NE)?"vaddsd":"vaddps"));

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

	const char * inst = ( prefix & PRE_REP ) ? "vmulss" : 
			((prefix & PRE_NE)?"vmulsd":"vmulps");

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		if( prefix & PRE_OS )
			printf( "vmulpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		else
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		if( prefix & PRE_OS )
			printf( "vmulpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		else
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_5b(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

	printf( "vcvtdq2ps %s,%s\n", op2.c_str(), op1.c_str() );

	return code;
}

const char * dis_5a(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if(prefix & PRE_256 )
	{
		if( prefix & PRE_OS )
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_YMM0, 0, op1, op2 );	
		else
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0_XMM0, 0, op1, op2 );	
	}
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

	if( prefix & PRE_REP )
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		printf( "vcvtss2sd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else if( prefix & PRE_NE )
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		printf( "vcvtsd2ss %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else if( prefix & PRE_OS )
		printf( "vcvtpd2ps %s,%s\n", op2.c_str(), op1.c_str() );
	else
		printf( "vcvtps2pd %s,%s\n", op2.c_str(), op1.c_str() );

	return code;
}

const char * dis_5c(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	const char * inst = ( prefix & PRE_REP ) ? "vsubss" : (( prefix & PRE_NE) ? "vsubsd":"vsubps");

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		if( prefix & PRE_OS )
			printf( "vsubpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		else
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		if( prefix & PRE_OS )
			printf( "vsubpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		else
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}

    return code;
}

const char * dis_5d(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	const char * inst = ( prefix & PRE_REP ) ? "vminss" : 
		((prefix & PRE_OS)?"vminpd":
		((prefix & PRE_NE)?"vminsd":"vminps"));

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

	const char * inst = ( prefix & PRE_REP ) ? "vdivss" : 
			((prefix & PRE_NE)?"vdivsd":"vdivps");

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		if( prefix & PRE_OS )
			printf( "vdivpd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		else
			printf( "%s %s,%%ymm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		if( prefix & PRE_OS )
			printf( "vdivpd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		else
			printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
	}

    return code;
}

const char * dis_5f(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	const char * inst = ( prefix & PRE_REP ) ? "vmaxss" : 
			((prefix & PRE_OS)?"vmaxpd":
			((prefix & PRE_NE)?"vmaxsd":"vmaxps"));

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

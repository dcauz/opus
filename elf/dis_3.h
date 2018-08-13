
const char * dis_30(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if(code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );

    printf( "xor %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_31(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );

    printf( "xor %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_32(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );

    printf( "xor %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_33(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

    printf( "xor %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_34(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_35(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_37(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpcmpgtq %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpcmpgtq %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_38(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
    	std::string op1;
    	std::string op2;

    	if(code[1] == 0x25)
        	code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    	else
        	code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );

   	 	printf( "cmp %s,%s\n", op1.c_str(), op2.c_str() );
	    return code;
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
			printf( "vpminsb %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpminsb %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}

		return code;
	}
}

const char * dis_39(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
    	std::string op1;
    	std::string op2;

    	if( code[1] == 0x25)
        	code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
    	else
        	code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );

    	printf( "cmp %s,%s\n", op1.c_str(), op2.c_str() );
    	return code;
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
			printf( "vpminsd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpminsd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}

		return code;
	}
}

const char * dis_3a(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
	    std::string op1;
   	 	std::string op2;

    	if( code[1] == 0x25)
        	code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );
    	else
        	code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );

    	printf( "cmp %s,%s\n", op1.c_str(), op2.c_str() );
    	return code;
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
			printf( "vpminuw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpminuw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}

		return code;
	}
}

const char * dis_3b(const char * code, unsigned prefix)
{
   	std::string op1;
    std::string op2;

	if( ( prefix & VEX ) == 0 )
	{
    	if( code[1] == 0x25)
        	code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );
    	else
        	code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
	
    	printf( "cmp %s,%s\n", op1.c_str(), op2.c_str() );
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
			printf( "vpminud %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			printf( "vpminud %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

    return code;
}

const char * dis_3c(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpmaxsb %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpmaxsb %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_3d(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpmaxsd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpmaxsd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_3e(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpmaxuw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpmaxuw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_3f(const char * code, unsigned prefix)
{
TODO
	return code;
}


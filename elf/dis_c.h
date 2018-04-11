
inline const char * rsOp( int n )
{
	switch(n)
	{
	default:	return "ERROR";
	case 0:		return "rol";
	case 1:		return "ror";
	case 2:		return "rcl";
	case 3:		return "rcr";
	case 4:		return "shl";
	case 5:		return "shr";
	case 7:		return "sar";
	}
}

const char * dis_c0(const char * code, unsigned prefix)
{
	int inst = (*code & 0x38) >> 3;

    // if imm with reg
    if( (*code & 0xc0 ) == 0xc0 )
    {
		std::string op1;
    	std::string op2;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

    	code = imm_reg_ops( code, prefix, 0, 8, false, op1, op2 );

		printf( "%s $%s,%s\n", rsOp(inst), op2.c_str(), op1.c_str() );
	}
    // else imm with mem
	else
    {
        std::string op1;
        std::string op2;
        code = imm_mem_ops( code, prefix, 0, 0, op1, op2 );

        printf( "%sb $%s,%s\n", rsOp(inst), op1.c_str(), op2.c_str() );
    }

    return code;
}

const char * dis_c1(const char * code, unsigned prefix)
{
	int inst = (*code & 0x38) >> 3;

    // if imm with reg
    if( (*code & 0xc0 ) == 0xc0 )
    {
    	std::string op1;
	    std::string op2;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );

		printf( "%s $%s,%s\n", rsOp(inst), op2.c_str(), op1.c_str() );
	}
    // else imm with mem
	else
    {
        std::string op1;
        std::string op2;
        code = imm_mem_ops( code, prefix, 0, 1, op1, op2 );

		if( (prefix & REX_W ) == REX_W )
        	printf( "%sq $%s,%s\n", rsOp(inst), op1.c_str(), op2.c_str() );
		else if( prefix & PRE_OS )
        	printf( "%sw $%s,%s\n", rsOp(inst), op1.c_str(), op2.c_str() );
		else
        	printf( "%sl $%s,%s\n", rsOp(inst), op1.c_str(), op2.c_str() );
    }

    return code;
}

const char * dis_c2(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;
    code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );

	printf( "cmov %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_c3(const char * code, unsigned prefix)
{
	printf( "retq\n");
	return code;
}

const char * dis_c4(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_c5(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_c6(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_c7(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_c8(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_c9(const char * code, unsigned prefix)
{
	printf( "leaveq\n");
	return code;
}

const char * dis_ca(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_cb(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_cc(const char * code, unsigned prefix)
{
	printf( "int3\n" );
	return code;
}

const char * dis_cd(const char * code, unsigned prefix)
{
	char imm[9];
	code = imm8( code, imm );
	
	printf( "int $%s\n", imm );
	return code;
}

const char * dis_ce(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_cf(const char * code, unsigned prefix)
{
TODO
	return code;
}


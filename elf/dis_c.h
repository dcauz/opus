
const char * dis_c0(const char * code, unsigned prefix)
{
    // if imm with reg
    if( (*code & 0xc0 ) == 0xc0 )
    {
		std::string op1;
    	std::string op2;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

    	code = imm_reg_ops( code, prefix, 0, 8, false, op1, op2 );

		printf( "sar $%s,%s\n", op2.c_str(), op1.c_str() );
	}
    // else imm with mem
	else
    {
        std::string op1;
        std::string op2;
        code = imm_mem_ops( code, prefix, 0, 0, op1, op2 );

        printf( "sarb $%s,%s\n", op1.c_str(), op2.c_str() );
    }

    return code;
}

// 67 66 c1 7c 33 14 04    sarw   $0x4,0x14(%ebx,%esi,1)
// AS OS c1 0111 1100 0011 0011 disp8 imm8
//          01 111 100 00 110 011
//          md reg rm  sc i   b
//
const char * dis_c1(const char * code, unsigned prefix)
{
    // if imm with reg
    if( (*code & 0xc0 ) == 0xc0 )
    {
    	std::string op1;
	    std::string op2;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );

		printf( "sar $%s,%s\n", op2.c_str(), op1.c_str() );
	}
    // else imm with mem
	else
    {
        std::string op1;
        std::string op2;
        code = imm_mem_ops( code, prefix, 0, 1, op1, op2 );

		if( (prefix & REX_W ) == REX_W )
        	printf( "sarq $%s,%s\n", op1.c_str(), op2.c_str() );
		else if( prefix & PRE_OS )
        	printf( "sarw $%s,%s\n", op1.c_str(), op2.c_str() );
		else
        	printf( "sarl $%s,%s\n", op1.c_str(), op2.c_str() );
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
TODO
	return code;
}

const char * dis_cd(const char * code, unsigned prefix)
{
TODO
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


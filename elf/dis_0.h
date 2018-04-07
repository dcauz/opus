

const char * dis_00(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if(code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );

    printf( "add %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_01(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 1, op1, op2 );

    printf( "add %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_02(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 0, op2, op1 );

    printf( "add %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_03(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );

    printf( "add %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_04(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );	
TODO
	return code;
}

const char * dis_05(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, 0, 1, op1, op2 );	
TODO
	return code;
}

const char * dis_06(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, 1, 0, op1, op2 );	
TODO
	return code;
}

const char * dis_07(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_08(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if(code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );

    printf( "or %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_09(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 1, op1, op2 );

    printf( "or %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_0a(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 0, op2, op1 );

    printf( "or %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_0b(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );

    printf( "or %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_0c(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_0d(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_0e(const char * code, unsigned prefix)
{
TODO 
	return code;
}

// 67 66 0f 38 f6 5b 14    adcx   0x14(%ebx),%ebx
// AS OS 0f 38 f6 01 011 011 disp8

const char * dis_0f(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

	if( code[0] == 0x38 && code[1] == 0xfffffff6 )
	{
		if( prefix & PRE_REP )
		{
			code += 2;
			prefix &= ~PRE_OS;
			code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );

		   	printf( "adox %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code += 2;
			prefix &= ~PRE_OS;
			code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );

		   	printf( "adcx %s,%s\n", op1.c_str(), op2.c_str() );
		}
	}
	else if( (code[0] & 0xf0) == 0x40 )
	{
		char cc = *code++;

		code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );

		switch(cc)
		{
		case 0x40: printf( "cmovo %s,%s\n",  op1.c_str(), op2.c_str() );	break;
		case 0x41: printf( "cmovno %s,%s\n", op1.c_str(), op2.c_str() );	break;
		case 0x42: printf( "cmovb %s,%s\n",  op1.c_str(), op2.c_str() );	break;
		case 0x43: printf( "cmovae %s,%s\n", op1.c_str(), op2.c_str() );	break;
		case 0x44: printf( "cmove %s,%s\n",  op1.c_str(), op2.c_str() );	break;
		case 0x45: printf( "cmovne %s,%s\n", op1.c_str(), op2.c_str() );	break;
		case 0x46: printf( "cmovbe %s,%s\n", op1.c_str(), op2.c_str() );	break;
		case 0x47: printf( "cmova %s,%s\n",  op1.c_str(), op2.c_str() );	break;
		case 0x48: printf( "cmovs %s,%s\n",  op1.c_str(), op2.c_str() );	break;
		case 0x49: printf( "cmovns %s,%s\n", op1.c_str(), op2.c_str() );	break;
		case 0x4a: printf( "cmovp %s,%s\n",  op1.c_str(), op2.c_str() );	break;
		case 0x4b: printf( "cmovnp %s,%s\n", op1.c_str(), op2.c_str() );	break;
		case 0x4c: printf( "cmovl %s,%s\n",  op1.c_str(), op2.c_str() );	break;
		case 0x4d: printf( "cmovge %s,%s\n", op1.c_str(), op2.c_str() );	break;
		case 0x4e: printf( "cmovle %s,%s\n", op1.c_str(), op2.c_str() );	break;
		case 0x4f: printf( "cmovg %s,%s\n",  op1.c_str(), op2.c_str() );	break;
		}
	}
	else if(code[0] == 0x01 && code[1] == 0xffffffca )
	{
		code +=2;
		printf( "clac\n" );
	}
	else
		TODO

    return code;
}

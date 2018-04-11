

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
	else if( (code[0] & 0xff) == 0xbc )
	{
		char cc = *code++;
		code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );
		printf( "bsf %s,%s\n",  op1.c_str(), op2.c_str() );
	}
	else if(code[0] == 0x01 && code[1] == 0xffffffca )
	{
		code +=2;
		printf( "clac\n" );
	}
	else if((code[0] & 0xff) == 0xa3 )
	{
		++code;
		if( code[1] == 0x25 )
		{
			std::string op1;
			std::string op2;
			code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );

			printf( "bt %s,%s\n",  op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );
			printf( "bt %s,%s\n",  op2.c_str(), op1.c_str() );
		}
	}
	else if((code[0] & 0xff) == 0xb3 )
	{
		++code;
		if( code[1] == 0x25 )
		{
			std::string op1;
			std::string op2;
			code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );

			printf( "btr %s,%s\n",  op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );
			printf( "btr %s,%s\n",  op2.c_str(), op1.c_str() );
		}
	}
	else if((code[0] & 0xff) == 0xbb )
	{
		++code;
		if( code[1] == 0x25 )
		{
			std::string op1;
			std::string op2;
			code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );

			printf( "btc %s,%s\n",  op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );
			printf( "btc %s,%s\n",  op2.c_str(), op1.c_str() );
		}
	}
	else if((code[0] & 0xff) == 0xab )
	{
		++code;
		if( code[1] == 0x25 )
		{
			std::string op1;
			std::string op2;
			code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );

			printf( "bts %s,%s\n",  op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );
			printf( "bts %s,%s\n",  op2.c_str(), op1.c_str() );
		}
	}
	else if( ( code[0] & 0xff ) == 0xa5 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		printf( "shld %%cl,%s,%s\n",  op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xa4 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		char imm[12];
		code = imm8(code,imm);
		printf( "shld $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xad )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		printf( "shrd %%cl,%s,%s\n",  op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xac )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		char imm[12];
		code = imm8(code,imm);
		printf( "shrd $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xa2 )
	{
		++code;
		printf( "cpuid\n" );
	}
	else
	{
		printf( "code %x\n", *code ); fflush(stdout);
		TODO
	}

    return code;
}

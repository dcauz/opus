

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

	// 0
	if( ( code[0] & 0xff ) == 0 )
	{
		++code;
		if( (*code & 0x38) == 0x20 )
		{
			if( (*code & 0xc0) != 0xc0 )
			{
				std::string op;
				code = memStr( code, prefix, 0, 0, op );
	
				printf( "verr %s\n", op.c_str() );
			}
			else
			{
				unsigned reg = *code & 0x07;
	
				prefix |= PRE_OS;
				const char * op = regStr( reg, AL, 1, 0, Reg, prefix );
		
				printf( "verr %s\n", op );
				++code;
			}
		}
		else if( (*code & 0x38) == 0x28 )
		{
			if( (*code & 0xc0) != 0xc0 )
			{
				std::string op;
				code = memStr( code, prefix, 0, 0, op );
	
				printf( "verw %s\n", op.c_str() );
			}
			else
			{
				unsigned reg = *code & 0x07;
	
				prefix |= PRE_OS;
				const char * op = regStr( reg, AL, 1, 0, Reg, prefix );
		
				printf( "verw %s\n", op );
				++code;
			}
		}
		else if( (*code & 0x38) == 0x08 )
		{	
			if( (*code & 0xc0) != 0xc0 )
			{
				std::string op;
				code = memStr( code, prefix, 0, 0, op );
	
				printf( "str %s\n", op.c_str() );
			}
			else
			{
				unsigned reg = *code & 0x07;
	
				const char * op = regStr( reg, AL, 0, 0, Reg, prefix );
		
				printf( "str %s\n", op );
				++code;
			}
		}
		else
			TODO
	}
	else if(code[0] == 0x01 && code[1] == 0xffffffca )
	{
		code +=2;
		printf( "clac\n" );
	}
	else if( (( code[0] & 0xff ) == 0x01 ) && (( code[1] & 0x38) == 0x10 ))
	{
		std::string op;
		if(( code[1] & 0x07) == 4 )
		{
			if( code[2] == 0x25 )
			{
				code += 3;
				char imm[16];
				code = imm32( code, imm );
				op = imm;
			}
			else
				code = memStr( ++code, prefix, 0, 0, op );
		}
		else
			code = memStr( ++code, prefix, 0, 0, op );
		printf( "lgdt %s\n", op.c_str());
	}
	else if( (( code[0] & 0xff ) == 0x01 ) && (( code[1] & 0x38) == 0x18 ))
	{
		std::string op;
		if(( code[1] & 0x07) == 4 )
		{
			if( code[2] == 0x25 )
			{
				code += 3;
				char imm[16];
				code = imm32( code, imm );
				op = imm;
			}
			else
				code = memStr( ++code, prefix, 0, 0, op );
		}
		else
			code = memStr( ++code, prefix, 0, 0, op );
		printf( "lidt %s\n", op.c_str());
	}
	else if( (( code[0] & 0xff ) == 0x01 ) && (( code[1] & 0xff ) == 0xf8 ))
	{
		code += 2;
		printf( "swapgs\n" );
	}
	else if( (( code[0] & 0xff ) == 0x01 ) && (( code[1] & 0xff ) == 0xf9 ))
	{
		code += 2;
		printf( "rdtscp\n" );
	}
	else if( ( code[0] & 0xff ) == 0x05 )
	{
		++code;
		printf( "syscall\n" );
	}
	else if( ( code[0] & 0xff ) == 0x06 )
	{
		++code;
		printf( "clts\n" );
	}
	else if( ( code[0] & 0xff ) == 0x07 )
	{
		++code;
		printf( "sysret\n" );
	}
	else if( ( code[0] & 0xff ) == 0x08 )
	{
		++code;
		printf( "invd\n" );
	}
	else if( ( code[0] & 0xff ) == 0x09 )
	{
		++code;
		printf( "wbinvd\n" );
	}
	else if( ( code[0] & 0xff ) == 0x0b )
	{
		++code;
		printf( "ud2\n" );
	}

	// 3
	else if( ( code[0] & 0xff ) == 0x30 )
	{
		++code;
		printf( "wrmsr\n" );
	}
	else if( ( code[0] & 0xff ) == 0x31 )
	{
		++code;
		printf( "rdtsc\n" );
	}
	else if( ( code[0] & 0xff ) == 0x32 )
	{
		++code;
		printf( "rdmsr\n" );
	}
	else if( ( code[0] & 0xff ) == 0x33 )
	{
		++code;
		printf( "rdpmc\n" );
	}
	else if( code[0] == 0x38 && code[1] == 0xfffffff6 )
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

	// 4
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

	// a
	else if( ( code[0] & 0xff ) == 0xa0 )
	{
		printf( "pushq %%fs\n");
		++code;
	}
	else if( ( code[0] & 0xff ) == 0xa1 )
	{
		printf( "popq %%fs\n");
		++code;
	}
	else if( ( code[0] & 0xff ) == 0xa2 )
	{
		++code;
		printf( "cpuid\n" );
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
	else if( ( code[0] & 0xff ) == 0xa4 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		char imm[12];
		code = imm8(code,imm);
		printf( "shld $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xa5 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		printf( "shld %%cl,%s,%s\n",  op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xa8 )
	{
		printf( "pushq %%gs\n");
		++code;
	}
	else if( ( code[0] & 0xff ) == 0xa9 )
	{
		printf( "popq %%gs\n");
		++code;
	}
	else if( ( code[0] & 0xff ) == 0xaa )
	{
		printf( "rsm\n" );
		++code;
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
	else if( ( code[0] & 0xff ) == 0xac )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		char imm[12];
		code = imm8(code,imm);
		printf( "shrd $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xad )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		printf( "shrd %%cl,%s,%s\n",  op2.c_str(), op1.c_str() );
	}

	// b
	else if( ( code[0] & 0xff ) == 0xb0 )
	{
		if( code[2] == 0x25 )
        	code = imm_reg_ops( ++code, prefix, 0, 32, true, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, 0, 0, op1, op2 );

		printf( "cmpxchg %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xb1 )
	{
		if( code[2] == 0x25 )
        	code = imm_reg_ops( ++code, prefix, 1, 32, true, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, 0, 1, op1, op2 );

		printf( "cmpxchg %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if((code[0] & 0xff) == 0xb2 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		printf( "lss %s,%s\n", op1.c_str(), op2.c_str() );
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
	else if((code[0] & 0xff) == 0xb4 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		printf( "lfs %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if((code[0] & 0xff) == 0xb5 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op2, op1 );
		printf( "lgs %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if((code[0] & 0xff) == 0xb6 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op1, op2, 8 );	

		char s = ( prefix & PRE_OS ) ? 'w' : ( ((prefix & REX_W) == REX_W)?'q':'l' );

		printf( "movzb%c %s,%s\n", s, op2.c_str(),op1.c_str() );
	}
	else if((code[0] & 0xff) == 0xb7 )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op1, op2, 16 );	

		char s = (( prefix & REX_W ) == REX_W) ? 'q' : ( 'l' );

		printf( "movzw%c %s,%s\n", s, op2.c_str(),op1.c_str() );
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
	else if( (code[0] & 0xff) == 0xbc )
	{
		code++;
		code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );
		printf( "bsf %s,%s\n",  op1.c_str(), op2.c_str() );
	}
	else if( (code[0] & 0xff) == 0xbd )
	{
		code++;
		code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );
		printf( "bsr %s,%s\n",  op1.c_str(), op2.c_str() );
	}
	else if((code[0] & 0xff) == 0xbe )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op1, op2, 8 );	

		char s = ( prefix & PRE_OS ) ? 'w' : ( ((prefix & REX_W) == REX_W)?'q':'l' );

		printf( "movsb%c %s,%s\n", s, op2.c_str(),op1.c_str() );
	}
	else if((code[0] & 0xff) == 0xbf )
	{
		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op1, op2, 16 );	

		char s = (( prefix & REX_W ) == REX_W) ? 'q' : ( 'l' );

		printf( "movsw%c %s,%s\n", s, op2.c_str(),op1.c_str() );
	}

	// c
	else if( ( code[0] & 0xff ) == 0xc0 )
	{
    	if(code[2] == 0x25)
        	code = imm_reg_ops( ++code, prefix, 0, 32, true, op1, op2 );
    	else
       		code = mod_reg_rm_ops( ++code, prefix, 0, 0, op1, op2 );
		printf( "xadd %s,%s\n",  op1.c_str(), op2.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xc1 )
	{
    	if(code[2] == 0x25)
        	code = imm_reg_ops( ++code, prefix, 1, 32, true, op1, op2 );
    	else
       		code = mod_reg_rm_ops( ++code, prefix, 0, 1, op1, op2 );
		printf( "xadd %s,%s\n",  op1.c_str(), op2.c_str() );
	}
	else if( (code[0] & 0xff ) == 0xc7 )
	{
		++code;
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
	
			const char * sz = ((prefix & REX_W) == REX_W) ? "16b": "8b";

			printf( "cmpxchg%s %s\n", sz, op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;

			if( (prefix & REX_B ) == REX_B )
				prefix |= REX_R;

			const char * op = regStr( reg, AL, 0, 0, Reg, prefix );
	
			printf( "cmpxchg %s\n", op );
			++code;
		}
	}
	else if( (( code[0] & 0xff ) > 0xc7) && (( code[0] & 0xff ) <= 0xcf ) )
	{
		unsigned reg = *code & 0x07;

		const char * op = regStr( reg, AL, 1, 0, Reg2, prefix );
		printf( "bswap %s\n", op );
		++code;
	}
	else
	{
		printf( "code %x\n", *code ); fflush(stdout);
		TODO
	}

    return code;
}

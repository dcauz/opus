

const char * dis_00(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if(code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );

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
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );

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
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );

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
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

    printf( "add %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_04(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );	
TODO
	return code;
}

const char * dis_05(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );	
TODO
	return code;
}

const char * dis_06(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );	
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
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );

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
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );

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
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );

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
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

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
	if( code[0] == 0 )
	{
		++code;

		// reg = 000 (0)
		if( (*code & 0x38) == 0x00 )
		{	
			if( (*code & 0xc0) != 0xc0 )
			{
				std::string op;
				code = memStr( code, prefix, 0, 0, op );
	
				printf( "sldt %s\n", op.c_str() );
			}
			else
			{
				unsigned reg = *code & 0x07;
	
				prefix |= PRE_OS;
				const char * op = regStr( reg, AL, 1, Reg2, prefix );
		
				printf( "sldt %s\n", op );
				++code;
			}
		}
		// reg = 001 (1)
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
	
				const char * op = regStr( reg, AL, 0, Reg, prefix );
		
				printf( "str %s\n", op );
				++code;
			}
		}
		// reg = 010 (2)
		else if( (*code & 0x38) == 0x10 )
		{	
			if( (*code & 0xc0) != 0xc0 )
			{
				std::string op;
				code = memStr( code, prefix, 0, 0, op );
	
				printf( "lldt %s\n", op.c_str() );
			}
			else
			{
				unsigned reg = *code & 0x07;
	
				prefix |= PRE_OS;
				const char * op = regStr( reg, AL, 1, Reg2, prefix );
		
				printf( "lldt %s\n", op );
				++code;
			}
		}
		// reg = 011 (3)
		else if( (*code & 0x38) == 0x18 )
		{	
			if( (*code & 0xc0) != 0xc0 )
			{
				std::string op;
				code = memStr( code, prefix, 0, 0, op );
	
				printf( "ltr %s\n", op.c_str() );
			}
			else
			{
				unsigned reg = *code & 0x07;
	
				prefix |= PRE_OS;
				const char * op = regStr( reg, AL, 1, Reg2, prefix );
		
				printf( "ltr %s\n", op );
				++code;
			}
		}
		// reg = 100 (4)
		else if( (*code & 0x38) == 0x20 )
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
				const char * op = regStr( reg, AL, 1, Reg, prefix );
		
				printf( "verr %s\n", op );
				++code;
			}
		}
		// reg = 101 (5)
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
				const char * op = regStr( reg, AL, 1, Reg, prefix );
		
				printf( "verw %s\n", op );
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
	else if(code[0] == 0x01 && code[1] == 0xffffffcb )
	{
		code +=2;
		printf( "stac\n" );
	}
	else if(code[0] == 0x01 && code[1] == 0xffffffd0 )
	{
		code +=2;
		printf( "xgetbv\n" );
	}
	else if(code[0] == 0x01 && code[1] == 0xffffffd1 )
	{
		code +=2;
		printf( "xsetbv\n" );
	}
	else if( ( code[0] == 0x01 ) && (( code[1] & 0x38) == 0x00 ))
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
		printf( "sgdt %s\n", op.c_str());
	}
	else if( ( code[0] == 0x01 ) && (( code[1] & 0x38) == 0x10 ))
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
	else if( ( code[0] == 0x01 ) && (( code[1] & 0x38) == 0x30 ))
	{
		++code;
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );

			printf( "lmsw %s\n", op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;
			prefix |= PRE_OS;
			const char * op = regStr( reg, AL, 1, Reg2, prefix );
	
			printf( "lmsw %s\n", op );
			++code;
		}
	}
	else if( ( code[0] == 0x01 ) && (( code[1] & 0x38) == 0x08 ))
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
		printf( "sidt %s\n", op.c_str());
	}
	else if( ( code[0] == 0x01 ) && (( code[1] & 0x38) == 0x18 ))
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
	else if( ( code[0] == 0x01 ) && (( code[1] & 0x38) == 0x20 ))
	{
		++code;
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );

			printf( "smsw %s\n", op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;
			prefix |= PRE_OS;
			const char * op = regStr( reg, AL, 1, Reg2, prefix );
	
			printf( "smsw %s\n", op );
			++code;
		}
	}
	else if( ( code[0] == 0x01 ) && (( code[1] & 0xff ) == 0xf9 ))
	{
		code += 2;
		printf( "rdtscp\n" );
	}
	else if( ( code[0] == 0x01 ) && (( code[1] & 0xff ) == 0xf8 ))
	{
		code += 2;
		printf( "swapgs\n" );
	}
	else if( ( code[0] == 0x01 ) && (( code[1] & 0x38) == 0x38 ))
	{	
		++code;
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );

			printf( "invlpg %s\n", op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;

			prefix |= PRE_OS;
			const char * op = regStr( reg, AL, 1, Reg2, prefix );
	
			printf( "invlpg %s\n", op );
			++code;
		}
	}

	// 02
	else if( code[0] == 0x02 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1, 16 );
		printf( "lar %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if( code[0] == 0x03 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1, 16 );
		printf( "lsl %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if( code[0] == 0x05 )
	{
		++code;
		printf( "syscall\n" );
	}
	else if( code[0] == 0x06 )
	{
		++code;
		printf( "clts\n" );
	}
	else if( code[0] == 0x07 )
	{
		++code;
		printf( "sysret\n" );
	}
	else if( code[0] == 0x08 )
	{
		++code;
		printf( "invd\n" );
	}
	else if( code[0] == 0x09 )
	{
		++code;
		printf( "wbinvd\n" );
	}
	else if( code[0] == 0x0b )
	{
		++code;
		printf( "ud2\n" );
	}

	// 20
	else if( code[0]  == 0x20 )
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::CR0_AL, 0, op1, op2 );
		printf( "mov %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if( code[0]  == 0x21 )
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::DR0_AL, 0, op1, op2 );
		printf( "mov %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if( code[0]  == 0x22 )
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::CR0_AL, 0, op1, op2 );
		printf( "mov %s,%s\n", op2.c_str(), op1.c_str() );
	}
	else if( code[0]  == 0x23 )
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::DR0_AL, 0, op1, op2 );
		printf( "mov %s,%s\n", op2.c_str(), op1.c_str() );
	}

	// 30
	else if( code[0] == 0x30 )
	{
		++code;
		printf( "wrmsr\n" );
	}
	else if( code[0] == 0x31 )
	{
		++code;
		printf( "rdtsc\n" );
	}
	else if( code[0] == 0x32 )
	{
		++code;
		printf( "rdmsr\n" );
	}
	else if( code[0] == 0x33 )
	{
		++code;
		printf( "rdpmc\n" );
	}
	else if( code[0] == 0x34 )
	{
		++code;
		printf( "sysenter\n" );
	}
	else if( code[0] == 0x35 )
	{
		++code;
		printf( "sysexit\n" );
	}
	else if( code[0] == 0x38 && code[1] == 0xffffff82 )
	{
		code += 2;
		prefix |= REX_W;
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "invpcid %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if( code[0] == 0x38 && code[1] == 0xfffffff6 )
	{
		if( prefix & PRE_REP )
		{
			code += 2;
			prefix &= ~PRE_OS;
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

		   	printf( "adox %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code += 2;
			prefix &= ~PRE_OS;
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

		   	printf( "adcx %s,%s\n", op1.c_str(), op2.c_str() );
		}
	}
	else if( code[0] == 0x38 && code[1] == 0xfffffff0 )
	{
		code += 2;
		if( code[1] == 0x25 )
		{
			unsigned reg = (*code & 0x38) >> 3;

			const char * op = regStr( reg, AL, 1, Reg, prefix );

			code += 2;
			char imm[16];
			code = imm32( code, imm );

	   		printf( "movbe %s,%s\n", op, imm );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

	   		printf( "movbe %s,%s\n", op1.c_str(), op2.c_str() );
		}
	}
	else if( code[0] == 0x38 && code[1] == 0xfffffff1 )
	{
		code += 2;
		if( code[1] == 0x25 )
		{
			unsigned reg = (*code & 0x38) >> 3;

			const char * op = regStr( reg, AL, 1, Reg, prefix );

			code += 2;
			char imm[16];
			code = imm32( code, imm );

	   		printf( "movbe %s,%s\n", op, imm );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

	   		printf( "movbe %s,%s\n", op2.c_str(), op1.c_str() );
		}
	}

	// 40
	else if( ( code[0] & 0xf0 ) == 0x40 )
	{
		char cc = *code++;

		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

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

	// 6e
	else if( *code == 0x6e )
	{
		if( prefix & PRE_OS )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_AL, 0, op1, op2 );
		printf( "movd %s,%s\n", op2.c_str(), op1.c_str() );
	}

	// 6f
	else if( *code == 0x6f )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_AL, 0, op1, op2 );
		printf( "movq %s,%s\n", op2.c_str(), op1.c_str() );
	}

	// 7e
	else if( *code == 0x7e )
	{
		if( ((prefix & PRE_OS ) == PRE_OS) || (( prefix & PRE_REP ) == PRE_REP) )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_AL, 0, op1, op2 );

		if( PRE_REP & prefix )
			printf( "movq %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "movd %s,%s\n", op1.c_str(), op2.c_str() );
	}

	// 7f
	else if( *code == 0x7f )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_AL, 0, op1, op2 );
		printf( "movq %s,%s\n", op1.c_str(), op2.c_str() );
	}

	// 80 - 8f
	else if( ( code[0] & 0xff ) >= 0x80 && ( code[0] & 0xff ) <= 0x8f )
	{
		const char * CC;
		switch((code[0] & 0xff) - 0x80 )
		{
		case 0:  CC = "o";	break;
		case 1:  CC = "no";	break;
		case 2:  CC = "b";	break;
		case 3:  CC = "ae";	break;
		case 4:  CC = "e";	break;
		case 5:  CC = "ne";	break;
		case 6:  CC = "be";	break;
		case 7:  CC = "a";	break;
		case 8:  CC = "s";	break;
		case 9:  CC = "ns";	break;
		case 10: CC = "p";	break;
		case 11: CC = "np";	break;
		case 12: CC = "l";	break;
		case 13: CC = "ge";	break;
		case 14: CC = "le";	break;
		case 15: CC = "g";	break;
		}
	
		char imm[16];
		code = imm32( ++code, imm );

		printf( "j%s %s\n", CC, imm );
	}

	// 90 - 9f
	else if( ( code[0] & 0xff ) >= 0x90 && ( code[0] & 0xff ) <= 0x9f )
	{
		const char * CC;
		switch((code[0] & 0xff) - 0x90 )
		{
		case 0:  CC = "o";	break;
		case 1:  CC = "no";	break;
		case 2:  CC = "b";	break;
		case 3:  CC = "ae";	break;
		case 4:  CC = "e";	break;
		case 5:  CC = "ne";	break;
		case 6:  CC = "be";	break;
		case 7:  CC = "a";	break;
		case 8:  CC = "s";	break;
		case 9:  CC = "ns";	break;
		case 10: CC = "p";	break;
		case 11: CC = "np";	break;
		case 12: CC = "l";	break;
		case 13: CC = "ge";	break;
		case 14: CC = "le";	break;
		case 15: CC = "g";	break;
		}
	
		++code;
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			if( code[1] == 0x25 )
			{
				code += 2;

				char imm[16];
				code = imm32( code, imm );
				op = imm;				
			}
			else
				code = memStr( code, prefix, 0, 0, op );

			printf( "set%s %s\n", CC, op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;

			const char * op = regStr( reg, AL, 0, Reg2, prefix );
	
			printf( "set%s %s\n", CC, op );
			++code;
		}
	}

	// a0
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
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
			printf( "bt %s,%s\n",  op2.c_str(), op1.c_str() );
		}
	}
	else if( ( code[0] & 0xff ) == 0xa4 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		char imm[12];
		code = imm8(code,imm);
		printf( "shld $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xa5 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
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
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
			printf( "bts %s,%s\n",  op2.c_str(), op1.c_str() );
		}
	}
	else if( ( code[0] & 0xff ) == 0xac )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		char imm[12];
		code = imm8(code,imm);
		printf( "shrd $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xad )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "shrd %%cl,%s,%s\n",  op2.c_str(), op1.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xae )
	{
		++code;
		int mod = (*code & 0xc0 ) >> 6;
		int reg = (*code & 0x38 ) >> 3;

		if( reg == 4 )
		{
			code = memStr( code, prefix, 0, 0, op1 );
			if( prefix & REX_W )
				printf( "xsave64 %s\n", op1.c_str() );
			else
				printf( "xsave %s\n", op1.c_str() );
		}
		else if( reg == 5 )
		{
			code = memStr( code, prefix, 0, 0, op1 );
			if( prefix & REX_W )
				printf( "xrstor64 %s\n", op1.c_str() );
			else
				printf( "xrstor %s\n", op1.c_str() );
		}
		else if( reg == 6 )
		{
			code = memStr( code, prefix, 0, 0, op1 );
			if( prefix & REX_W )
				printf( "xsaveopt64 %s\n", op1.c_str() );
			else
				printf( "xsaveopt %s\n", op1.c_str() );
		}
		else if(mod == 3 )
		{
			unsigned r = *code & 0x07;
			const char * reg = regStr( r, AL, 1, Reg2, prefix );

			if( ( *code & 0x38 ) == 0x10 )
				printf( "wrfsbase %s\n",  reg );
			else if( ( *code & 0x38 ) == 0x18 )
				printf( "wrgsbase %s\n",  reg );
			else
			{
				if( *code & 0x08 )
					printf( "rdfsbase %s\n",  reg );
				else
					printf( "rdgsbase %s\n",  reg );
			}
			++code;
		}
		else
		{
			code = memStr( code, prefix, 0, 0, op1 );
			if( ( prefix & REX_W ) == REX_W )
			{
				if( reg == 0 )
					printf( "fxsave64 %s\n",  op1.c_str() );
				else
					printf( "fxrstor64 %s\n",  op1.c_str() );
			}
			else
			{
				if( reg == 0 )
					printf( "fxsave %s\n",  op1.c_str() );
				else
					printf( "fxrstor %s\n",  op1.c_str() );
			}
		}
	}

	// b0
	else if( ( code[0] & 0xff ) == 0xb0 )
	{
		if( code[2] == 0x25 )
        	code = imm_reg_ops( ++code, prefix, 0, 32, true, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 0, op1, op2 );

		printf( "cmpxchg %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xb1 )
	{
		if( code[2] == 0x25 )
        	code = imm_reg_ops( ++code, prefix, 1, 32, true, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2 );

		printf( "cmpxchg %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if((code[0] & 0xff) == 0xb2 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
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
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
			printf( "btr %s,%s\n",  op2.c_str(), op1.c_str() );
		}
	}
	else if((code[0] & 0xff) == 0xb4 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "lfs %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if((code[0] & 0xff) == 0xb5 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "lgs %s,%s\n", op1.c_str(), op2.c_str() );
	}
	else if((code[0] & 0xff) == 0xb6 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2, 8 );	

		char s = ( prefix & PRE_OS ) ? 'w' : ( ((prefix & REX_W) == REX_W)?'q':'l' );

		printf( "movzb%c %s,%s\n", s, op2.c_str(),op1.c_str() );
	}
	else if((code[0] & 0xff) == 0xb7 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2, 16 );	

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
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
			printf( "btc %s,%s\n",  op2.c_str(), op1.c_str() );
		}
	}
	else if( (code[0] & 0xff) == 0xbc )
	{
		code++;
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "bsf %s,%s\n",  op1.c_str(), op2.c_str() );
	}
	else if( (code[0] & 0xff) == 0xbd )
	{
		code++;
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "bsr %s,%s\n",  op1.c_str(), op2.c_str() );
	}
	else if((code[0] & 0xff) == 0xbe )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2, 8 );	

		char s = ( prefix & PRE_OS ) ? 'w' : ( ((prefix & REX_W) == REX_W)?'q':'l' );

		printf( "movsb%c %s,%s\n", s, op2.c_str(),op1.c_str() );
	}
	else if((code[0] & 0xff) == 0xbf )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2, 16 );	

		char s = (( prefix & REX_W ) == REX_W) ? 'q' : ( 'l' );

		printf( "movsw%c %s,%s\n", s, op2.c_str(),op1.c_str() );
	}

	// c0
	else if( ( code[0] & 0xff ) == 0xc0 )
	{
    	if(code[2] == 0x25)
        	code = imm_reg_ops( ++code, prefix, 0, 32, true, op1, op2 );
    	else
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 0, op1, op2 );
		printf( "xadd %s,%s\n",  op1.c_str(), op2.c_str() );
	}
	else if( ( code[0] & 0xff ) == 0xc1 )
	{
    	if(code[2] == 0x25)
        	code = imm_reg_ops( ++code, prefix, 1, 32, true, op1, op2 );
    	else
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2 );
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

			const char * op = regStr( reg, AL, 0, Reg, prefix );
	
			printf( "cmpxchg %s\n", op );
			++code;
		}
	}
	else if( (( code[0] & 0xff ) > 0xc7) && (( code[0] & 0xff ) <= 0xcf ) )
	{
		unsigned reg = *code & 0x07;

		const char * op = regStr( reg, AL, 1, Reg2, prefix );
		printf( "bswap %s\n", op );
		++code;
	}

	// d6
	else if( *code == 0xffffffd6 )
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );
		printf( "movq %s,%s\n", op1.c_str(), op2.c_str() );
	}

	else
	{
		printf( "code %x\n", *code ); fflush(stdout);
		TODO
	}

    return code;
}

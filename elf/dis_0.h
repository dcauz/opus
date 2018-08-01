

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

	// 0x0
	switch( *code )
	{
	case 0:
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
		break;
	}
	case 0x01:
	{
		if( code[1] == 0xffffffc1 )
		{
			code +=2;
			printf( "vmcall\n" );
		}
		else if( code[1] == 0xffffffc2 )
		{
			code +=2;
			printf( "vmlaunch\n" );
		}
		else if( code[1] == 0xffffffc3 )
		{
			code +=2;
			printf( "vmresume\n" );
		}
		else if( code[1] == 0xffffffc4 )
		{
			code +=2;
			printf( "vmxoff\n" );
		}
		else if( code[1] == 0xffffffca )
		{
			code +=2;
			printf( "clac\n" );
		}
		else if( code[1] == 0xffffffcb )
		{
			code +=2;
			printf( "stac\n" );
		}
		else if( code[1] == 0xffffffd0 )
		{
			code +=2;
			printf( "xgetbv\n" );
		}
		else if( code[1] == 0xffffffd1 )
		{
			code +=2;
			printf( "xsetbv\n" );
		}
		else if( code[1] == 0xffffffd4 )
		{
			code +=2;
			printf( "vmfunc\n" );
		}
		else if( (( code[1] & 0x38) == 0x00 ))
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
		else if( (( code[1] & 0x38) == 0x10 ))
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
		else if( (( code[1] & 0x38) == 0x30 ))
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
		else if( (( code[1] & 0x38) == 0x08 ))
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
		else if( (( code[1] & 0x38) == 0x18 ))
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
		else if( (( code[1] & 0x38) == 0x20 ))
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
		else if( (( code[1] & 0xff ) == 0xf9 ))
		{
			code += 2;
			printf( "rdtscp\n" );
		}
		else if( (( code[1] & 0xff ) == 0xf8 ))
		{
			code += 2;
			printf( "swapgs\n" );
		}
		else if( ( code[1] & 0x38) == 0x38 )
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
		break;
	}
	case 0x02:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1, -1, 16, -1 );
		printf( "lar %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x03:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1, -1, 16, -1 );
		printf( "lsl %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x05:
	{
		++code;
		printf( "syscall\n" );
		break;
	}
	case 0x06:
	{
		++code;
		printf( "clts\n" );
		break;
	}
	case 0x07:
	{
		++code;
		printf( "sysret\n" );
		break;
	}
	case 0x08:
	{
		++code;
		printf( "invd\n" );
		break;
	}
	case 0x09:
	{
		++code;
		printf( "wbinvd\n" );
		break;
	}
	case 0x0b:
	{
		++code;
		printf( "ud2\n" );
		break;
	}
	case 0x0d:
	{
		code = memStr( ++code, prefix, 0, 0, op1 );
		printf( "prefetchwt1 %s\n", op1.c_str() );
		break;
	}

	// 10
	case 0x10:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movupd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( ( prefix & PRE_REP ) == 0 )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movups %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movss %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x11:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movupd %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movss %s,%s\n", op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0x12:
	{
		++code;
		int mod = (*code & 0xc0) >> 6;
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );

		if( mod == 3 )
			printf( "movhlps %s,%s\n", op2.c_str(), op1.c_str() );
		else
		{
			if( prefix & PRE_OS )
				printf( "movlpd %s,%s\n", op2.c_str(), op1.c_str() );
			else
				printf( "movlps %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x13:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

		if( prefix & PRE_OS )
			printf( "movlpd %s,%s\n", op1.c_str(), op2.c_str() );
		else
			printf( "movlps %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x14:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

		if( prefix & PRE_OS )
			printf( "unpcklpd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "unpcklps %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x15:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );

		if( prefix & PRE_OS )
			printf( "unpckhpd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "unpckhps %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x16:
	{
		++code;
		if( prefix & PRE_REP )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movshdup %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movhpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			int mod = (0xc0 & *code ) >> 6;
			if( mod != 3 )
			{
				code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );
				printf( "movhps %s,%s\n", op2.c_str(), op1.c_str() );
			}
			else
			{
				code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
				printf( "movlhps %s,%s\n", op2.c_str(), op1.c_str() );
			}
		}
		break;
	}
	case 0x17:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movhpd %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );
			printf( "movhps %s,%s\n", op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0x18:
	{
		unsigned reg = (*++code & 0x38) >> 3;

		code = memStr( code, prefix, 0, 0, op1 );
		if( reg )
			printf( "prefetcht%d %s\n", reg-1, op1.c_str() );
		else
			printf( "prefetchnta %s\n", op1.c_str() );
		break;
	}

	case 0x20:
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::CR0_AL, 0, op1, op2 );
		printf( "mov %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x21:
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::DR0_AL, 0, op1, op2 );
		printf( "mov %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x22:
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::CR0_AL, 0, op1, op2 );
		printf( "mov %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x23:
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::DR0_AL, 0, op1, op2 );
		printf( "mov %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x28:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_OS )
			printf( "movapd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "movaps %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x29:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "movapd %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x2a:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_MM0, 0, op1, op2 );
			printf( "cvtpi2pd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_NE )
		{
			++code;

			int m = mod( *code );
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 1, op1, op2 );

			if( prefix & PRE_AS )
				printf( "cvtsi2sdl %s,%s\n", op2.c_str(), op1.c_str() );
			else
			{
				if( m == 3 )
					printf( "cvtsi2sd %s,%s\n", op2.c_str(), op1.c_str() );
				else
					printf( "cvtsi2sdq %s,%s\n", op2.c_str(), op1.c_str() );
			}
		}
		else if( prefix & PRE_REP )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 1, op1, op2 );
			printf( "cvtsi2ss %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "cvtpi2ps %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x2b:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_OS )
			printf( "movntpd %s,%s\n", op1.c_str(), op2.c_str() );
		else
			printf( "movntps %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x2c:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_XMM0, 0, op1, op2 );
			printf( "cvttpd2pi %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_NE )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 1, op1, op2 );
			printf( "cvttsd2si %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_REP )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 1, op1, op2 );
			printf( "cvttss2si %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_XMM0, 0, op1, op2 );
			printf( "cvttps2pi %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x2d:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_XMM0, 0, op1, op2 );
			printf( "cvtpd2pi %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_NE )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 1, op1, op2 );
			printf( "cvtsd2si %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_REP )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 1, op1, op2 );
			printf( "cvtss2si %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_XMM0, 0, op1, op2 );
			printf( "cvtps2pi %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x2e:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_OS )
			printf( "ucomisd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "ucomiss %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x2f:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_OS )
			printf( "comisd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "comiss %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x30:
	{
		++code;
		printf( "wrmsr\n" );
		break;
	}
	case 0x31:
	{
		++code;
		printf( "rdtsc\n" );
		break;
	}
	case 0x32:
	{
		++code;
		printf( "rdmsr\n" );
		break;
	}
	case 0x33:
	{
		++code;
		printf( "rdpmc\n" );
		break;
	}
	case 0x34:
	{
		++code;
		printf( "sysenter\n" );
		break;
	}
	case 0x35:
	{
		++code;
		printf( "sysexit\n" );
		break;
	}
	case 0x38:
	{
		if( code[1] == 0x38 )
		{
			code += 2;
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op2, op1 );
			printf( "pminsb %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( code[1] == 0x3a )
		{
			code += 2;
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op2, op1 );
			printf( "pminuw %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( code[1] == 0x3c )
		{
			code += 2;
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op2, op1 );
			printf( "pmaxsb %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( code[1] == 0x3e )
		{
			code += 2;
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op2, op1 );
			printf( "pmaxuw %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( code[1] == 0xffffff80 )
		{
			code += 2;
			prefix |= REX_W;
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
			printf( "invept %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( code[1] == 0xffffff81 )
		{
			code += 2;
			prefix |= REX_W;
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
			printf( "invvpid %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( code[1] == 0xffffff82 )
		{
			code += 2;
			prefix |= REX_W;
			code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
			printf( "invpcid %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if( code[1] == 0xfffffff6 )
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
		else if( code[1] == 0xfffffff0 )
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
		else if( code[1] == 0xfffffff1 )
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
		break;
	}
	case 0x3a:
	{
		++code;
		const char * inst = "error";
		bool isPinsr = false;

		switch(*code)
		{
		case 20:	inst = "pextrb"; break;
		case 21:	inst = "pextrw"; break;
		case 22:	
			inst = ((prefix & REX_W) == REX_W) ? "pextrq":"pextrd"; 
			break;
		case 32:	
			inst = "pinsrb"; 
			isPinsr = true;
			break;
		case 34:	
			inst = ((prefix & REX_W) == REX_W) ? "pinsrq":"pinsrd"; 
			isPinsr = true;
			break;
		}

		std::string op1;
		std::string op2;

		int opsize = ((prefix & REX_W) == REX_W) ? 64:32;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, opsize );

		char imm[10];
		code = imm8( code, imm );

		if( isPinsr )
			printf( "%s $%s,%s,%s\n", inst, imm, op2.c_str(), op1.c_str() );
		else
			printf( "%s $%s,%s,%s\n", inst, imm, op1.c_str(), op2.c_str() );
		break;
	}
	case 0x40:
	case 0x41:
	case 0x42:
	case 0x43:
	case 0x44:
	case 0x45:
	case 0x46:
	case 0x47:
	case 0x48:
	case 0x49:
	case 0x4a:
	case 0x4b:
	case 0x4c:
	case 0x4d:
	case 0x4e:
	case 0x4f:
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
		break;
	}
	case 0x50:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 0, op1, op2, 32 );
			printf( "movmskpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 1, op1, op2 );
			printf( "movmskps %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x51:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2, 32 );
			printf( "sqrtpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = ( prefix & PRE_REP ) ? "sqrtss":
				((prefix & PRE_NE)?"sqrtsd":"sqrtps");

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x52:
	{
		const char * inst = ( prefix & PRE_REP ) ? "rsqrtss":"rsqrtps";

		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 1, op1, op2 );
		printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		break;
	}
	case 0x53:
	{
		const char * inst = ( prefix & PRE_REP ) ? "rcpss":"rcpps";

		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
		printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		break;
	}
	case 0x54:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "andpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = "andps";

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x55:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "andnpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = "andnps";

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x56:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "orpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = "orps";

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x57:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "xorpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = "xorps";

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x58:
	{
		if( prefix & PRE_NE )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "addsd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "addpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = ( prefix & PRE_REP ) ? "addss":"addps";

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x59:
	{
		if( prefix & PRE_NE )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "mulsd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "mulpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = ( prefix & PRE_REP ) ? "mulss":"mulps";

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x5a:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_NE )
			printf( "cvtsd2ss %s,%s\n", op2.c_str(), op1.c_str() );
		else if( prefix & PRE_REP )
			printf( "cvtss2sd %s,%s\n", op2.c_str(), op1.c_str() );
		else if( prefix & PRE_OS )
			printf( "cvtpd2ps %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "cvtps2pd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x5b:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_REP )
			printf( "cvttps2dq %s,%s\n", op2.c_str(), op1.c_str() );
		else if( prefix & PRE_OS )
			printf( "cvtps2dq %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "cvtdq2ps %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x5c:
	{
		const char * inst = ( prefix & PRE_REP ) ? "subss": ((prefix&PRE_NE)?"subsd":"subps");

		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "subpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x5d:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "minpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = ( prefix & PRE_REP ) ? "minss":
				((prefix & PRE_NE)?"minsd":"minps");

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x5e:
	{
		if( prefix & PRE_NE )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "divsd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "divpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = ( prefix & PRE_REP ) ? "divss":"divps";

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x5f:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "maxpd %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			const char * inst = ( prefix & PRE_REP ) ? "maxss":
				((prefix & PRE_NE)?"maxsd":"maxps");

			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x60:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "punpcklbw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x61:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "punpcklwd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x62:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "punpckldq %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x63:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "packsswb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x64:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pcmpgtb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x65:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pcmpgtw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x66:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pcmpgtd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x67:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "packuswb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x68:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "punpckhbw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x69:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "punpckhwd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x6a:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "punpckhdq %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x6b:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "packssdw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x6e:
	{
		if( prefix & PRE_OS )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_AL, 0, op1, op2 );
		printf( "movd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x6f:
	{
		if( prefix & PRE_REP )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movdqu %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movdqa %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_AL, 0, op1, op2 );
			printf( "movq %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}

	case 0x70:
	{
		if( prefix & PRE_REP )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			char imm[12];
			code = uimm8( code, imm );
			printf( "pshufhw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			char imm[12];
			code = uimm8( code, imm );
			printf( "pshufd $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_NE )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			char imm[12];
			code = uimm8( code, imm );
			printf( "pshuflw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
			char imm[12];
			code = uimm8( code, imm );
			printf( "pshufw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0x73:
	{
		unsigned reg1 = *++code & 0x7;
		unsigned reg2 = (*code & 0x38) >> 3;
		bool isR = ( reg2 == 3 );

		if( prefix & REX_B )
			reg1 += 8;

		const char * op = regStr( reg1, XMM0, 0, Reg, prefix );
		++code;
		char imm[16];
		code = uimm8( code, imm );

		if( isR )
			printf( "psrldq $%s,%s\n", imm, op );
		else
			printf( "pslldq $%s,%s\n", imm, op );
		break;
	}
	case 0x74:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pcmpeqb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x75:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pcmpeqw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x76:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pcmpeqd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x77:
	{
		printf( "emms\n" );
		++code;
		break;
	}
	case 0x78:
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 0, op1, op2 );
		printf( "vmread %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x79:
	{
		prefix |= REX_W;
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 0, op1, op2 );
		printf( "vmwrite %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x7c:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_OS )
			printf( "haddpd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "haddps %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x7d:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_OS )
			printf( "hsubpd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "hsubps %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0x7e:
	{
		if( ((prefix & PRE_OS ) == PRE_OS) || (( prefix & PRE_REP ) == PRE_REP) )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_AL, 0, op1, op2 );

		if( PRE_REP & prefix )
			printf( "movq %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "movd %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0x7f:
	{
		if( prefix & PRE_REP )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movdqu %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else if(prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movdqa %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_AL, 0, op1, op2 );
			printf( "movq %s,%s\n", op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0xffffff80:
	case 0xffffff81:
	case 0xffffff82:
	case 0xffffff83:
	case 0xffffff84:
	case 0xffffff85:
	case 0xffffff86:
	case 0xffffff87:
	case 0xffffff88:
	case 0xffffff89:
	case 0xffffff8a:
	case 0xffffff8b:
	case 0xffffff8c:
	case 0xffffff8d:
	case 0xffffff8e:
	case 0xffffff8f:
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
		break;
	}
	case 0xffffff90:
	case 0xffffff91:
	case 0xffffff92:
	case 0xffffff93:
	case 0xffffff94:
	case 0xffffff95:
	case 0xffffff96:
	case 0xffffff97:
	case 0xffffff98:
	case 0xffffff99:
	case 0xffffff9a:
	case 0xffffff9b:
	case 0xffffff9c:
	case 0xffffff9d:
	case 0xffffff9e:
	case 0xffffff9f:
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
		break;
	}
	case 0xffffffa0:
	{
		printf( "pushq %%fs\n");
		++code;
		break;
	}
	case 0xffffffa1:
	{
		printf( "popq %%fs\n");
		++code;
		break;
	}
	case 0xffffffa2:
	{
		++code;
		printf( "cpuid\n" );
		break;
	}
	case 0xffffffa3:
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
		break;
	}
	case 0xffffffa4:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		char imm[12];
		code = imm8(code,imm);
		printf( "shld $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffa5:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "shld %%cl,%s,%s\n",  op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffa8:
	{
		printf( "pushq %%gs\n");
		++code;
		break;
	}
	case 0xffffffa9:
	{
		printf( "popq %%gs\n");
		++code;
		break;
	}
	case 0xffffffaa:
	{
		printf( "rsm\n" );
		++code;
		break;
	}
	case 0xffffffab:
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
		break;
	}
	case 0xffffffac:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		char imm[12];
		code = imm8(code,imm);
		printf( "shrd $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffad:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "shrd %%cl,%s,%s\n",  op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffae:
	{
		++code;

		if(*code == 0xffffffe8 )
		{
			printf( "lfence\n" );
			++code;
		}
		else if(*code == 0xfffffff0 )
		{
			printf( "mfence\n" );
			++code;
		}
		else if(*code == 0xfffffff8 )
		{
			printf( "sfence\n" );
			++code;
		}
		else
		{
			int mod = (*code & 0xc0 ) >> 6;
			int reg = (*code & 0x38 ) >> 3;
	
			if( reg == 2 && ((prefix & PRE_REP) == 0))
			{
				code = memStr( code, prefix, 0, 0, op1 );
				printf( "ldmxcsr %s\n", op1.c_str() );
			}
			else if( reg == 3 && ((prefix & PRE_REP) == 0))
			{
				code = memStr( code, prefix, 0, 0, op1 );
				printf( "stmxcsr %s\n", op1.c_str() );
			}
			else if( reg == 4 )
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
			else if( reg == 7 )
			{
				code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );
				printf( "clflush %s\n", op1.c_str() );
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
		break;
	}
	case 0xffffffb0:
	{
		if( code[2] == 0x25 )
        	code = imm_reg_ops( ++code, prefix, 0, 32, true, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 0, op1, op2 );

		printf( "cmpxchg %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffb1:
	{
		if( code[2] == 0x25 )
        	code = imm_reg_ops( ++code, prefix, 1, 32, true, op1, op2 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2 );

		printf( "cmpxchg %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffb2:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "lss %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffb3:
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
		break;
	}
	case 0xffffffb4:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "lfs %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffb5:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "lgs %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffb6:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2, -1, 8, -1 );	

		char s = ( prefix & PRE_OS ) ? 'w' : ( ((prefix & REX_W) == REX_W)?'q':'l' );

		printf( "movzb%c %s,%s\n", s, op2.c_str(),op1.c_str() );
		break;
	}
	case 0xffffffb7:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2, -1, 16, -1 );	

		char s = (( prefix & REX_W ) == REX_W) ? 'q' : ( 'l' );

		printf( "movzw%c %s,%s\n", s, op2.c_str(),op1.c_str() );
		break;
	}
	case 0xffffffbb:
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
		break;
	}
	case 0xffffffbc:
	{
		code++;
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "bsf %s,%s\n",  op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffbd:
	{
		code++;
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );
		printf( "bsr %s,%s\n",  op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffbe:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2, -1, 8, -1 );	

		char s = ( prefix & PRE_OS ) ? 'w' : ( ((prefix & REX_W) == REX_W)?'q':'l' );

		printf( "movsb%c %s,%s\n", s, op2.c_str(),op1.c_str() );
		break;
	}
	case 0xffffffbf:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2, -1, 16, -1 );	

		char s = (( prefix & REX_W ) == REX_W) ? 'q' : ( 'l' );

		printf( "movsw%c %s,%s\n", s, op2.c_str(),op1.c_str() );
		break;
	}
	case 0xffffffc0:
	{
    	if(code[2] == 0x25)
        	code = imm_reg_ops( ++code, prefix, 0, 32, true, op1, op2 );
    	else
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 0, op1, op2 );
		printf( "xadd %s,%s\n",  op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffc1:
	{
    	if(code[2] == 0x25)
        	code = imm_reg_ops( ++code, prefix, 1, 32, true, op1, op2 );
    	else
       		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2 );
		printf( "xadd %s,%s\n",  op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffc2:
	{
		if( prefix & PRE_OS )
		{
	   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			char imm[12];
			code = imm8( code, imm );
			printf( "cmppd $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		}
		else
		{
	   		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
	
			char imm[12];
			code = uimm8(code,imm);
	
			long i = strtol( imm, nullptr, 16 );
	
			if( prefix & PRE_NE )
			{
				const char * inst;
				switch(i)
				{
				case 0:  inst = "cmpeqsd";		break;
				case 1:  inst = "cmpltsd"; 		break;
				case 2:  inst = "cmplesd"; 		break;
				case 3:  inst = "cmpunordsd";	break;
				case 4:  inst = "cmpneqsd";		break;
				case 5:  inst = "cmpnltsd";		break;
				case 6:  inst = "cmpnlesd";		break;
				case 7:  inst = "cmpordsd";		break;
				}

				if( i >= 8 )
					printf( "cmpsd $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
				else
				{
					printf( "%s %s,%s\n", inst, op2.c_str(), op1.c_str() );
				}
			}
			else
			{
				const char * suffix = (( prefix & PRE_REP )  == 0 )?"ps":"ss";
	
				if( i >= 8 )
				{
					printf( "cmp%s $%s,%s,%s\n", suffix, imm, op2.c_str(), op1.c_str() );
				}
				else
				{
					const char * inst;
					switch(i)
					{
					default: inst = "cmpeq";	break;

					case 1:  inst = "cmplt"; 	break;
					case 2:  inst = "cmple"; 	break;
					case 3:  inst = "cmpunord";	break;
					case 4:  inst = "cmpneq"; 	break;
					case 5:  inst = "cmpnlt"; 	break;
					case 6:  inst = "cmpnle"; 	break;
					case 7:  inst = "cmpord"; 	break;
					}
					printf( "%s%s %s,%s\n", inst, suffix, op2.c_str(), op1.c_str() );
				}
			}
		}
		break;
	}
	case 0xffffffc3:
	{
		std::string op1;
		std::string op2;

		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL, 1, op1, op2 );
		printf( "movnti %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffc4:
	{
		std::string op1;
		std::string op2;

		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2, -1, 32 );

		char imm[10];
		code = imm8( code, imm );

		printf( "pinsrw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffc5:
	{
		std::string op1;
		std::string op2;

		code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 0, op1, op2, 32 );

		char imm[10];
		code = imm8( code, imm );

		printf( "pextrw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffc6:
	{
		if( prefix & PRE_OS )
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			char imm[12];
			code = imm8(code, imm );
			printf( "shufpd $%s,%s,%s\n",  imm, op2.c_str(), op1.c_str() );
		}
		else
		{
   			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 1, op1, op2 );
			char imm[12];
			code = imm8(code, imm );
			printf( "shufps $%s,%s,%s\n",  imm, op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0xffffffc7:
	{
		++code;

		if( (*code & 0x38 ) == 0x30)
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
			if( prefix & PRE_OS )
				printf( "vmclear %s\n", op.c_str() );
			else if( prefix & PRE_REP )
				printf( "vmxon %s\n", op.c_str() );
			else
				printf( "vmptrld %s\n", op.c_str() );
		}
		else if( (*code & 0xc0) != 0xc0 )
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
		break;
	}
	case 0xffffffc8: 
	case 0xffffffc9: 
	case 0xffffffca: 
	case 0xffffffcb: 
	case 0xffffffcc: 
	case 0xffffffcd: 
	case 0xffffffce: 
	case 0xffffffcf:
	{
		unsigned reg = *code & 0x07;

		const char * op = regStr( reg, AL, 1, Reg2, prefix );
		printf( "bswap %s\n", op );
		++code;
		break;
	}
	case 0xffffffd0:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_OS )
			printf( "addsubpd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "addsubps %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffd1:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psrlw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffd2:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psrld %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffd4:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "paddq %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffd5:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pmullw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffd6:
	{
		if( prefix & PRE_NE )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0_XMM0, 0, op1, op2 );
			printf( "movdq2q %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else if( prefix & PRE_REP )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_MM0, 0, op1, op2 );
			printf( "movq2dq %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0_AL, 0, op1, op2 );
			printf( "movq %s,%s\n", op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0xffffffd7:
	{
		if( prefix & PRE_OS )
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_XMM0, 0, op1, op2, 32 );
		else
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::AL_MM0, 0, op1, op2, 32 );
		printf( "pmovmskb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffd8:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psubusb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffd9:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psubusw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffda:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "pminub %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffdb:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pand %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffdc:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "paddusb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffdd:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "paddusw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffde:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "pmaxub %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffdf:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pandn %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffe0:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "pavgb %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
			printf( "pavgb %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0xffffffe1:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psraw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffe2:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psrad %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffe3:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "pavgw %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
			printf( "pavgw %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0xffffffe4:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "pmulhuw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffe5:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pmulhw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffe6:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		if( prefix & PRE_OS )
			printf( "cvttpd2dq %s,%s\n", op2.c_str(), op1.c_str() );
		else if( prefix & PRE_REP )
			printf( "cvtdq2pd %s,%s\n", op2.c_str(), op1.c_str() );
		else
			printf( "cvtpd2dq %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffe7:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "movntdq %s,%s\n", op1.c_str(), op2.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
			printf( "movntq %s,%s\n", op1.c_str(), op2.c_str() );
		}
		break;
	}
	case 0xffffffe8:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psubsb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffe9:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psubsw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffea:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op2, op1 );
		printf( "pminsw %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffeb:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "por %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffec:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "paddsb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffed:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "paddsw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xffffffee:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op2, op1 );
		printf( "pmaxsw %s,%s\n", op1.c_str(), op2.c_str() );
		break;
	}
	case 0xffffffef:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pxor %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffff0:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "lddqu %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffff1:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psllw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffff2:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pslld %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffff4:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "pmuludq %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffff5:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "pmaddwd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffff6:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "psadbw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffff7:
	{
		if( prefix & PRE_OS )
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "maskmovdqu %s,%s\n", op2.c_str(), op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
			printf( "maskmovq %s,%s\n", op2.c_str(), op1.c_str() );
		}
		break;
	}
	case 0xfffffff8:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psubb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffff9:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psubw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffffa:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psubd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffffb:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "psubq %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffffc:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "paddb %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffffd:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "paddw %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	case 0xfffffffe:
	{
		code = mod_reg_rm_ops( ++code, prefix, OpRegs::MM0, 0, op1, op2 );
		printf( "paddd %s,%s\n", op2.c_str(), op1.c_str() );
		break;
	}
	default:
		printf( "code %x\n", *code ); fflush(stdout);
		TODO
	}

	return code;
}


const char * dis_f0(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );

	printf( "vlddqu %s,%s\n", op2.c_str(), op1.c_str() );

	return code;
}

const char * dis_f1(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
		printf( "vpsllw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "vpsllw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_f2(const char * code, unsigned prefix)
{
	if( prefix & VEX )
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;

		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
			printf( "vpslld %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpslld %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_f3(const char * code, unsigned prefix)
{
	if( prefix & VEX )
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;

		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
			printf( "vpsllq %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpsllq %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_f4(const char * code, unsigned prefix)
{
	if( prefix & VEX )
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;

		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
			printf( "vpmuludq %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpmuludq %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}
	else
	    printf( "hlt\n" );
	return code;
}

const char * dis_f5(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
    	printf( "cmc\n" );
	else
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;

		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
			printf( "vpmaddwd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpmaddwd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_f6(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		int reg = (*code & 0x38) >> 3;
		const char * inst;
		switch(reg)
		{
		case 0: inst = "test";break;
		case 2: inst = "not"; break;
		case 3: inst = "neg"; break;
		case 4:	inst = "mul"; break;
		case 5: inst = "imul";break;
		case 6: inst = "div"; break;
		case 7: inst = "idiv";break;
		} 
	
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
	
			if( prefix & PRE_OS )
				printf( "%sw %s\n", inst, op.c_str() );
			else if( (prefix & REX_W ) == REX_W )
				printf( "%sq %s\n", inst, op.c_str() );
			else
				printf( "%sb %s\n", inst, op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;
	
			if( (prefix & REX_B ) == REX_B )
				prefix |= REX_R;

			const char * op = regStr( reg, AL, 0, Reg, prefix );

			printf( "%s %s\n", inst, op );
			++code;
		}
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
			printf( "vpsadbw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpsadbw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_f7(const char * code, unsigned prefix)
{
	if( prefix & VEX )
	{
		std::string op1;
		std::string op2;

		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "vmaskmovdqu %s,%s\n", op2.c_str(), op1.c_str() );
	}
	else
	{
		int reg = (*code & 0x38) >> 3;
		const char * inst;
		switch(reg)
		{
		case 0: inst = "test";break;
		case 2: inst = "not"; break;
		case 3: inst = "neg"; break;
		case 4:	inst = "mul"; break;
		case 5: inst = "imul";break;
		case 6: inst = "div";break;
		case 7: inst = "idiv";break;
		} 
	
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
	
			if( prefix & PRE_OS )
				printf( "%sw %s\n", inst, op.c_str() );
			else if( (prefix & REX_W ) == REX_W )
				printf( "%sq %s\n", inst, op.c_str() );
			else
				printf( "%sl %s\n", inst, op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;
	
			if( (prefix & REX_B ) == REX_B )
				prefix |= REX_R;
	
			const char * op = regStr( reg, AL, 1, Reg, prefix );
	
			printf( "%s %s\n", inst, op );
			++code;
		}
	}

	return code;
}

const char * dis_f8(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	    printf( "clc\n" );
	else
	{
		int vvvv = prefix >> 28;
		vvvv = vvvv ^ 0xf;

		std::string op1;
		std::string op2;

		if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
			printf( "vpsubb %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpsubb %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_f9(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
		printf( "vpsubw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "vpsubw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_fa(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		printf( "cli\n" );
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
			printf( "vpsubd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpsubd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_fb(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
		printf( "vpsubq %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "vpsubq %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_fc(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		printf( "cld\n" );
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
			printf( "vpaddb %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpaddb %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_fd(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;

	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
		printf( "vpaddw %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
		printf( "vpaddw %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

const char * dis_fe(const char * code, unsigned prefix)
{
	if( ( prefix & VEX ) == 0 )
	{
		int reg = *code & 0x38;
		const char * inst = (reg==0x08)?"dec":"inc";

		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );

			if( prefix & PRE_OS )
				printf( "%sw %s\n", inst, op.c_str() );
			else if( (prefix & REX_W ) == REX_W )
				printf( "%sq %s\n", inst, op.c_str() );
			else
				printf( "%sl %s\n", inst, op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;

			if( (prefix & REX_B ) == REX_B )
				prefix |= REX_R;

			const char * op = regStr( reg, AL, 1, Reg, prefix );

			printf( "%s %s\n", inst, op );
			++code;
		}
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
			printf( "vpaddd %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
			printf( "vpaddd %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
		}
	}

	return code;
}

const char * dis_ff(const char * code, unsigned prefix)
{
    // ff /6 : push
	int reg = *code & 0x38;

    if( reg == 0x30 )
    {
        std::string op;
        code = pop_operand( code, prefix, op );

        printf( "pushq %s\n", op.c_str() );
    }
	else if( reg == 0x20 )
	{
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
	
			printf( "jmp *%s\n", op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;
	
			if( (prefix & PRE_OS) == 0 )
				prefix |= REX_W;
			const char * op = regStr( reg, AL, 1, Reg2, prefix );
	
			printf( "jmp *%s\n", op );
			++code;
		}
	}
    else if( reg == 0x08 || reg == 0x00 )
	{
		const char * inst = (reg==0x08)?"dec":"inc";

		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
	
			if( prefix & PRE_OS )
				printf( "%sw %s\n", inst, op.c_str() );
			else if( (prefix & REX_W ) == REX_W )
				printf( "%sq %s\n", inst, op.c_str() );
			else
				printf( "%sb %s\n", inst, op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;
	
			if( (prefix & REX_B ) == REX_B )
				prefix |= REX_R;
	
			const char * op = regStr( reg, AL, 0, Reg, prefix );
	
			printf( "%s %s\n", inst, op );
			++code;
		}
	}
    else if( reg == 0x10 )
	{
		if( (*code & 0xc0) != 0xc0 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
			printf( "callq *%s\n", op.c_str() );
		}
		else
		{
			unsigned reg = *code & 0x07;
	
			prefix |= REX_W;
			const char * op = regStr( reg, AL, 0, Reg, prefix );

			printf( "callq *%s\n", op );
			++code;
		}
	}
    else
	{
        TODO
	}

	return code;
}


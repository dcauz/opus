
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

const char * cmppsInst( long i )
{
	const char * inst = "ERROR";

	switch(i)
	{
	case 0: inst = "vcmpeqps";			break;
	case 1: inst = "vcmpltps";			break;
	case 2: inst = "vcmpleps";			break;
	case 3: inst = "vcmpunordps";		break;
	case 4: inst = "vcmpneqps";			break;
	case 5: inst = "vcmpnltps";			break;
	case 6: inst = "vcmpnleps";			break;
	case 7: inst = "vcmpordps";			break;
	case 8: inst = "vcmpeq_uqps";		break;
	case 9: inst = "vcmpngeps";			break;
	case 10: inst = "vcmpngtps";		break;
	case 11: inst = "vcmpfalseps";		break;
	case 12: inst = "vcmpneq_oqps";		break;
	case 13: inst = "vcmpgeps";			break;
	case 14: inst = "vcmpgtps";			break;
	case 15: inst = "vcmptrueps";		break;
	case 16: inst = "vcmpeq_osps";		break;
	case 17: inst = "vcmplt_oqps";		break;
	case 18: inst = "vcmple_oqps";		break;
	case 19: inst = "vcmpunord_sps";	break;
	case 20: inst = "vcmpneq_usps";		break;
	case 21: inst = "vcmpnlt_uqps";		break;
	case 22: inst = "vcmpnle_uqps";		break;
	case 23: inst = "vcmpord_sps";		break;
	case 24: inst = "vcmpeq_usps";		break;
	case 25: inst = "vcmpnge_uqps";		break;
	case 26: inst = "vcmpngt_uqps";		break;
	case 27: inst = "vcmpfalse_osps";	break;
	case 28: inst = "vcmpneq_osps";		break;
	case 29: inst = "vcmpge_oqps";		break;
	case 30: inst = "vcmpgt_oqps";		break;
	case 31: inst = "vcmptrue_usps";	break;
	}
	return inst;
}

const char * dis_c2(const char * code, unsigned prefix)
{
	if(( prefix & VEX ) == 0 )
	{
		char buff[12];
		code = imm16(code, buff );

		printf( "retq $%s\n", buff );
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

			char imm[8];
			code = imm8(code, imm );

			long i = strtol( imm, nullptr, 16 );

			if( i >= 32 )
				printf( "vcmpps $%s,%s,%%ymm%d,%s\n", imm,op2.c_str(), vvvv, op1.c_str() );
			else
			{
				const char * inst = cmppsInst( i );
				printf( "%s %s,%%ymm%d,%s\n", inst ,op2.c_str(), vvvv, op1.c_str() );
			}
		}
		else
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

			char imm[8];
			code = imm8(code, imm );

			long i = strtol( imm, nullptr, 16 );

			if( i >= 32 )
				printf( "vcmpps $%s,%s,%%xmm%d,%s\n", imm,op2.c_str(), vvvv, op1.c_str() );
			else
			{
				const char * inst = cmppsInst( i );
				printf( "%s %s,%%xmm%d,%s\n", inst ,op2.c_str(), vvvv, op1.c_str() );
			}
		}
	}

    return code;
}

const char * dis_c3(const char * code, unsigned prefix)
{
	printf( "retq\n");
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
	char imm_16[12];
	char imm_8[8];

	code = imm16( code, imm_16 );
	code = imm8( code, imm_8 );

	printf( "enterq $%s, $%s\n", imm_16, imm_8 );

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
	if( prefix & REX_W )
		printf( "iretq\n");
	else
		printf( "iret\n");

	return code;
}


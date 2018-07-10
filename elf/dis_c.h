
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

const char * cmpXsInst( long i, bool isP )
{
	const char * inst = "ERROR";

	switch(i)
	{
	case 0:  inst = isP?"vcmpeqps"      :"vcmpeqss";		break;
	case 1:  inst = isP?"vcmpltps"      :"vcmpltss";		break;
	case 2:  inst = isP?"vcmpleps"      :"vcmpless";		break;
	case 3:  inst = isP?"vcmpunordps"   :"vcmpunordss";		break;
	case 4:  inst = isP?"vcmpneqps"     :"vcmpneqss";		break;
	case 5:  inst = isP?"vcmpnltps"     :"vcmpnltss";		break;
	case 6:  inst = isP?"vcmpnleps"     :"vcmpnless";		break;
	case 7:  inst = isP?"vcmpordps"     :"vcmpordss";		break;
	case 8:  inst = isP?"vcmpeq_uqps"   :"vcmpeq_uqss";		break;
	case 9:  inst = isP?"vcmpngeps"     :"vcmpngess";		break;
	case 10: inst = isP?"vcmpngtps"     :"vcmpngtss";		break;
	case 11: inst = isP?"vcmpfalseps"   :"vcmpfalsess";		break;
	case 12: inst = isP?"vcmpneq_oqps"  :"vcmpneq_oqss";	break;
	case 13: inst = isP?"vcmpgeps"      :"vcmpgess";		break;
	case 14: inst = isP?"vcmpgtps"      :"vcmpgtss";		break;
	case 15: inst = isP?"vcmptrueps"    :"vcmptruess";		break;
	case 16: inst = isP?"vcmpeq_osps"   :"vcmpeq_osss";		break;
	case 17: inst = isP?"vcmplt_oqps"   :"vcmplt_oqss";		break;
	case 18: inst = isP?"vcmple_oqps"   :"vcmple_oqss";		break;
	case 19: inst = isP?"vcmpunord_sps" :"vcmpunord_sss";	break;
	case 20: inst = isP?"vcmpneq_usps"  :"vcmpneq_usss";	break;
	case 21: inst = isP?"vcmpnlt_uqps"  :"vcmpnlt_uqss";	break;
	case 22: inst = isP?"vcmpnle_uqps"  :"vcmpnle_uqss";	break;
	case 23: inst = isP?"vcmpord_sps"   :"vcmpord_sss";		break;
	case 24: inst = isP?"vcmpeq_usps"   :"vcmpeq_usss";		break;
	case 25: inst = isP?"vcmpnge_uqps"  :"vcmpnge_uqss";	break;
	case 26: inst = isP?"vcmpngt_uqps"  :"vcmpngt_uqss";	break;
	case 27: inst = isP?"vcmpfalse_osps":"vcmpfalse_osss";	break;
	case 28: inst = isP?"vcmpneq_osps"  :"vcmpneq_osss";	break;
	case 29: inst = isP?"vcmpge_oqps"   :"vcmpge_oqss";		break;
	case 30: inst = isP?"vcmpgt_oqps"   :"vcmpgt_oqss";		break;
	case 31: inst = isP?"vcmptrue_usps" :"vcmptrue_usss";	break;
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

		if( prefix & PRE_NE )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
			char imm[8];
			code = uimm8(code, imm );

			long i = strtol( imm, nullptr, 16 );
	
			const char * inst;
			switch(i)
			{
			case 0:  inst = "vcmpeqsd";		break;
			case 1:  inst = "vcmpltsd";		break;
			case 2:  inst = "vcmplesd";		break;
			case 3:  inst = "vcmpunordsd";	break;
			case 4:  inst = "vcmpneqsd";	break;
			case 5:  inst = "vcmpnltsd";	break;
			case 6:  inst = "vcmpnlesd";	break;
			case 7:  inst = "vcmpordsd";	break;
			case 8:  inst = "vcmpeq_uqsd";	break;
			case 9:  inst = "vcmpngesd";	break;
			case 10: inst = "vcmpngtsd";	break;
			case 11: inst = "vcmpfalsesd";	break;
			case 12: inst = "vcmpneq_oqsd";	break;
			case 13: inst = "vcmpgesd";		break;
			case 14: inst = "vcmpgtsd";		break;
			case 15: inst = "vcmptruesd";	break;
			case 16: inst = "vcmpeq_ossd";	break;
			case 17: inst = "vcmplt_oqsd";	break;
			case 18: inst = "vcmple_oqsd";	break;
			case 19: inst = "vcmpunord_ssd";break;
			case 20: inst = "vcmpneq_ussd";	break;
			case 21: inst = "vcmpnlt_uqsd";	break;
			case 22: inst = "vcmpnle_uqsd";	break;
			case 23: inst = "vcmpord_ssd";	break;
			case 24: inst = "vcmpeq_ussd";	break;
			case 25: inst = "vcmpnge_uqsd";	break;
			case 26: inst = "vcmpngt_uqsd";	break;
			case 27: inst = "vcmpfalse_ossd";break;
			case 28: inst = "vcmpneq_ossd";	break;
			case 29: inst = "vcmpge_oqsd";	break;
			case 30: inst = "vcmpgt_oqsd";	break;
			case 31: inst = "vcmptrue_ussd";break;
			}

			if( i >= 32 )
				printf( "vcmpsd $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), vvvv, op1.c_str() );
			else
			{
				printf( "%s %s,%%xmm%d,%s\n", inst, op2.c_str(), vvvv, op1.c_str() );
			}
		}
		else if( prefix & PRE_OS )
		{
			if( prefix & PRE_256 )
				code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
			else
				code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	

			char imm[8];
			code = imm8(code, imm );

			if( prefix & PRE_256 )
				printf( "vcmppd $%s,%s,%%ymm%d,%s\n", imm, op2.c_str(), vvvv, op1.c_str() );
			else
				printf( "vcmppd $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), vvvv, op1.c_str() );
		}
		else if( prefix & PRE_256 )
		{
			code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	

			char imm[8];
			code = imm8(code, imm );

			long i = strtol( imm, nullptr, 16 );

			if( i >= 32 )
				printf( "vcmpps $%s,%s,%%ymm%d,%s\n", imm,op2.c_str(), vvvv, op1.c_str() );
			else
			{
				const char * inst = cmpXsInst( i, true );
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
			{
				const char * inst = (( prefix & PRE_REP ) == 0)?"vcmpps":"vcmpss";

				printf( "%s $%s,%s,%%xmm%d,%s\n", inst, imm,op2.c_str(), vvvv, op1.c_str() );
			}
			else
			{
				const char * inst = cmpXsInst( i, ( prefix & PRE_REP ) == 0 );
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

const char * dis_c4(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0_AL, 0, op1, op2 , -1, 32);	

	char imm[12];
	code = imm8( code, imm );

    int vvvv = prefix >> 28;
    vvvv = vvvv ^ 0xf;

	printf( "vpinsrw $%s,%s,%%xmm%d,%s\n", imm, op2.c_str(), vvvv, op1.c_str() );

	return code;
}

const char * dis_c5(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	code = mod_reg_rm_ops( code, prefix, OpRegs::AL_XMM0, 0, op1, op2 , 32);	

	char imm[12];
	code = imm8( code, imm );

	printf( "vpextrw $%s,%s,%s\n", imm, op2.c_str(), op1.c_str() );

	return code;
}

const char * dis_c6(const char * code, unsigned prefix)
{
    int vvvv = prefix >> 28;
    vvvv = vvvv ^ 0xf;

    std::string op1;
    std::string op2;

	char imm[12];
    if( prefix & PRE_256 )
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );
		code = imm8(code,imm);
        printf( "vshufps $%s,%s,%%ymm%d,%s\n", imm,op2.c_str(), vvvv, op1.c_str() );
    }
    else
    {
        code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );
		code = imm8(code,imm);
        printf( "vshufps $%s,%s,%%xmm%d,%s\n", imm,op2.c_str(), vvvv, op1.c_str() );
    }

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


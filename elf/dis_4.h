
const char * dis_40(const char * code, unsigned prefix)
{
	int vvvv = prefix >> 28;
	vvvv = vvvv ^ 0xf;

	std::string op1;
	std::string op2;
	
	if( prefix & PRE_256 )
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::YMM0, 0, op1, op2 );	
		printf( "vpmulld %s,%%ymm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}
	else
	{
		code = mod_reg_rm_ops( code, prefix, OpRegs::XMM0, 0, op1, op2 );	
		printf( "vpmulld %s,%%xmm%d,%s\n", op2.c_str(), vvvv, op1.c_str() );
	}

	return code;
}

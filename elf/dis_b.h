
const char * dis_b0(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_b1(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_b2(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );	

TODO
	return code;
}

const char * dis_b3(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_b4(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );	

TODO
	return code;
}

const char * dis_b5(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );	

TODO
	return code;
}

const char * dis_b6(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_b7(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_b8(const char * code, unsigned prefix)
{
	char imm[16];
	code = imm32(code, imm );
	printf( "mov %s, %%eax\n", imm );

	return code;
}

const char * dis_b9(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_ba(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_bb(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_bc(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_bd(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_be(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_bf(const char * code, unsigned prefix)
{
TODO
	return code;
}


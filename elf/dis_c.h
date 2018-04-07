
const char * dis_c0(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_c1(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_c2(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;
    code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );

	printf( "cmov %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_c3(const char * code, unsigned prefix)
{
	printf( "retq\n");
	return code;
}

const char * dis_c4(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_c5(const char * code, unsigned prefix)
{
TODO
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
TODO
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
TODO
	return code;
}

const char * dis_cd(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_ce(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_cf(const char * code, unsigned prefix)
{
TODO
	return code;
}


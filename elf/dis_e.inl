
const char * dis_e0(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_e1(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_e2(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_e3(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_e4(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_e5(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_e6(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_e7(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_e8(const char * code, unsigned prefix)
{
	char buff[16];
	code = imm32( code, buff );

	printf( "callq %s\n", buff );
	return code;
}

const char * dis_e9(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_ea(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_eb(const char * code, unsigned prefix)
{
	char disp[12];
	code = imm8( code, disp );
	printf( "jmp %s\n", disp );

	return code;
}

const char * dis_ec(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_ed(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_ee(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_ef(const char * code, unsigned prefix)
{
TODO
	return code;
}


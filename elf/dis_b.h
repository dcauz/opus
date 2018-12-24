
const char * dis_b8(const char * code, unsigned prefix)
{
	char imm[16];
	code = imm32(code, imm );
	printf( "mov %s, %%eax\n", imm );

	return code;
}


const char * dis_60(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_61(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_62(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_63(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	code = mod_reg_rm_ops( code, prefix, 0, 1, op1, op2, 32 );	

	printf( "movslq %s,%s\n", op2.c_str(),op1.c_str() );

	return code;
}

const char * dis_68(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_69(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	int opSize = (prefix & PRE_OS )?16:(((prefix & REX_W) == REX_W)?64:32);

	code = mod_reg_rm_ops( code, prefix, 0, 1, op1, op2, opSize );	

	char imm[16];
	if( prefix & PRE_OS )
		code = imm16( code, imm );
	else
		code = imm32( code, imm );

	printf( "imul $%s,%s,%s\n", imm, op2.c_str(),op1.c_str() );

	return code;
}

const char * dis_6a(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_6b(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	int opSize = (prefix & PRE_OS )?16:(((prefix & REX_W) == REX_W)?64:32);

	code = mod_reg_rm_ops( code, prefix, 1, 1, op1, op2, opSize );	

	char imm[10];
	code = imm8( code, imm );

	printf( "imul $%s,%s,%s\n", imm, op2.c_str(),op1.c_str() );

	return code;
}

const char * dis_6c(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep " );

	printf( "insb (%%dx),%%es:(%%rdi)\n");

	return code;
}

const char * dis_6d(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep " );

	if( prefix & PRE_OS )
		printf( "insw (%%dx),%%es:(%%rdi)\n" );
	else
	   	printf( "insl (%%dx),%%es:(%%rdi)\n" );

	return code;
}

const char * dis_6e(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep outsb %%ds:(%%rsi),(%%dx)\n" );
	else
		printf( "outsb %%ds:(%%rsi),(%%dx)\n");

	return code;
}

const char * dis_6f(const char * code, unsigned prefix)
{

	if( prefix & PRE_REP )
		printf( "rep ");

	if( prefix & PRE_OS )
		printf( "outsw %%ds:(%%rsi),(%%dx)\n");
	else
		printf( "outsl %%ds:(%%rsi),(%%dx)\n");

	return code;
}



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
TODO
	return code;
}

const char * dis_68(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_69(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_6a(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_6b(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_6c(const char * code, unsigned prefix)
{
	printf( "insb (%%dx),%%es:(%%rdi)\n");

	return code;
}

const char * dis_6d(const char * code, unsigned prefix)
{
	if( prefix & PRE_OS )
		printf( "insw (%%dx),%%es:(%%rdi)\n" );
	else
	   	printf( "insl (%%dx),%%es:(%%rdi)\n" );

	return code;
}

const char * dis_6e(const char * code, unsigned prefix)
{
	printf( "outsb %%ds:(%%rsi),(%%dx)\n");

	return code;
}

const char * dis_6f(const char * code, unsigned prefix)
{

	if( prefix & PRE_OS )
		printf( "outsw %%ds:(%%rsi),(%%dx)\n");
	else
		printf( "outsl %%ds:(%%rsi),(%%dx)\n");

	return code;
}


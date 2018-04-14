
const char * dis_90(const char * code, unsigned prefix)
{
	printf( "nop\n");
	return code;
}

const char * dis_91(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_92(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_93(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_94(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_95(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_96(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_97(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_98(const char * code, unsigned prefix)
{
	if( prefix & PRE_OS )
		printf( "cbtw\n" );
	else if( prefix & REX_W )
		printf( "cltq\n" );
	else
		printf( "cltd\n" );
		
	return code;
}

const char * dis_99(const char * code, unsigned prefix)
{
	if( prefix & REX_W )
		printf( "cqto\n" );
	else if( prefix & PRE_OS )
		printf( "cwtd\n" );
	else
		printf( "cltd\n" );

	return code;
}

const char * dis_9a(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_9b(const char * code, unsigned prefix)
{
	printf( "fwait\n" );
	return code;
}

const char * dis_9c(const char * code, unsigned prefix)
{
	if( prefix & PRE_OS )
		printf( "pushfq\n" );
	else
		printf( "pushfw\n" );

	return code;
}

const char * dis_9d(const char * code, unsigned prefix)
{
	if( prefix & PRE_OS )
		printf( "popfq\n" );
	else
		printf( "popfw\n" );

	return code;
}

const char * dis_9e(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_9f(const char * code, unsigned prefix)
{
TODO
	return code;
}



void printXCHG( int reg, unsigned prefix )
{
	const char * ax = (prefix & PRE_OS ) ? ( "%ax" ):
					((( prefix & REX_W) == REX_W)? "%rax" : "%eax" );

	const char * r = regStr( reg, AL, 1, Reg2, prefix );

	printf( "xchg %s,%s\n", ax, r );
}

const char * dis_90(const char * code, unsigned prefix)
{
	if( prefix == 0 )
		printf( "nop\n");
	else
	{
		printXCHG( 0, prefix );
	}

	return code;
}

const char * dis_91(const char * code, unsigned prefix)
{
	printXCHG( 1, prefix );
	return code;
}

const char * dis_92(const char * code, unsigned prefix)
{
	printXCHG( 2, prefix );
	return code;
}

const char * dis_93(const char * code, unsigned prefix)
{
	printXCHG( 3, prefix );
	return code;
}

const char * dis_94(const char * code, unsigned prefix)
{
	printXCHG( 4, prefix );
	return code;
}

const char * dis_95(const char * code, unsigned prefix)
{
	printXCHG( 5, prefix );
	return code;
}

const char * dis_96(const char * code, unsigned prefix)
{
	printXCHG( 6, prefix );
	return code;
}

const char * dis_97(const char * code, unsigned prefix)
{
	printXCHG( 7, prefix );
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
	if( *code == 0xffffffdb )
	{
		++code;
		if( *code == 0xffffffe2 )
			printf( "fclex\n" );
		else if( *code == 0xffffffe3 )
			printf( "finit\n" );
		else
			TODO
		++code;
	}
	else
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


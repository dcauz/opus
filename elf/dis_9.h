
void printXCHG( int reg, unsigned prefix )
{
	const char * ax = (prefix & PRE_OS ) ? ( "%ax" ):
					((( prefix & REX_W) == REX_W)? "%rax" : "%eax" );

	const char * r = regStr( reg, AL, 1, Reg2, prefix );

	printf( "xchg %s,%s\n", ax, r );
}

const char * dis_90(const char * code, unsigned prefix)
{
	printXCHG( 0, prefix );
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
	else
		printf( "cwde\n" );
		
	return code;
}

const char * dis_99(const char * code, unsigned prefix)
{
	if( prefix & PRE_OS )
		printf( "cwtd\n" );
	else
		printf( "cdq\n" );

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
		if( *code == 0xffffffe3 )
			printf( "finit\n" );
		else
			TODO
		++code;
	}
	else if( *code == 0xffffffdf && code[1] == 0xffffffe0 )
		printf( "fstsw %%ax\n" );
	else
	{
		const char * pref = code;

		while(isPrefix(*pref, prefix ))
			++pref;

		if( *pref == 0xffffffdd )
		{
			code = pref+1;

			std::string op;

			if( (*code & 0x38 ) == 0x38 )
			{
				code = memStr( code, prefix, 0, 1, op );
				printf( "fstsw %s\n", op.c_str() );
			}
			else
			{
				code = memStr( code, prefix, 0, 1, op );
				printf( "fsave %s\n", op.c_str() );
			}
		}
		else if( *pref == 0xffffffd9 )
		{
			code = pref+1;

			std::string op;

			if( (*code & 0x38 ) == 0x38 )
			{
				code = memStr( code, prefix, 0, 1, op );
				printf( "fstcw %s\n", op.c_str() );
			}
			else if( (*code & 0x38 ) == 0x30 )
			{
				code = memStr( code, prefix, 0, 1, op );
				printf( "fstenv %s\n", op.c_str() );
			}
			else
				TODO
		}
	}

	return code;
}

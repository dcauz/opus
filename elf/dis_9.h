
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

inline bool isPrefix(char pref, unsigned & prefix )
{
	switch(pref)
	{	
	default:
		return false;
	case 0x26:	prefix |= PRE_26;	break;
	case 0x2e:	prefix |= PRE_BHNT;	break;
	case 0x36:	prefix |= PRE_36; 	break;
	case 0x3e:	prefix |= PRE_3E; 	break;
	case 0x40:	prefix |= pref; 	break;
	case 0x41:	prefix |= pref; 	break;
	case 0x42:	prefix |= pref; 	break;
	case 0x43:	prefix |= pref; 	break;
	case 0x44:	prefix |= pref; 	break;
	case 0x45:	prefix |= pref; 	break;
	case 0x46:	prefix |= pref; 	break;
	case 0x47:	prefix |= pref; 	break;
	case 0x48:	prefix |= pref; 	break;
	case 0x49:	prefix |= pref; 	break;
	case 0x4a:	prefix |= pref; 	break;
	case 0x4b:	prefix |= pref; 	break;
	case 0x4c:	prefix |= pref; 	break;
	case 0x4d:	prefix |= pref; 	break;
	case 0x4e:	prefix |= pref; 	break;
	case 0x4f:	prefix |= pref; 	break;
	case 0x64:	prefix |= PRE_64; 	break;
	case 0x65:	prefix |= PRE_65; 	break;
	case 0x66:	prefix |= PRE_OS; 	break;
	case 0x67:	prefix |= PRE_AS; 	break;
	case -14:	prefix |= PRE_NE; 	break;
	case -13:	prefix |= PRE_REP;	break;
	}

	return true;
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
	{
		const char * pref = code;
		unsigned prefix = 0;

		while(isPrefix(*pref, prefix ))
			++pref;

		if( *pref == 0xffffffdd )
		{
			code = pref;

			std::string op;
			code = memStr( ++code, prefix, 0, 1, op );

			printf( "fsave %s\n", op.c_str() );
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
		else
			printf( "fwait\n" );
	}

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


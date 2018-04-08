
// 227:   67 d0 bc 73 14 22 00    sarb   0x2214(%ebx,%esi,2)
//              10 111 100 01 110 011 imm32

// 267:   67 d0 bb 14 28 00 00    sarb   0x2814(%ebx)
//              10 111 011

const char * dis_d0(const char * code, unsigned prefix)
{
	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 0, op );

		printf( "sarb %s\n", op.c_str() );
	}
	else
	{
		unsigned reg = *code & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 0, 0, Reg, prefix );

		printf( "sar %s\n", op );
		++code;
	}

	return code;
}

const char * dis_d1(const char * code, unsigned prefix)
{
	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 1, op );

		if( (prefix & REX_W ) == REX_W )
			printf( "sarq %s\n", op.c_str() );
		else if( prefix & PRE_OS )
			printf( "sarw %s\n", op.c_str() );
		else
			printf( "sarl %s\n", op.c_str() );
	}
	else
	{
		unsigned reg = *code & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 1, 0, Reg, prefix );

		printf( "sar %s\n", op );
		++code;
	}

	return code;
}

const char * dis_d2(const char * code, unsigned prefix)
{
	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 1, op );

		if( (prefix & REX_W ) == REX_W )
			printf( "sarq %%cl,%s\n", op.c_str() );
		else if( prefix & PRE_OS )
			printf( "sarw %%cl,%s\n", op.c_str() );
		else
			printf( "sarb %%cl,%s\n", op.c_str() );
	}
	else
	{
		unsigned reg = *code++ & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 0, 0, Reg, prefix );

		printf( "sar %%cl,%s\n", op );
	}

	return code;
}

const char * dis_d3(const char * code, unsigned prefix)
{
	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 1, op );

		if( (prefix & REX_W ) == REX_W )
			printf( "sarq %%cl,%s\n", op.c_str() );
		else if( prefix & PRE_OS )
			printf( "sarw %%cl,%s\n", op.c_str() );
		else
			printf( "sarl %%cl,%s\n", op.c_str() );
	}
	else
	{
		unsigned reg = *code++ & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 1, 0, Reg, prefix );

		printf( "sar %%cl,%s\n", op );
	}

	return code;
}

const char * dis_d4(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_d5(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_d6(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_d7(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_d8(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_d9(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_da(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_db(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_dc(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_dd(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_de(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_df(const char * code, unsigned prefix)
{
TODO
	return code;
}


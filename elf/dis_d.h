
const char * dis_d0(const char * code, unsigned prefix)
{
	int inst = (*code & 0x38) >> 3;

	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 0, op );

		printf( "%sb %s\n", rsOp(inst), op.c_str() );
	}
	else
	{
		unsigned reg = *code & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 0, 0, Reg, prefix );

		printf( "%s %s\n", rsOp(inst), op );
		++code;
	}

	return code;
}

const char * dis_d1(const char * code, unsigned prefix)
{
	int inst = (*code & 0x38) >> 3;

	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 1, op );

		if( (prefix & REX_W ) == REX_W )
			printf( "%sq %s\n", rsOp(inst), op.c_str() );
		else if( prefix & PRE_OS )
			printf( "%sw %s\n", rsOp(inst), op.c_str() );
		else
			printf( "%sl %s\n", rsOp(inst), op.c_str() );
	}
	else
	{
		unsigned reg = *code & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 1, 0, Reg, prefix );

		printf( "%s %s\n", rsOp(inst), op );
		++code;
	}

	return code;
}

const char * dis_d2(const char * code, unsigned prefix)
{
	int inst = (*code & 0x38) >> 3;

	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 1, op );

		if( (prefix & REX_W ) == REX_W )
			printf( "%sq %%cl,%s\n", rsOp(inst), op.c_str() );
		else if( prefix & PRE_OS )
			printf( "%sw %%cl,%s\n", rsOp(inst), op.c_str() );
		else
			printf( "%sb %%cl,%s\n", rsOp(inst), op.c_str() );
	}
	else
	{
		unsigned reg = *code++ & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 0, 0, Reg, prefix );

		printf( "%s %%cl,%s\n", rsOp(inst), op );
	}

	return code;
}

const char * dis_d3(const char * code, unsigned prefix)
{
	int inst = (*code & 0x38) >> 3;

	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 1, op );

		if( (prefix & REX_W ) == REX_W )
			printf( "%sq %%cl,%s\n", rsOp(inst), op.c_str() );
		else if( prefix & PRE_OS )
			printf( "%sw %%cl,%s\n", rsOp(inst), op.c_str() );
		else
			printf( "%sl %%cl,%s\n", rsOp(inst), op.c_str() );
	}
	else
	{
		unsigned reg = *code++ & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 1, 0, Reg, prefix );

		printf( "%s %%cl,%s\n", rsOp(inst), op );
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
	if( prefix & PRE_AS )
		printf( "xlatb %%ds:(%%ebx)\n" );
	else
		printf( "xlat %%ds:(%%rbx)\n" );

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


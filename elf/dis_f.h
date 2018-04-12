
const char * dis_f1(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_f4(const char * code, unsigned prefix)
{
    printf( "hlt\n" );
	return code;
}

const char * dis_f5(const char * code, unsigned prefix)
{
    printf( "cmc\n" );
	return code;
}

const char * dis_f6(const char * code, unsigned prefix)
{
	int reg = (*code & 0x38) >> 3;
	const char * inst = (reg == 4)?"mul":"div";

	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 0, op );

		if( prefix & PRE_OS )
			printf( "%sw %s\n", inst, op.c_str() );
		else if( (prefix & REX_W ) == REX_W )
			printf( "%sq %s\n", inst, op.c_str() );
		else
			printf( "%sb %s\n", inst, op.c_str() );
	}
	else
	{
		unsigned reg = *code & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 0, 0, Reg, prefix );

		printf( "%s %s\n", inst, op );
		++code;
	}

	return code;
}

const char * dis_f7(const char * code, unsigned prefix)
{
	int reg = (*code & 0x38) >> 3;
	const char * inst = (reg == 4)?"mul":"div";

	if( (*code & 0xc0) != 0xc0 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 0, op );

		if( prefix & PRE_OS )
			printf( "%sw %s\n", inst, op.c_str() );
		else if( (prefix & REX_W ) == REX_W )
			printf( "%sq %s\n", inst, op.c_str() );
		else
			printf( "%sl %s\n", inst, op.c_str() );
	}
	else
	{
		unsigned reg = *code & 0x07;

		if( (prefix & REX_B ) == REX_B )
			prefix |= REX_R;

		const char * op = regStr( reg, AL, 1, 0, Reg, prefix );

		printf( "%s %s\n", inst, op );
		++code;
	}

	return code;
}

const char * dis_f8(const char * code, unsigned prefix)
{
    printf( "clc\n" );
	return code;
}

const char * dis_f9(const char * code, unsigned prefix)
{
    printf( "stc\n" );
	return code;
}

const char * dis_fa(const char * code, unsigned prefix)
{
	printf( "cli\n" );
	return code;
}

const char * dis_fb(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_fc(const char * code, unsigned prefix)
{
	printf( "cld\n" );
	return code;
}

const char * dis_fd(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_fe(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_ff(const char * code, unsigned prefix)
{
    // ff /6 : push
    if( (*code & 0x38) == 0x30 )
    {
        std::string op;
        code = pop_operand( code, prefix, op );

        printf( "pushq %s\n", op.c_str() );
    }
    else
        TODO

	return code;
}


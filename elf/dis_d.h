
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

		const char * op = regStr( reg, AL, 0, Reg, prefix );

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

		const char * op = regStr( reg, AL, 1, Reg, prefix );

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

		const char * op = regStr( reg, AL, 0, Reg, prefix );

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

		const char * op = regStr( reg, AL, 1, Reg, prefix );

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
	if( ( *code & 0xf0 ) == 0xc0 )
	{
		int r = *code & 0x0f;

		printf( "fadd %%st(%d),%%st\n", r );
		return ++code;
	}
	else if( ( *code & 0xf0 ) == 0xd0 )
	{
		int r = *code & 0x0f;

		if( r < 8 )
			printf( "fcom %%st(%d)\n", r );
		else
			printf( "fcomp %%st(%d)\n", r-8 );

		return ++code;
	}
	else if( ( *code & 0xf0 ) == 0xf0 )
	{
		int r = *code & 0x0f;

		if( r < 8 )
			printf( "fdiv %%st(%d),%%st\n", r );
		else
			printf( "fdivr %%st(%d),%%st\n", r-8 );
		return ++code;
	}
	else
	{
		if( (*code & 0x38 ) == 0x10 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
			printf( "fcoms %s\n", op.c_str() );
		}
		else if( (*code & 0x38 ) == 0x30 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
			printf( "fdivs %s\n", op.c_str() );
		}
		else if( (*code & 0x38 ) == 0x38 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
			printf( "fdivrs %s\n", op.c_str() );
		}
		else if((*code & 0x38 ) == 0x18 )
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
			printf( "fcomps %s\n", op.c_str() );
		}
		else
		{
			std::string op;
			code = memStr( code, prefix, 0, 0, op );
			printf( "fadds %s\n", op.c_str() );
		}

		return code;
	}
}

const char * dis_d9(const char * code, unsigned prefix)
{
	if( *code >= 0xffffffc0 && *code <= 0xffffffc7 )
		printf( "fld %%st(%d)\n", *code - 0xffffffc0 );
	else if( *code == 0xffffffe0 )
		printf( "fchs\n" );
	else if( *code == 0xffffffe1 )
		printf( "fabs\n" );
	else if( *code == 0xffffffe8 )
		printf( "fld1\n" );
	else if( *code == 0xffffffe9 )
		printf( "fldl2t\n" );
	else if( *code == 0xffffffea )
		printf( "fldl2e\n" );
	else if( *code == 0xffffffeb )
		printf( "fldpi\n" );
	else if( *code == 0xffffffec )
		printf( "fldlg2\n" );
	else if( *code == 0xffffffed )
		printf( "fldln2\n" );
	else if( *code == 0xffffffee )
		printf( "fldz\n" );
	else if( *code == 0xfffffff0 )
		printf( "f2xm1\n" );
	else if( *code == 0xfffffff6 )
		printf( "fdecstp\n" );
	else if( *code == 0xfffffff7 )
		printf( "fincstp\n" );
	else if( *code == 0xffffffff )
		printf( "fcos\n" );
	else if((*code & 0x38 ) == 0x00 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 0, op );
		printf( "fld %s\n", op.c_str() );

		return code;
	}
	else if((*code & 0x38 ) == 0x20 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 0, op );
		printf( "fldenv %s\n", op.c_str() );

		return code;
	}
	else if((*code & 0x38 ) == 0x28 )
	{
		std::string op;
		code = memStr( code, prefix, 0, 0, op );
		printf( "fldcw %s\n", op.c_str() );

		return code;
	}
	else
		TODO

	return ++code;
}

const char * dis_da(const char * code, unsigned prefix)
{
	int reg = *code & 0x0f;
	if( ( *code & 0xf0 ) == 0xc0 )
	{
		if( reg < 8 )
			printf( "fcmovb %%st(%d), %%st(0)\n", reg );
		else
			printf( "fcmove %%st(%d), %%st(0)\n", reg-8 );
	}
	else if( ( *code & 0xf0 ) == 0xd0 )
	{
		if( reg < 8 )
			printf( "fcmovbe %%st(%d), %%st(0)\n", reg );
		else
			printf( "fcmovu %%st(%d), %%st(0)\n", reg-8 );
	}
	else
		TODO

	return ++code;
}

const char * dis_db(const char * code, unsigned prefix)
{
	if( *code == 0xffffffe2 )
	{
		printf( "fnclex\n" );
		++code;
	}
	else if( *code == 0xffffffe3 )
	{
		printf( "fninit\n" );
		++code;
	}
	else
	{
		int reg = *code & 0x0f;

		if( ( *code & 0xf0 ) == 0xc0 )
		{
			if( reg < 8 )
				printf( "fcmovnb %%st(%d), %%st(0)\n", reg );
			else
				printf( "fcmovne %%st(%d), %%st(0)\n", reg-8 );
			++code;
		}
		else if( ( *code & 0xf0 ) == 0xd0 )
		{
			if( reg < 8 )
				printf( "fcmovnbe %%st(%d), %%st(0)\n", reg );
			else
				printf( "fcmovnu %%st(%d), %%st(0)\n", reg-8 );
			++code;
		}
		else if( ( *code & 0xf8 ) == 0xe8 )
		{
			printf( "fucomi %%st(%d), %%st(0)\n", reg-8 );
			++code;
		}
		else if( ( *code & 0xf0 ) == 0xf0 )
		{
			printf( "fcomi %%st(%d), %%st(0)\n", reg );
			++code;
		}
		else if( ( *code & 0xe0 ) == 0 )
		{
			std::string op;

			if( (*code & 0x38 ) == 0x10 )
			{
				code = memStr( code, prefix, 0, 0, op );
				printf( "fistl %s\n", op.c_str() );
			}
			else if((*code & 0x38 ) == 0x18)
			{
				code = memStr( code, prefix, 0, 0, op );
				printf( "fistpl %s\n", op.c_str() );
			}
			else
			{
				code = memStr( code, prefix, 0, 0, op );
				printf( "fildl %s\n", op.c_str() );
			}	
		}
		else
			TODO
	}

	return code;
}

const char * dis_dc(const char * code, unsigned prefix)
{
	int r = *code & 0x0f;

	if( (*code & 0xf0) == 0xf0)
		printf( "fdiv %%st,%%st(%d)\n", r );
	else
		printf( "fadd %%st,%%st(%d)\n", r );
	return ++code;
}

const char * dis_dd(const char * code, unsigned prefix)
{
	int r = *code & 0x07;

	printf( "ffree %%st(%d)\n", r );
	return ++code;
}

const char * dis_de(const char * code, unsigned prefix)
{
	if( ( *code & 0xf0 ) == 0xc0 )
	{
		int r = *code & 0x0f;

		printf( "faddp %%st,%%st(%d)\n", r );
		return ++code;
	}
	else if( ( *code & 0xf0 ) == 0xf0 )
	{
		int r = *code & 0x0f;

		printf( "fdivp %%st,%%st(%d)\n", r );
		return ++code;
	}
	else if( ( *code & 0xff ) == 0xd9 )
	{
		printf( "fcompp\n" );
		return ++code;
	}
	else
	{
		std::string op;

		if( (*code & 0x38) == 0x30)
		{
			code = memStr( code, prefix, 0, 0, op );
			printf( "fidiv %s\n", op.c_str() );
		}
		else if( (*code & 0x38) == 0x38)
		{
			code = memStr( code, prefix, 0, 0, op );
			printf( "fidivr %s\n", op.c_str() );
		}
		else if( (*code & 0x38) == 0x10)
		{
			code = memStr( code, prefix, 0, 0, op );
			printf( "ficom %s\n", op.c_str() );
		}
		else if( (*code & 0x38) == 0x18)
		{
			code = memStr( code, prefix, 0, 0, op );
			printf( "ficomp %s\n", op.c_str() );
		}
		else
		{
			code = memStr( code, prefix, 0, 0, op );
			printf( "fiadd %s\n", op.c_str() );
		}
		
		return code;
	}
}

const char * dis_df(const char * code, unsigned prefix)
{
	if( ( *code & 0xf0 ) == 0xf0 )
	{
		int reg = *code & 0x0f;
		printf( "fcomip %%st(0), %%st(%d)\n", reg );
		++code;
	}
	else if( ( *code & 0xf8 ) == 0xe8 )
	{
		int reg = *code & 0x07;
		printf( "fucomip %%st(%d), %%st(0)\n", reg );
		++code;
	}
	else
	{
		int reg = ( *code & 0x38) >> 3;

		std::string op;
		code = memStr( code, prefix, 0, 1, op );

		if( reg == 0 )
			printf( "fild %s\n", op.c_str() );
		else if( reg == 2 )
			printf( "fist %s\n", op.c_str() );
		else if( reg == 3 )
			printf( "fistp %s\n",op.c_str() );
		else if( reg == 4 )
			printf( "fbld %s\n", op.c_str() );
		else // reg == 6
			printf( "fbstp %s\n", op.c_str() );
	}

	return code;
}


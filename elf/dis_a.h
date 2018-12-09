
const char * dis_a0(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_a1(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_a2(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_a3(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_a4(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep " );
	printf( "movsb %%ds:(%%rsi),%%es:(%%rdi)\n" );
	return code;
}

const char * dis_a5(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep " );

	if( prefix & PRE_OS )
		printf( "movsw %%ds:(%%rsi),%%es:(%%rdi)\n" );
	else if( prefix & PRE_OS )
		printf( "movsq %%ds:(%%rsi),%%es:(%%rdi)\n" );
	else
		printf( "movsw %%ds:(%%rsi),%%es:(%%rdi)\n" );

	return code;
}

const char * dis_a6(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "repz " );
	else if( prefix & PRE_NE )
		printf( "repnz " );

	printf( "cmpsb %%es:(%%rdi),%%ds:(%%rsi)\n" );
	return code;
}

const char * dis_a7(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "repz " );
	else if( prefix & PRE_NE )
		printf( "repnz " );

	if(prefix & PRE_OS )
		printf("cmpsw %%es:(%%rdi),%%ds:(%%rsi)\n" );
	else if( prefix & REX_W )
		printf("cmpsq %%es:(%%rdi),%%ds:(%%rsi)\n" );
	else
		printf("cmpsw %%es:(%%rdi),%%ds:(%%rsi)\n" );

	return code;
}

const char * dis_a8(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_a9(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_aa(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep " );

	printf( "stos %%al,%%es:(%%rdi)\n");

	return code;
}

const char * dis_ab(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep " );

	if( prefix & PRE_OS )
		printf( "stos %%ax,%%es:(%%rdi)\n" );
	else if(prefix & REX_W )
		printf( "stos %%rax,%%es:(%%rdi)\n" );
	else
		printf( "stos %%eax,%%es:(%%rdi)\n" );

	return code;
}

const char * dis_ac(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep " );

	printf( "lods %%ds:(%%rsi),%%al\n" );

	return code;
}

const char * dis_ad(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "rep " );

	if( prefix & PRE_OS )
		printf( "lods %%ds:(%%rsi),%%ax\n" );
	else if(prefix & REX_W )
		printf( "lods %%ds:(%%rsi),%%rax\n" );
	else
		printf( "lods %%ds:(%%rsi),%%eax\n" );

	return code;
}

const char * dis_ae(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "repz " );
	else if( prefix & PRE_NE )
		printf( "repnz " );

	printf( "scas %%es:(%%rdi),%%al\n" );
	return code;
}

const char * dis_af(const char * code, unsigned prefix)
{
	if( prefix & PRE_REP )
		printf( "repz " );
	else if( prefix & PRE_NE )
		printf( "repnz " );

	if( prefix & PRE_OS )
		printf( "scas %%es:(%%rdi),%%ax\n" );
	else if( prefix & REX_W )
		printf( "scas %%es:(%%rdi),%%rax\n" );
	else
		printf( "scas %%es:(%%rdi),%%eax\n" );

	return code;
}


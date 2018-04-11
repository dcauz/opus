
const char * dis_f1(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_f4(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_f5(const char * code, unsigned prefix)
{
    printf( "cmc\n" );
	return code;
}

const char * dis_f6(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_f7(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_f8(const char * code, unsigned prefix)
{
    printf( "clc\n" );
	return code;
}

const char * dis_f9(const char * code, unsigned prefix)
{
TODO
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

/*
   ff 33                   pushq  (%rbx)
      00 110 011
   ff 76 20                pushq  0x20(%rsi)
      01 110 110
41 ff 71 22                pushq  0x22(%r9)
      01 110 001
41 ff 75 21                pushq  0x21(%r13)
      01 110 101
42 ff 34 0b                pushq  (%rbx,%r9,1)
      00 110 100 00 001 011
   ff 74 1e 20             pushq  0x20(%rsi,%rbx,1)
      01 110 100 00 100 000
42 ff b4 2e 11 20 00       pushq  0x2011(%rsi,%r13,1)
      10 110 100 disp32
41 ff b4 19 56 34 12       pushq  0x20123456(%r9,%rbx,1)
      10 110 100 00 011 001 disp32
43 ff 74 a9 22             pushq  0x22(%r9,%r13,4)
      01 110 100 10 101 001 disp8
   ff 34 25 01 00 00 00    pushq  0x1
      00 110 100 25 imm32
   ff 34 25 e8 03 00 00    pushq  0x3e8
      00 110 100 25 imm32
   ff 34 25 40 42 0f 00    pushq  0xf4240
      00 110 100 25 imm32
 */
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


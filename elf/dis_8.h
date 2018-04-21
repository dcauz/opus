
// ADD immediate to memory     1000 00sw : mod 000 r/m : immediate data
// CMP immediate with memory   1000 00sw : mod 111 r/m : immediate data
// CMP immediate with register 1000 00sw : 11 111 reg : immediate data
// SUB immediate to memory     1000 00sw : mod 101 r/m : immediate data
//
const char * dis_80(const char * code, unsigned prefix)
{
	if( (*code & 0x38) == 0x28)
	{
		std::string op1;
		std::string op2;
		code = imm_reg_ops( code, prefix, 0, 32, false, op1, op2 );	

		printf( "sub %s,%s\n", op1.c_str(), op2.c_str() ); 
	}
	else if( (*code & 0x38) == 0)
	{
		std::string op1;
		std::string op2;
		code = imm_reg_ops( code, prefix, 0, 32, false, op1, op2 );	

		printf( "add %s,%s\n", op1.c_str(), op2.c_str() ); 
	}
	else if( (*code & 0x38) == 0x38)
	{
		// if imm with reg
		if( (*code & 0xc0 ) == 0xc0 )
		{
			std::string op1;
			std::string op2;
			code = imm_reg_ops( code, prefix, 0, 32, false, op1, op2 );	

			printf( "cmpb %s,%s\n", op1.c_str(), op2.c_str() ); 
		}
		// else imm with mem
		else
		{
			std::string op1;
			std::string op2;
			code = imm_mem_ops( code, prefix, 0, 1, op1, op2 );	

			printf( "cmpb %s,%s\n", op1.c_str(), op2.c_str() ); 
		}
	}
	else
		TODO

	return code;
}

const char * dis_81(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );	

	printf( "sub %s,%s\n", op1.c_str(), op2.c_str() ); 
	return code;
}

const char * dis_82(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = imm_reg_ops( code, prefix, 0, 32, false, op1, op2 );	

	printf( "sub %s,%s\n", op1.c_str(), op2.c_str() ); 
	return code;
}

const char * dis_83(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );	

	if( (code[-2] & 0x38) == 0x28)
		printf( "sub %s,%s\n", op2.c_str(), op1.c_str() ); 
	else if( (code[-2] & 0x38) == 0)
		printf( "add %s,%s\n", op2.c_str(), op1.c_str() ); 
	else if( (code[-2] & 0x38) == 0x38)
		printf( "cmpb %s,%s\n", op1.c_str(), op2.c_str() ); 
	else
		TODO

	return code;
}

const char * dis_84(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );	

	printf( "test %s,%s\n", op1.c_str(), op2.c_str() ); 
	return code;
}

const char * dis_85(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );	

	printf( "test %s,%s\n", op1.c_str(), op2.c_str() ); 
	return code;
}

const char * dis_86(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );	

	printf( "xchg %s,%s\n", op1.c_str(), op2.c_str() ); 
	return code;
	return code;
}

const char * dis_87(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );	

	printf( "xchg %s,%s\n", op1.c_str(), op2.c_str() ); 
	return code;
}

const char * segReg( unsigned prefix )
{
	if( prefix & PRE_26 )	return "%es:";
	if( prefix & PRE_2E )	return "%cs:";

	if( prefix & PRE_36 )	return "%ss:";
	if( prefix & PRE_3E )	return "%ds:";

	if( prefix & PRE_64 )	return "%fs:";
	if( prefix & PRE_65 )	return "%gs:";

	return "";
}

const char * dis_88(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );	

	const char * sr = segReg( prefix );
	printf( "mov %s,%s%s\n", op1.c_str(), sr, op2.c_str() ); 
	return code;
}

// mov
const char * dis_89(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );	

	const char * sr = segReg( prefix );
	printf( "mov %s,%s%s\n", op1.c_str(), sr, op2.c_str() ); 
	return code;
}

// mov
const char * dis_8a(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );	

	const char * sr = segReg( prefix );
	printf( "mov %s%s,%s\n", sr, op2.c_str(), op1.c_str() ); 
	return code;
}

// mov
const char * dis_8b(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;

	if( code[1] == 0x25)
		code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
	else
		code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );	

	const char * sr = segReg( prefix );
	printf( "mov %s%s,%s\n", sr, op2.c_str(), op1.c_str() ); 
	return code;
}

const char * dis_8c(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_8d(const char * code, unsigned prefix)
{
	std::string op1;
	std::string op2;
	code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );	

	printf( "lea %s,%s\n", op2.c_str(), op1.c_str() ); 
	return code;
}

const char * dis_8e(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_8f(const char * code, unsigned prefix)
{
	// 8f /0 : pop
	if( (*code & 0x38) == 0 )
	{
		std::string op;
		code = pop_operand( code, prefix, op );

		printf( "popq %s\n", op.c_str() );
	}
	else
		TODO

	return code;
}


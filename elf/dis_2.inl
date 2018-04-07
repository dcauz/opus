
const char * dis_20(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if(code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );

    printf( "and %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_21(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 1, op1, op2 );

    printf( "and %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_22(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 0, op2, op1 );

    printf( "and %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_23(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );

    printf( "and %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_25(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_27(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_28(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if(code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 0, op1, op2 );

    printf( "sub %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_29(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 1, op1, op2 );

    printf( "sub %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_2a(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 0, op2, op1 );

    printf( "sub %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_2b(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, 0, 1, op2, op1 );

    printf( "sub %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_2c(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_2d(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_2f(const char * code, unsigned prefix)
{
TODO
	return code;
}


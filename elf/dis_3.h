
const char * dis_30(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if(code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );

    printf( "xor %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_31(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );

    printf( "xor %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_32(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );

    printf( "xor %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_33(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

    printf( "xor %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_34(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_35(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_37(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_38(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if(code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 0, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op1, op2 );

    printf( "cmp %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_39(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, true, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op1, op2 );

    printf( "cmp %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_3a(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 8, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 0, op2, op1 );

    printf( "cmp %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_3b(const char * code, unsigned prefix)
{
    std::string op1;
    std::string op2;

    if( code[1] == 0x25)
        code = imm_reg_ops( code, prefix, 1, 32, false, op1, op2 );
    else
        code = mod_reg_rm_ops( code, prefix, OpRegs::AL, 1, op2, op1 );

    printf( "cmp %s,%s\n", op1.c_str(), op2.c_str() );
    return code;
}

const char * dis_3c(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_3d(const char * code, unsigned prefix)
{
TODO
	return code;
}

const char * dis_3f(const char * code, unsigned prefix)
{
TODO
	return code;
}


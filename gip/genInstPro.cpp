#include <cstdio>
#include <iostream>
#include <cstring>
#include <set>
#include <algorithm>
#include <map>
#include "inst.h"


using namespace std;

using Instructions = set<Instruction,Instruction::Cmp>;

bool genInst( const Instructions & );
bool loadDef( FILE *, Instructions & );


int main( int argc, char * argv[] )
{
	if( argc < 2 )
	{
		fprintf( stderr, "usage: %s def-file\n", argv[0] );
		return 1;
	}

	FILE *  fh = fopen( argv[1], "r" );

	if( nullptr == fh )
	{
		fprintf( stderr, "Unable to open def file %s\n", argv[1] );
		return 2;
	}

	try
	{
		Instructions instructions;
		bool rc = loadDef( fh, instructions );
		fclose(fh);

		genInst(instructions);
		return rc?0:3;
	}
	catch( const char * s )
	{
		fprintf( stderr, "Terminated due to exception: %s\n", s );
	}

	return -1;
}

vector<string>	split( const char * line )
{
	const char * cp = line;
	const char * end = cp + strlen(cp);

	vector<string> tokens;

	while(true)
	{
		while( cp < end && isspace(*cp))
			++cp;

		if( cp == end )
			break;

		const char * start = cp;
		while( cp < end && !isspace(*cp))
			++cp;
	
		tokens.emplace_back(start, cp-start);
	}

	return tokens;
}

// Prefixes:
//
// as   
// bhnt 
// bnht 
// cs
// ds
// es
// evex:BRX:R':mm:W:vvvv:pp:z:L':L:b:V':aaa
// lock 
// ne   
// os   
// rep  
// rex:BRWX
// ss
// vex2:R:vvvv:L:pp
// vex3:BRX:mmmm:W:vvvv:L:pp
//
bool createPrefix( unique_ptr<Prefix> & prefix, const std::string & token, int & offset )
{
	static const char * pref [] =
	{ 	"as", "bhnt", "bnht", "cs", 
		"ds", "es",   "lock", "ne", 
		"os", "rep",  "ss", 
	};

	for( int i = 0; i < (sizeof(pref)/sizeof(char *)); ++i )
	{
		if( token==pref[i])
		{
			SimplePrefix * sp = new SimplePrefix();
			sp->setType(token);
			return true;
		}
	}

	if( strncmp( token.c_str(), "evex", 4 ) == 0 )
	{
		Evex * evex = new Evex();
		prefix.reset(evex);

		//      0      1         2       3     
		//      5   9  2  5 7    2  5 7  0 2 4  7
		// evex:BRX:R':mm:W:vvvv:pp:z:L':L:b:V':aaa
		evex->setB(token[5]);
		evex->setR(token[6]);
		evex->setX(token[7]);
		evex->setRp(token.c_str()+ 9);
		evex->setmm(token.c_str() + 12);
		evex->setW(token[15]);
		evex->setvvvv(token.c_str() + 17);
		evex->setpp(token.c_str() + 22);
		evex->setz(token[25]);
		evex->setLp(token.c_str()+ 27);
		evex->setL(token[30]);
		evex->setb(token[32]);
		evex->setVp(token.c_str()+ 34);
		evex->setaaa(token.c_str() + 37);

		return true;
	}
	else if( strncmp( token.c_str(), "rex", 3 ) == 0 )
	{
		Rex * rex = new Rex();
		prefix.reset(rex);

		// rex:BRWX
		if(token.size() == 3)
			return true;
	
		rex->setB(token[4]);
		rex->setR(token[5]);
		rex->setW(token[6]);
		rex->setX(token[7]);
		
		return true;
	}
	else if( strncmp( token.c_str(), "vex2", 4 ) == 0 )
	{
		Vex2 * vex2 = new Vex2();
		prefix.reset(vex2);

		// 0    5 7    2 4
		// vex2:R:vvvv:L:pp
		vex2->setR(token[5]);
		vex2->setvvvv(token.c_str()+7);
		vex2->setL(token[12]);
		vex2->setpp(token.c_str()+14);

		return true;
	}
	else if( strncmp( token.c_str(), "vex3", 4 ) == 0 )
	{
		Vex3 * vex3 = new Vex3();
		prefix.reset(vex3);

		// 0             1      2  
		// 0    5   9    4 6    1 3
		// vex3:RXB:mmmm:W:vvvv:L:pp
		vex3->setB(token[5]);
		vex3->setR(token[5]);
		vex3->setX(token[7]);
		vex3->setmmmm(token.c_str()+9);
		vex3->setW(token[14]);
		vex3->setvvvv(token.c_str()+16);
		vex3->setL(token[21]);
		vex3->setpp(token.c_str()+23);

		return true;
	}

	return false;
}

bool isOpcode(const std::string & token )
{
	if(token.size() != 2 )
		return false;

	char d1 = token[0];
	char d2 = token[1];

	return isxdigit(d1) && isxdigit(d2);
}

// args = reg:<len>:<n> | binary-literal
bool isArgOrConst(const std::string & token )
{
	if(strncmp(token.c_str(), "reg:", 4 ) == 0 )
		return true;
	else if(strncmp(token.c_str(), "imm:", 4 ) == 0 )
		return true;
	else if(strncmp(token.c_str(), "scale:", 6 ) == 0 )
		return true;
	else if(isdigit(token[0]) && ( token[1] == 'b' || token[1] == 'x' ) && (token.size() > 2 ))
		return true;

	return false;
}

bool isOpcodeByte(const std::string & token)
{
	return isxdigit(token[0]) && isxdigit(token[1]) && token.size() == 2;
}

struct InstTree
{
   struct Icmp
   {
        bool operator() ( const Instruction * const & i1, const Instruction * const & i2 )
        {
            auto io1 = i1->opcode().begin();
            auto eo1 = i1->opcode().end();
            auto io2 = i2->opcode().begin();
            auto eo2 = i2->opcode().end();

            while( ( io1 != eo1 ) && ( io2 != eo2 ) )
            {
                if( *io1 < *io2 )
                    return true;
                else if( *io1 > *io2 )
                    return false;

                ++io1;
                ++io2;
            }
            if( io1 != eo1 )
                return false;
            else if( io2 != eo2 )
                return true;

            auto ia1 = i1->args().begin();
            auto ea1 = i1->args().end();
            auto ia2 = i2->args().begin();
            auto ea2 = i2->args().end();

            while( ( ia1 != ea1 ) && ( ia2 != ea2 ) )
            {
				if( ia1->value() < ia2->value() )
					return true;
				else if( ia1->value() > ia2->value() )
					return false;
                ++ia1;
				++ia2;
            }
            if( io1 != eo1 )
                return true;
            return true;
        }
    };

	set<const Instruction *, Icmp> instructions;
	map<uint8_t, unique_ptr<InstTree>> children;
	void dump( const std::string & m ) const;
};

void InstTree::dump( const std::string & m ) const
{
	if( instructions.size() )
	{
		cout <<  m << "Instructions\n";
		for( auto i:instructions)
			cout << m << i->lexium() << endl;
	}

	if( children.size())
	{
		cout <<  m << "Children\n";
		for( auto & p: children )
		{
			cout << m << hex << ((unsigned int)p.first) << ":" << endl;
			p.second->dump( m + "\t" );
		}
	}
}

void genInstBranch( 
	const Instruction * inst, 
	vector<uint8_t>::iterator b, 
	vector<uint8_t>::iterator e, 
	InstTree & tree )
{
	auto rc = tree.children.insert( make_pair(*b, unique_ptr<InstTree>()));

	unique_ptr<InstTree> & up = rc.first->second;
	InstTree * branch;
	if(up)
		branch = up.get();
	else
		up.reset(branch = new InstTree());

	++b;
	if( b == e )
		branch->instructions.insert(inst);
	else
		genInstBranch( inst, b, e, *branch );
}

void genInstTree( const Instructions & insts, InstTree & tree )
{
	for( auto & i:insts)
	{
		auto && prefix = i.prefix();
		genInstBranch( &i, prefix.begin(), prefix.end(), tree );
	}
}

// Syntax of instruction
//
// mnemonic {op} '|' ( prefix )* opcode args
//
// mnemonic = Intel instruction lexium
// 
// op = sr          %es, ..., %gs
//      xb          %al, .., %bh
//      xd          %ax, .., %dil
//      xw          %eax, ..., %edi
//      xq          %rax, ..., %rdi
//      rb          %rNb
//      rd          %rNd
//      rw          %rNw
//      rq          %rN
//      st          %stN
//      mm          %mmN
//      xmm         %xmmN
//      ymm         %ymmN
//      zmm         %zmmN
//      cr          %crN
//      dr          %drN
//      k           %kN
//      addr.disp.rq,     10(%r10)
//      addr.disp.xq,     20(%rdx)
//      addr.disp.rq.rq,  30(%r10,%r11,2)
//      addr.disp.rq.xq,  40(%r10,%rdx,2)
//      addr.disp.xq.rq,  50(%rdx,%r11,2)
//      addr.disp.xq.xq,  60(%rdx,%rax,2)
//      addr.disp.rd,    70(%r10d)
//      addr.disp.xd,    80(%dx)
//      addr.disp.rd.rd, 90(%r10d,%r11d,2)
//      addr.disp.rd.xd, 10(%r10d,%dx,2)
//      addr.disp.xd.rd, 11(%dx,%r11d,2)
//      addr.disp.xd.xd, 12(%dx,%ax,2)
//      addr.disp.rw,    13(%r10w)
//      addr.disp.xw,    14(%edx)
//      addr.disp.rw.rw, 15(%r10w,%r11w,1)
//      addr.disp.rw.xw, 16(%r10w,%edx,2)
//      addr.disp.xw.rw, 17(%edx,%r11w,4)
//      addr.disp.xw.xw, 18(%edx,%eax,8)
//      addr.rq,    (%r10)
//      addr.xq,    (%rdx)
//      addr.rq.rq, (%r10,%r11,2)
//      addr.rq.xq, (%r10,%rdx,2)
//      addr.xq.rq, (%rdx,%r11,2)
//      addr.xq.xq, (%rdx,%rax,2)
//      addr.rd,    (%r10d)
//      addr.xd,    (%dx)
//      addr.rd.rd, (%r10d,%r11d,2)
//      addr.rd.xd, (%r10d,%dx,2)
//      addr.xd.rd, (%dx,%r11d,2)
//      addr.xd.xd, (%dx,%ax,2)
//      addr.rw,    (%r10w)
//      addr.xw,    (%edx)
//      addr.rw.rw, (%r10w,%r11w,1)
//      addr.rw.xw, (%r10w,%edx,2)
//      addr.xw.rw, (%edx,%r11w,4)
//      addr.xw.xw, (%edx,%eax,8)
//
//      imm8   Immediate value
//      imm32  Immediate value
//      disp   Memory addressing displayment as the exponent of power of 2
//
// prefix = rex:BRWX
//          vex2:R:vvvv:L:pp
//          vex3:RXB:mmmm:W:vvvv:L:pp
//			evex:RXB:R':mm:W:vvvv:pp:z:L':L:b:V':aaa
//			es
//			cs
//			ss
//			ds
//			os   
//			as   
//			rep  
//			ne   
//			lock 
//			bhnt 
//			bnht 
//
// opcode = one or more bytes 
// args = reg:<len>:<n> | imm:<len>:<n> | scale:<len>:<n>
//
bool loadDef( FILE * fh, Instructions & insts )
{
	const int BUF_SIZE = 256;

	char buff[BUF_SIZE];

	enum Pstate
	{
		start,
		nmemonicSeen,
		operandSeen,
		sepSeen,
		opcodeSeen,
		argsSeen,
	};

	static const char * opTypes[] =
	{
		"addr.disp32.rd",
		"addr.disp32.rd.rd",
		"addr.disp32.rd.rd.scale",
		"addr.disp32.rd.xd",
		"addr.disp32.rd.xd.scale",
		"addr.disp32.rq",
		"addr.disp32.rq.rq",
		"addr.disp32.rq.rq.scale",
		"addr.disp32.rq.xq",
		"addr.disp32.rq.xq.scale",
		"addr.disp32.xd",
		"addr.disp32.xd.rd",
		"addr.disp32.xd.rd.scale",
		"addr.disp32.xd.xd",
		"addr.disp32.xd.xd.scale",
		"addr.disp32.xq",
		"addr.disp32.xq.rq",
		"addr.disp32.xq.rq.scale",
		"addr.disp32.xq.xq",
		"addr.disp32.xq.xq.scale",

		"addr.disp8.rd",
		"addr.disp8.rd.rd",
		"addr.disp8.rd.rd.scale",
		"addr.disp8.rd.xd",
		"addr.disp8.rd.xd.scale",
		"addr.disp8.rq",
		"addr.disp8.rq.rq",
		"addr.disp8.rq.rq.scale",
		"addr.disp8.rq.xq",
		"addr.disp8.rq.xq.scale",
		"addr.disp8.xd",
		"addr.disp8.xd.rd",
		"addr.disp8.xd.rd.scale",
		"addr.disp8.xd.xd",
		"addr.disp8.xd.xd.scale",
		"addr.disp8.xq",
		"addr.disp8.xq.rq",
		"addr.disp8.xq.rq.scale",
		"addr.disp8.xq.xq",
		"addr.disp8.xq.xq.scale",

		"addr.rd",
		"addr.rd.rd",
		"addr.rd.rd.scale",
		"addr.rd.xd",
		"addr.rd.xd.scale",
		"addr.rq",
		"addr.rq.rq",
		"addr.rq.rq.scale",
		"addr.rq.xq",
		"addr.rq.xq.scale",
		"addr.xd",
		"addr.xd.rd",
		"addr.xd.rd.scale",
		"addr.xd.xd",
		"addr.xd.xd.scale",
		"addr.xq",
		"addr.xq.rq",
		"addr.xq.rq.scale",
		"addr.xq.xq",
		"addr.xq.xq.scale",

		"cr",
		"dr",
		"imm32",
		"imm8",
		"k",
		"mm",
		"rb",
		"rd",
		"rq",
		"rw",
		"sr",
		"st",
		"xb",
		"xb64",
		"xd",
		"xl",
		"xmm",
		"xq",
		"xw",
		"ymm",
		"zmm",
	};

	while( fgets( buff, BUF_SIZE, fh ) )
	{
		vector<string> tokens = split(buff);

		if( tokens.size() > 0 )
		{
			if( tokens.size() > 1 )
			{
				try
				{
					Pstate state = start;		
				
					Nmemonic nm;
	                vector<Otype> 	operands;
	                vector<unique_ptr<Prefix>> 	prefixes;
	                vector<uint8_t> opcode;
	                set<MC_Comp,Instruction::Comp>args;
					int offset = 0;
	
					for( auto & token:tokens)
					{
						switch(state)
						{
						case start:
							nm = Instruction::nmemonic(token);
							state = nmemonicSeen;
							break;
						case nmemonicSeen:
						{
							static auto end = opTypes + sizeof(opTypes)/sizeof(char *);
							auto p = equal_range( opTypes, end, token.c_str(), 
								[]( const char * a, const char * b){ return strcmp(a,b) < 0; } );
							if(p.first < end && token == opTypes[p.first-opTypes])
								operands.push_back(static_cast<Otype>(p.first-opTypes));
							else if( token == "|" )
								state = sepSeen;
							else
								throw "Invalid instruction: Expected operand or separator";
							break;
						}
						case sepSeen:
						{
							unique_ptr<Prefix> prefix;
							if( createPrefix( prefix, token, offset ))
								prefixes.push_back(move(prefix));
							else 
							{
								offset += 8;
								opcode.push_back(strtol( token.c_str(), nullptr, 16 ));
								state = opcodeSeen;
							}
							break;
						}
						case opcodeSeen:
							if(isArgOrConst(token))
							{
								args.insert(MC_Comp(token, offset ));
								state = argsSeen;
							}
							else if(isOpcodeByte(token))
							{
								opcode.push_back(strtol( token.c_str(), nullptr, 16 ));
								offset += 8;
							}
							else
								throw "Invalid instruction: Expected opcode or separator ";
							break;
						case argsSeen:
							if(isArgOrConst(token))
							{
								args.insert(MC_Comp(token, offset ));
							}
							else
								throw "Invalid instruction";
							break;
						}
					}
	
					if( opcode.size() == 0 )
						fprintf( stderr, "%s missing opcode. Ignored\n", Instruction::lexium(nm) );
					else
					{
						insts.insert(
							Instruction( nm,move(operands),move(prefixes),move(opcode),move(args)));
					}
				}
				catch( ... )
				{
					fprintf( stderr, "Failed to parse instruction on %s\n", buff );
				}
			}
		}
	}
}

bool genInstSwitch( 
	const map<uint8_t, unique_ptr<InstTree>> & children, 
	const set<const Instruction *, InstTree::Icmp> * instructions,
	int	level,
	const string & margin )
{
	string innerMargin = margin + "\t";

	cout << margin << "switch(static_cast<uint8_t>(code[" << level << "]))\n";
	cout << margin << "{\n";

	cout << margin << "default:\n";
	if( instructions && instructions->size() )
	{
		for( auto & inst: *instructions )
			cout << innerMargin << "// " << inst->lexium() << endl;
	}
	cout << innerMargin << "return code;\n";

	for( auto & i: children )
	{
		cout << margin << "case 0x" << hex << static_cast<int>(i.first) << ':' << endl;

		if( i.second->children.size() )
			genInstSwitch( i.second.get()->children, &i.second.get()->instructions, level+1, innerMargin );
		else
		{
			if( i.second->instructions.size() == 1 )
			{
				auto & inst = *i.second->instructions.begin();
				cout << inst->decoder( innerMargin ) << endl;
			}
			else if( i.second->instructions.size() > 1 )
			{
				bool first = true;
				for( auto & inst: i.second->instructions )
				{
					if(first)
					{
						cout << innerMargin << "if( " << inst->discriminators() << " )\n" << innerMargin << "{" << endl;
						first = false;
					}
					else
					{
						cout << innerMargin << "else if( " << inst->discriminators() << " )\n" << innerMargin << "{"<<endl;
					}
					cout << inst->decoder( innerMargin+"\t" ) << endl;
					cout << innerMargin << "}"<<endl;
				}
			}
		}

		cout << innerMargin << "break;" << endl;
	}
	cout << margin << "}\n";
}

bool genInst( const Instructions & insts )
{
	InstTree tree;
	genInstTree(insts, tree );

	cout << "#include <string>\n";
	cout << "#include <cstdint>\n";
	cout << "#include <cstdint>\n";
	cout << "#include <cstdio>\n\n";

	cout << "int reg( char c, int offset )" << endl;
	cout << "{" << endl;
    cout << "   uint8_t uc = static_cast<uint8_t>(c);" << endl;
	cout << "	if(offset == 2 )" << endl;
	cout << "		return ( uc & 0x38 ) >> 3;" << endl;
	cout << "	else if(offset == 5)" << endl;
	cout << "		return uc & 0x07;" << endl;
	cout << "}" << endl << endl;
	cout << "\n";
	cout << "std::string indirect( const char * r )\n";
	cout << "{\n";
	cout << "	std::string ans = \"(\";\n";
	cout << "	ans += r;\n";
	cout << "	ans += \")\";\n";
	cout << "	return ans;\n";
	cout << "}\n";
	cout << "std::string immediate( const char * code, int pos, int len )\n";
	cout << "{\n";
	cout << "	if( len == 4 )\n";
	cout << "	{\n";
	cout << "		uint32_t value = *reinterpret_cast<const uint32_t *>(code+pos);\n";
	cout << "		char buff[12];\n";
	cout << "		sprintf( buff, \"0x%x\", value );\n";
	cout << "		return buff;\n";
	cout << "	}\n";
	cout << "	else // len == 1\n";
	cout << "	{\n";
	cout << "		uint32_t value = *reinterpret_cast<const uint8_t *>(code+pos);\n";
	cout << "		char buff[12];\n";
	cout << "		sprintf( buff, \"0x%x\", value );\n";
	cout << "		return buff;\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "std::string scale( const char * code, int pos, int offset, int len )\n";
	cout << "{\n";
	cout << "	if( len == 2 )\n";
	cout << "	{\n";
	cout << "		uint8_t value = *reinterpret_cast<const uint8_t *>(code+pos);\n";
	cout << "       value = ( value & 0xc0 ) >> 6;\n";
	cout << "		char buff[12];\n";
	cout << "		sprintf( buff, \"%x\", 1 << value );\n";
	cout << "		return buff;\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * xd_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%eax\";\n";
	cout << "	case 1: return \"%ecx\";\n";
	cout << "	case 2: return \"%edx\";\n";
	cout << "	case 3: return \"%ebx\";\n";
	cout << "	case 4: return \"%esp\";\n";
	cout << "	case 5: return \"%ebp\";\n";
	cout << "	case 6: return \"%esi\";\n";
	cout << "	case 7: return \"%edi\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * s_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%es\"; \n";
	cout << "	case 1: return \"%cs\";\n";
	cout << "	case 2: return \"%ss\"; \n";
	cout << "	case 3: return \"%ds\";\n";
	cout << "	case 4: return \"%fs\"; \n";
	cout << "	case 5: return \"%gs\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * xb_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%al\";\n";
	cout << "	case 1: return \"%cl\";\n";
	cout << "	case 2: return \"%dl\";\n";
	cout << "	case 3: return \"%bl\";\n";
	cout << "	case 4: return \"%ah\";\n";
	cout << "	case 5: return \"%ch\";\n";
	cout << "	case 6: return \"%dh\";\n";
	cout << "	case 7: return \"%bh\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * xb64_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%al\";\n";
	cout << "	case 1: return \"%cl\";\n";
	cout << "	case 2: return \"%dl\";\n";
	cout << "	case 3: return \"%bl\";\n";
	cout << "	case 4: return \"%spl\";\n";
	cout << "	case 5: return \"%bpl\";\n";
	cout << "	case 6: return \"%sil\";\n";
	cout << "	case 7: return \"%dil\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * xl_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 4: return \"%spl\";\n";
	cout << "	case 5: return \"%bpl\";\n";
	cout << "	case 6: return \"%sil\";\n";
	cout << "	case 7: return \"%dil\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * rb_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%r8b\";\n";
	cout << "	case 1: return \"%r9b\";\n";
	cout << "	case 2: return \"%r10b\";\n";
	cout << "	case 3: return \"%r11b\";\n";
	cout << "	case 4: return \"%r12b\";\n";
	cout << "	case 5: return \"%r13b\";\n";
	cout << "	case 6: return \"%r14b\";\n";
	cout << "	case 7: return \"%r15b\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * rw_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%r8w\";\n";
	cout << "	case 1: return \"%r9w\";\n";
	cout << "	case 2: return \"%r10w\";\n";
	cout << "	case 3: return \"%r11w\";\n";
	cout << "	case 4: return \"%r12w\";\n";
	cout << "	case 5: return \"%r13w\";\n";
	cout << "	case 6: return \"%r14w\";\n";
	cout << "	case 7: return \"%r15w\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * xw_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%ax\";\n";
	cout << "	case 1: return \"%cx\";\n";
	cout << "	case 2: return \"%dx\";\n";
	cout << "	case 3: return \"%bx\";\n";
	cout << "	case 4: return \"%sp\"; \n";
	cout << "	case 5: return \"%bp\";\n";
	cout << "	case 6: return \"%si\"; \n";
	cout << "	case 7: return \"%di\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * rd_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%r8d\";\n";
	cout << "	case 1: return \"%r9d\";\n";
	cout << "	case 2: return \"%r10d\";\n";
	cout << "	case 3: return \"%r11d\";\n";
	cout << "	case 4: return \"%r12d\";\n";
	cout << "	case 5: return \"%r13d\";\n";
	cout << "	case 6: return \"%r14d\";\n";
	cout << "	case 7: return \"%r15d\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * xq_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%rax\";\n";
	cout << "	case 1: return \"%rcx\";\n";
	cout << "	case 2: return \"%rdx\";\n";
	cout << "	case 3: return \"%rbx\";\n";
	cout << "	case 4: return \"%rsp\"; \n";
	cout << "	case 5: return \"%rbp\";\n";
	cout << "	case 6: return \"%rsi\"; \n";
	cout << "	case 7: return \"%rdi\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * rq_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0:  return \"%r8\";\n";
	cout << "	case 1:  return \"%r9\";\n";
	cout << "	case 2: return \"%r10\";\n";
	cout << "	case 3: return \"%r11\";\n";
	cout << "	case 4: return \"%r12\";\n";
	cout << "	case 5: return \"%r13\";\n";
	cout << "	case 6: return \"%r14\";\n";
	cout << "	case 7: return \"%r15\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * st_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%st0\";\n";
	cout << "	case 1: return \"%st1\";\n";
	cout << "	case 2: return \"%st2\"; \n";
	cout << "	case 3: return \"%st3\";\n";
	cout << "	case 4: return \"%st4\"; \n";
	cout << "	case 5: return \"%st5\";\n";
	cout << "	case 6: return \"%st6\"; \n";
	cout << "	case 7: return \"%st7\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * mm_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%mm0\";\n";
	cout << "	case 1: return \"%mm1\";\n";
	cout << "	case 2: return \"%mm2\";\n";
	cout << "	case 3: return \"%mm3\";\n";
	cout << "	case 4: return \"%mm4\";\n";
	cout << "	case 5: return \"%mm5\";\n";
	cout << "	case 6: return \"%mm6\";\n";
	cout << "	case 7: return \"%mm7\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * xmm_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0:  return \"%xmm0\";\n";
	cout << "	case 1:  return \"%xmm1\";\n";
	cout << "	case 2:  return \"%xmm2\";\n";
	cout << "	case 3:  return \"%xmm3\";\n";
	cout << "	case 4:  return \"%xmm4\";\n";
	cout << "	case 5:  return \"%xmm5\";\n";
	cout << "	case 6:  return \"%xmm6\";\n";
	cout << "	case 7:  return \"%xmm7\";\n";
	cout << "	case 8:  return \"%xmm8\";\n";
	cout << "	case 9:  return \"%xmm9\";\n";
	cout << "	case 10: return \"%xmm10\";\n";
	cout << "	case 11: return \"%xmm11\";\n";
	cout << "	case 12: return \"%xmm12\";\n";
	cout << "	case 13: return \"%xmm13\";\n";
	cout << "	case 14: return \"%xmm14\";\n";
	cout << "	case 15: return \"%xmm15\";\n";
	cout << "	case 16: return \"%xmm16\";\n";
	cout << "	case 17: return \"%xmm17\";\n";
	cout << "	case 18: return \"%xmm18\";\n";
	cout << "	case 19: return \"%xmm19\";\n";
	cout << "	case 20: return \"%xmm20\";\n";
	cout << "	case 21: return \"%xmm21\";\n";
	cout << "	case 22: return \"%xmm22\";\n";
	cout << "	case 23: return \"%xmm23\";\n";
	cout << "	case 24: return \"%xmm24\";\n";
	cout << "	case 25: return \"%xmm25\";\n";
	cout << "	case 26: return \"%xmm26\";\n";
	cout << "	case 27: return \"%xmm27\";\n";
	cout << "	case 28: return \"%xmm28\";\n";
	cout << "	case 29: return \"%xmm29\";\n";
	cout << "	case 30: return \"%xmm30\";\n";
	cout << "	case 31: return \"%xmm31\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * ymm_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0:  return \"%ymm0\";\n";
	cout << "	case 1:  return \"%ymm1\";\n";
	cout << "	case 2:  return \"%ymm2\";\n";
	cout << "	case 3:  return \"%ymm3\";\n";
	cout << "	case 4:  return \"%ymm4\";\n";
	cout << "	case 5:  return \"%ymm5\";\n";
	cout << "	case 6:  return \"%ymm6\";\n";
	cout << "	case 7:  return \"%ymm7\";\n";
	cout << "	case 8:  return \"%ymm8\";\n";
	cout << "	case 9:  return \"%ymm9\";\n";
	cout << "	case 10: return \"%ymm10\";\n";
	cout << "	case 11: return \"%ymm11\";\n";
	cout << "	case 12: return \"%ymm12\";\n";
	cout << "	case 13: return \"%ymm13\";\n";
	cout << "	case 14: return \"%ymm14\";\n";
	cout << "	case 15: return \"%ymm15\";\n";
	cout << "	case 16: return \"%ymm16\";\n";
	cout << "	case 17: return \"%ymm17\";\n";
	cout << "	case 18: return \"%ymm18\";\n";
	cout << "	case 19: return \"%ymm19\";\n";
	cout << "	case 20: return \"%ymm20\";\n";
	cout << "	case 21: return \"%ymm21\";\n";
	cout << "	case 22: return \"%ymm22\";\n";
	cout << "	case 23: return \"%ymm23\";\n";
	cout << "	case 24: return \"%ymm24\";\n";
	cout << "	case 25: return \"%ymm25\";\n";
	cout << "	case 26: return \"%ymm26\";\n";
	cout << "	case 27: return \"%ymm27\";\n";
	cout << "	case 28: return \"%ymm28\";\n";
	cout << "	case 29: return \"%ymm29\";\n";
	cout << "	case 30: return \"%ymm30\";\n";
	cout << "	case 31: return \"%ymm31\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * zmm_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0:  return \"%zmm0\";\n";
	cout << "	case 1:  return \"%zmm1\";\n";
	cout << "	case 2:  return \"%zmm2\";\n";
	cout << "	case 3:  return \"%zmm3\";\n";
	cout << "	case 4:  return \"%zmm4\";\n";
	cout << "	case 5:  return \"%zmm5\";\n";
	cout << "	case 6:  return \"%zmm6\";\n";
	cout << "	case 7:  return \"%zmm7\";\n";
	cout << "	case 8:  return \"%zmm8\";\n";
	cout << "	case 9:  return \"%zmm9\";\n";
	cout << "	case 10: return \"%zmm10\";\n";
	cout << "	case 11: return \"%zmm11\";\n";
	cout << "	case 12: return \"%zmm12\";\n";
	cout << "	case 13: return \"%zmm13\";\n";
	cout << "	case 14: return \"%zmm14\";\n";
	cout << "	case 15: return \"%zmm15\";\n";
	cout << "	case 16: return \"%zmm16\";\n";
	cout << "	case 17: return \"%zmm17\";\n";
	cout << "	case 18: return \"%zmm18\";\n";
	cout << "	case 19: return \"%zmm19\";\n";
	cout << "	case 20: return \"%zmm20\";\n";
	cout << "	case 21: return \"%zmm21\";\n";
	cout << "	case 22: return \"%zmm22\";\n";
	cout << "	case 23: return \"%zmm23\";\n";
	cout << "	case 24: return \"%zmm24\";\n";
	cout << "	case 25: return \"%zmm25\";\n";
	cout << "	case 26: return \"%zmm26\";\n";
	cout << "	case 27: return \"%zmm27\";\n";
	cout << "	case 28: return \"%zmm28\";\n";
	cout << "	case 29: return \"%zmm29\";\n";
	cout << "	case 30: return \"%zmm30\";\n";
	cout << "	case 31: return \"%zmm31\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * cr_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0:   return \"%cr0\";\n";
	cout << "	case 1:   return \"%cr1\";\n";
	cout << "	case 2:   return \"%cr2\";\n";
	cout << "	case 3:   return \"%cr3\";\n";
	cout << "	case 4:   return \"%cr4\";\n";
	cout << "	case 5:   return \"%cr5\";\n";
	cout << "	case 6:   return \"%cr6\";\n";
	cout << "	case 7:   return \"%cr7\";\n";
	cout << "	case 8:   return \"%cr8\";\n";
	cout << "	case 9:   return \"%cr9\";\n";
	cout << "	case 10:  return \"%cr10\";\n";
	cout << "	case 11:  return \"%cr11\";\n";
	cout << "	case 12:  return \"%cr12\";\n";
	cout << "	case 13:  return \"%cr13\";\n";
	cout << "	case 14:  return \"%cr14\";\n";
	cout << "	case 15:  return \"%cr15\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * db_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0:   return \"%db0\";\n";
	cout << "	case 1:   return \"%db1\";\n";
	cout << "	case 2:   return \"%db2\";\n";
	cout << "	case 3:   return \"%db3\";\n";
	cout << "	case 4:   return \"%db4\";\n";
	cout << "	case 5:   return \"%db5\";\n";
	cout << "	case 6:   return \"%db6\";\n";
	cout << "	case 7:   return \"%db7\";\n";
	cout << "	case 8:   return \"%db8\";\n";
	cout << "	case 9:   return \"%db9\";\n";
	cout << "	case 10:  return \"%db10\";\n";
	cout << "	case 11:  return \"%db11\";\n";
	cout << "	case 12:  return \"%db12\";\n";
	cout << "	case 13:  return \"%db13\";\n";
	cout << "	case 14:  return \"%db14\";\n";
	cout << "	case 15:  return \"%db15\";\n";
	cout << "	}\n";
	cout << "}\n";
	cout << "\n";
	cout << "const char * k_reg( int r )\n";
	cout << "{\n";
	cout << "	switch(r)\n";
	cout << "	{\n";
	cout << "	case 0: return \"%k0\";\n";
	cout << "	case 1: return \"%k1\";\n";
	cout << "	case 2: return \"%k2\";\n";
	cout << "	case 3: return \"%k3\";\n";
	cout << "	case 4: return \"%k4\";\n";
	cout << "	case 5: return \"%k5\";\n";
	cout << "	case 6: return \"%k6\";\n";
	cout << "	case 7: return \"%k7\";\n";
	cout << "	}\n";
	cout << "}\n\n";

	cout << "const char * disCode( const char * code )\n";
	cout << "{\n";

	genInstSwitch( tree.children, nullptr, 0, "\t" );

	cout << "	return code;\n";
	cout << "}\n";
	
	return true;
}

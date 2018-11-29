#include <cstdio>
#include <iostream>
#include <cstring>
#include <set>
#include <algorithm>
#include "inst.h"


using namespace std;

using Instructions = multiset<Instruction>;

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


	Instructions instructions;
	bool rc = loadDef( fh, instructions );
	fclose(fh);

	genInst(instructions);

	return rc?0:3;
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
bool createPrefix( unique_ptr<Prefix> & prefix, const std::string & token )
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
bool isArg(const std::string & token )
{
	if(strncmp(token.c_str(), "reg:", 4 ) == 0 )
		return true;
	else if(strncmp(token.c_str(), "imm:", 4 ) == 0 )
		return true;
	return false;
}

// Syntax of instruction
//
// mnemonic {op} '|' ( prefix )* opcode args
//
// mnemonic = Intel instruction lexium
// 
// op = sr      %es, ..., %gs
//      xb      %al, .., %bh
//      xd      %ax, .., %dil
//      xw      %eax, ..., %edi
//      x       %rax, ..., %rdi
//      rb      %rNb
//      rd      %rNd
//      rw      %rNw
//      r       %rN
//      st      %stN
//      mm      %mmN
//      xmm     %xmmN
//      ymm     %ymmN
//      zmm     %zmmN
//      cr      %crN
//      dr      %drN
//      k       %kN
//
//      off     Memory addressing offset 
//      imm     Immediate value
//      disp    Memory addressing displayment as the exponent of power of 2
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
// args = reg:<len>:<n> | imm:<len>:<n>
//
bool loadDef( FILE * fh, Instructions & insts )
{
	const int BUF_SIZE = 256;

	char buff[BUF_SIZE];

	enum Pstate
	{
		start,
		nmemonicSeen,
		sepSeen,
		opcodeSeen,
		argsSeen,
	};

	static const char * opTypes[] =
	{
		"cr",
		"disp",
		"dr",
		"imm",
		"k",
		"mm",
		"off",
		"sr",
		"r",
		"rb",
		"rd",
		"rw",
		"st",
		"x",
		"xb",
		"xd",
		"xmm",
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
	                vector<MC_Comp> args;
	
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
							static auto end = opTypes + sizeof(opTypes);
							auto p = equal_range( opTypes, end, token.c_str() );
	
							if(p.first < end )
								operands.push_back(static_cast<Otype>(p.first-opTypes));
							else if( token == "|" )
								state = sepSeen;
							else
								throw "Invalid instruction. Missing separator";
							break;
						}
						case sepSeen:
						{
							unique_ptr<Prefix> prefix;
							if( createPrefix( prefix, token ))
								prefixes.push_back(move(prefix));
							else 
							{
								opcode.push_back(strtol( token.c_str(), nullptr, 16 ));
								state = opcodeSeen;
							}
							break;
						}
						case opcodeSeen:
							if(isOpcode(token))
								opcode.push_back(strtol( token.c_str(), nullptr, 16 ));
							else if(isArg(token))
							{
								args.push_back(MC_Comp(token));
								state = argsSeen;
							}
							else
								throw "Invalid instruction";
							break;
						case argsSeen:
							if(isArg(token))
								args.push_back(MC_Comp(token));
							else
								throw "Invalid instruction";
							break;
						}
					}
	
					if( opcode.size() == 0 )
						fprintf( stderr, "%s missing opcode. Ignored\n", Instruction::lexium(nm) );
					else
					{
						Instruction inst( nm,move(operands),move(prefixes),move(opcode),move(args));
						insts.insert(move(inst));
					}
				}
				catch( ... )
				{
					fprintf( stderr, "Failed to parse instruction\n" );
				}
			}
		}
	}
}

bool genInst( const Instructions & insts )
{
	cout << "const char * disCode( const char * code )\n";
	cout << "{\n";

	cout << "	switch(*code)\n";
	cout << "	{\n";
	cout << "	default:\n";
	cout << "		return code;\n";
	cout << "	}\n";
	
	cout << "	return code;\n";
	cout << "}\n";
	
	return true;
}

#pragma once

#include <elf.h>
#include <cstdio>
#include <vector>


bool parse64ProgHeaderTable( 
	FILE * fh, 
	const Elf64_Off	& e_phoff,
	const Elf64_Half & e_phentsize, 
	const Elf64_Half & e_phnum,
	std::vector<Elf64_Phdr> & );

bool parse32ProgHeaderTable( 
	FILE * fh, 
	const Elf32_Off	& e_phoff,
	const Elf32_Half & e_phentsize, 
	const Elf32_Half & e_phnum,
	std::vector<Elf32_Phdr> & );

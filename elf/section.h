#pragma once

#include <elf.h>
#include <cstdio>
#include <vector>


bool parse64SectHeaderTable( 
	FILE * fh, 
	const Elf64_Off	& e_shoff, 
	const Elf64_Half& e_shentsize, 
	const Elf64_Half& e_shnum,
	const Elf64_Half& e_shstrndx,
	std::vector<Elf64_Shdr> & );

bool parse32SectHeaderTable( 
	FILE * fh, 
	const Elf32_Off	& e_shoff, 
	const Elf32_Half& e_shentsize, 
	const Elf32_Half& e_shnum,
	const Elf32_Half& e_shstrndx,
	std::vector<Elf32_Shdr> & );

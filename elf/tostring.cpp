#include <elf.h>
#include "tostring.h"


const char * pTypeToStr( unsigned t )
{
	switch(t)
	{
	case PT_NULL:        return "";
	case PT_LOAD:        return "Loadable program segment";
	case PT_DYNAMIC:     return "Dynamic linking information";
	case PT_INTERP:      return "Program interpreter";
	case PT_NOTE:        return "Auxiliary information";
	case PT_SHLIB:       return "Reserved";
	case PT_PHDR:        return "Entry for header table itself";
	case PT_TLS:         return "Thread-local storage segment";
	case PT_NUM:         return "Number of defined types";
	case PT_GNU_EH_FRAME:return "GCC .eh_frame_hdr segment";
	case PT_GNU_STACK:   return "Indicates stack executability";
	case PT_GNU_RELRO:   return "Read-only after relocation";
	case PT_SUNWBSS:     return "Sun Specific segment";
	case PT_SUNWSTACK:   return "Sun Stack segment";
	}

	return "UNKNOWN";
}

const char * typeToStr( unsigned t )
{
	switch(t)
	{
	case ET_NONE:	return "NONE";
	case ET_REL:	return "Relocatable";
	case ET_EXEC:	return "Executable";
	case ET_DYN:	return "Shared object";
	case ET_CORE:	return "Core"; 
	}

	static char buff[32];

	if( t >= ET_LOOS && t < ET_HIOS )
	{
		sprintf( buff, "OS version %d\n", t );
	}
	else if( t >= ET_LOPROC && t < ET_HIPROC)
	{
		sprintf( buff, "Processor version %d\n", t );
	}
	else
		sprintf( buff, "Undefined: %d\n", t );
	return buff;
}

const char * machineToStr( unsigned mac )
{
	switch(mac)
	{
	case EM_NONE:		return "NONE";
	case EM_M32:		return "AT&T WE 32100";
	case EM_SPARC:		return "SUN SPARC";
	case EM_386:		return "Intel 80386";
	case EM_68K:		return "Motorola m68k family";
	case EM_88K:		return "Motorola m88k family";
	case EM_860:		return "Intel 80860";
	case EM_MIPS:		return "MIPS R3000 big-endian";
	case EM_S370:		return "IBM System/370";
	case EM_MIPS_RS3_LE:return "MIPS R3000 little-endian";
	case EM_PARISC:		return "HPPA";
	case EM_VPP500:		return "Fujitsu VPP500";
	case EM_SPARC32PLUS:return "Sun's \"v8plus\"";
	case EM_960:		return "Intel 80960";
	case EM_PPC:		return "PowerPC";
	case EM_PPC64:		return "PowerPC 64-bit";
	case EM_S390:		return "IBM S390";
	case EM_V800:		return "NEC V800 series";
	case EM_FR20:		return "Fujitsu FR20";
	case EM_RH32:		return "TRW RH-32";
	case EM_RCE:		return "Motorola RCE";
	case EM_ARM:		return "ARM";
	case EM_FAKE_ALPHA:	return "Digital Alpha";
	case EM_SH:			return "Hitachi SH";
	case EM_SPARCV9:	return "SPARC v9 64-bit";
	case EM_TRICORE:	return "Siemens Tricore";
	case EM_ARC:		return "Argonaut RISC Core";
	case EM_H8_300:		return "Hitachi H8/300";
	case EM_H8_300H:	return "Hitachi H8/300H";
	case EM_H8S:		return "Hitachi H8S";
	case EM_H8_500:		return "Hitachi H8/500";
	case EM_IA_64:		return "Intel Merced";
	case EM_MIPS_X:		return "Stanford MIPS-X";
	case EM_COLDFIRE:	return "Motorola Coldfire";
	case EM_68HC12:		return "Motorola M68HC12";
	case EM_MMA:		return "Fujitsu MMA Multimedia Accelerato";
	case EM_PCP:		return "Siemens PCP";
	case EM_NCPU:		return "Sony nCPU embeeded RISC";
	case EM_NDR1:		return "Denso NDR1 microprocessor";
	case EM_STARCORE:	return "Motorola Start*Core processor";
	case EM_ME16:		return "Toyota ME16 processor";
	case EM_ST100:		return "STMicroelectronic ST100 processor";
	case EM_TINYJ:		return "Advanced Logic Corp. Tinyj emb.fa";
	case EM_X86_64:		return "AMD x86-64 architecture";
	case EM_PDSP:		return "Sony DSP Processor";
	case EM_FX66:		return "Siemens FX66 microcontroller";
	case EM_ST9PLUS:	return "STMicroelectronics ST9+ 8/16 mc";
	case EM_ST7:		return "STmicroelectronics ST7 8 bit mc";
	case EM_68HC16:		return "Motorola MC68HC16 microcontroller";
	case EM_68HC11:		return "Motorola MC68HC11 microcontroller";
	case EM_68HC08:		return "Motorola MC68HC08 microcontroller";
	case EM_68HC05:		return "Motorola MC68HC05 microcontroller";
	case EM_SVX:		return "Silicon Graphics SVx";
	case EM_ST19:		return "STMicroelectronics ST19 8 bit mc";
	case EM_VAX:		return "Digital VAX";
	case EM_CRIS:		return "Axis Communications 32-bit embedded processor";
	case EM_JAVELIN:	return "Infineon Technologies 32-bit embedded processor";
	case EM_FIREPATH:	return "Element 14 64-bit DSP Processor";
	case EM_ZSP:		return "LSI Logic 16-bit DSP Processor";
	case EM_MMIX:		return "Donald Knuth's educational 64-bit processor";
	case EM_HUANY:		return "Harvard University machine-independent object files";
	case EM_PRISM:		return "SiTera Prism";
	case EM_AVR:		return "Atmel AVR 8-bit microcontroller";
	case EM_FR30:		return "Fujitsu FR30";
	case EM_D10V:		return "Mitsubishi D10V";
	case EM_D30V:		return "Mitsubishi D30V";
	case EM_V850:		return "NEC v850";
	case EM_M32R:		return "Mitsubishi M32R";
	case EM_MN10300:	return "Matsushita MN10300";
	case EM_MN10200:	return "Matsushita MN10200";
	case EM_PJ:			return "picoJava";
	case EM_OPENRISC:	return "OpenRISC 32-bit embedded processor";
	case EM_ARC_A5:		return "ARC Cores Tangent-A5";
	case EM_XTENSA:		return "Tensilica Xtensa Architecture";
	case EM_ALTERA_NIOS2:return "Altera Nios II";
	case EM_AARCH64:	return "ARM AARCH64";
	case EM_TILEPRO:	return "Tilera TILEPro";
	case EM_MICROBLAZE:	return "Xilinx MicroBlaze";
	case EM_TILEGX:		return "Tilera TILE-Gx";
	case EM_ALPHA:		return "Alpha";
	}

	static char buff[32];
	sprintf( buff, "Unknown: %d\n", mac );
}

std::string pFlagToStr( unsigned f )
{
	std::string ans;

	if( f & PF_X )
		ans = "Executable";
	if( f & PF_W )
	{
		if(ans.size() ) ans += "|";
		ans += "Writable";
	}
	if( f & PF_R )
	{
		if(ans.size() ) ans += "|";
		ans += "Readable";
	}

	return ans;
}

const char * shTypeToStr( unsigned t )
{
	switch(t)
	{
	case SHT_NULL:			return "UNUSED";
	case SHT_PROGBITS:		return "Program data";
	case SHT_SYMTAB:		return "Symbol table";
	case SHT_STRTAB:		return "String table";
	case SHT_RELA:			return "Relocation entries with addends";
	case SHT_HASH:			return "Symbol hash table";
	case SHT_DYNAMIC:		return "Dynamic linking information";
	case SHT_NOTE:			return "Notes";
	case SHT_NOBITS:		return "Program space with no data (bss)";
	case SHT_REL:			return "Relocation entries, no addends";
	case SHT_SHLIB:			return "Reserved";
	case SHT_DYNSYM:		return "Dynamic linker symbol table";
	case SHT_INIT_ARRAY:	return "Array of constructors";
	case SHT_FINI_ARRAY:	return "Array of destructors";
	case SHT_PREINIT_ARRAY:	return "Array of pre-constructors";
	case SHT_GROUP:			return "Section group";
	case SHT_SYMTAB_SHNDX:	return "Extended section indeces";
	case SHT_GNU_ATTRIBUTES:return "Object attributes";
	case SHT_GNU_HASH:		return "GNU-style hash table";
	case SHT_GNU_LIBLIST:	return "Prelink library list";
	case SHT_CHECKSUM:		return "Checksum for DSO content";
	case SHT_SUNW_move:		return "SUNW_move";
	case SHT_SUNW_COMDAT:	return "SUNW_COMDAT";
	case SHT_SUNW_syminfo:	return "SUNW_syminfo";
	case SHT_GNU_verdef:	return "Version definition section";
	case SHT_GNU_verneed:	return "Version needs section";
	case SHT_GNU_versym:	return "Version symbol table";
	}

	static char buff[32];
	if( t >= SHT_LOSUNW && t <= SHT_HISUNW )
		sprintf( buff, "Sun-specific: %u", t );
	else if( t >= SHT_LOOS && t <= SHT_HIOS )
		sprintf( buff, "OS-specific: %u", t );
	else if( t >= SHT_LOPROC && t <= SHT_HIPROC )
		sprintf( buff, "Processor-specific: %u", t );
	else if(t>= SHT_LOUSER && t <= SHT_HIUSER)
		sprintf( buff, "app specific: %u", t );
	else
		sprintf( buff, "unknown: %u", t );

	return buff;
}

std::string shFlagToStr( unsigned f )
{
	std::string ans;

	if( f & SHF_ALLOC )
		ans = "OCCUPIES MEMORY";
	if( f & SHF_WRITE )
	{
		if(ans.size()) ans += "|";
		ans += "Writable";
	}
	if( f & SHF_EXECINSTR)
	{
		if(ans.size()) ans += "|";
		ans += "Executable";
	}
	if( f & SHF_MERGE)
	{
		if(ans.size()) ans += "|";
		ans += "Might be merged";
	}
	if( f & SHF_STRINGS)
	{
		if(ans.size()) ans += "|";
		ans += 	"Nul-terminated strings";
	}
	if( f & SHF_INFO_LINK)
	{
		if(ans.size()) ans += "|";
		ans += "Contains SHT index";
	}
	if( f & SHF_LINK_ORDER)
	{
		if(ans.size()) ans += "|";
		ans += "Preserve order after combining";
	}
	if( f & SHF_OS_NONCONFORMING)
	{
		if(ans.size()) ans += "|";
		ans += "Non-standard OS specific handling";
	}
	if( f & SHF_GROUP)
	{
		if(ans.size()) ans += "|";
		ans += "Member of a group";
	}
	if( f & SHF_TLS)
	{
		if(ans.size()) ans += "|";
		ans += "Thread-Local Data";
	}
	if( f & SHF_COMPRESSED)
	{
		if(ans.size()) ans += "|";
		ans += "Compressed data";
	}

	return ans;
}

void dump( const char * buff, unsigned size )
{
	if( nullptr == buff )
		return;

	unsigned i = 0; 
	if( size >= 16 )
	{
		for( ; i < (size-15); i += 16 )
		{
			fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x  "
							"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\n",
				0xff & buff[i+0],  0xff & buff[i+1],  0xff & buff[i+2],  0xff & buff[i+3],
				0xff & buff[i+4],  0xff & buff[i+5],  0xff & buff[i+6],  0xff & buff[i+7],
				0xff & buff[i+8],  0xff & buff[i+9],  0xff & buff[i+10], 0xff & buff[i+11],
				0xff & buff[i+12], 0xff & buff[i+13], 0xff & buff[i+14], 0xff & buff[i+15] );
		}
	}
	switch(size-i)
	{
	case 0:
	case 1:
		fprintf( stdout,"%2.2x\n", 0xff & buff[i+0]);
		break;
	case 2:
		fprintf( stdout,"%2.2x %2.2x\n", 0xff & buff[i+0],  0xff & buff[i+1]);
		break;
	case 3:
		fprintf( stdout,"%2.2x %2.2x %2.2x\n", 0xff & buff[i+0], 0xff & buff[i+1],0xff & buff[i+2]);
		break;
	case 4:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0], 0xff & buff[i+1], 0xff & buff[i+2], 0xff & buff[i+3]);
		break;
	case 5:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0], 0xff & buff[i+1], 0xff & buff[i+2], 0xff & buff[i+3],
			0xff & buff[i+4]);
		break;
	case 6:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0], 0xff & buff[i+1], 0xff & buff[i+2], 0xff & buff[i+3],
			0xff & buff[i+4], 0xff & buff[i+5]);
		break;
	case 7:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0], 0xff & buff[i+1], 0xff & buff[i+2], 0xff & buff[i+3],
			0xff & buff[i+4], 0xff & buff[i+5], 0xff & buff[i+6]);
		break;
	case 8:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0], 0xff & buff[i+1], 0xff & buff[i+2], 0xff & buff[i+3],
			0xff & buff[i+4], 0xff & buff[i+5], 0xff & buff[i+6], 0xff & buff[i+7]);
		break;
	case 9:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x  %2.2x\n",
			0xff & buff[i+0], 0xff & buff[i+1], 0xff & buff[i+2], 0xff & buff[i+3],
			0xff & buff[i+4], 0xff & buff[i+5], 0xff & buff[i+6], 0xff & buff[i+7],
			0xff & buff[i+8] );
		break;
	case 10:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x  %2.2x %2.2x\n",
			0xff & buff[i+0], 0xff & buff[i+1], 0xff & buff[i+2], 0xff & buff[i+3],
			0xff & buff[i+4], 0xff & buff[i+5], 0xff & buff[i+6], 0xff & buff[i+7],
			0xff & buff[i+8], 0xff & buff[i+9] );
		break;
	case 11:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x  %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0],  0xff & buff[i+1],  0xff & buff[i+2],  0xff & buff[i+3],
			0xff & buff[i+4],  0xff & buff[i+5],  0xff & buff[i+6],  0xff & buff[i+7],
			0xff & buff[i+8],  0xff & buff[i+9],  0xff & buff[i+10] );
		break;
	case 12:
		fprintf(stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x  %2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0],  0xff & buff[i+1],  0xff & buff[i+2],  0xff & buff[i+3],
			0xff & buff[i+4],  0xff & buff[i+5],  0xff & buff[i+6],  0xff & buff[i+7],
			0xff & buff[i+8],  0xff & buff[i+9],  0xff & buff[i+10], 0xff & buff[i+11] );
		break;
	case 13:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x  "
						"%2.2x %2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0],  0xff & buff[i+1],  0xff & buff[i+2],  0xff & buff[i+3],
			0xff & buff[i+4],  0xff & buff[i+5],  0xff & buff[i+6],  0xff & buff[i+7],
			0xff & buff[i+8],  0xff & buff[i+9],  0xff & buff[i+10], 0xff & buff[i+11],
			0xff & buff[i+12] );
		break;
	case 14:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x  "
						"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0],  0xff & buff[i+1],  0xff & buff[i+2],  0xff & buff[i+3],
			0xff & buff[i+4],  0xff & buff[i+5],  0xff & buff[i+6],  0xff & buff[i+7],
			0xff & buff[i+8],  0xff & buff[i+9],  0xff & buff[i+10], 0xff & buff[i+11],
			0xff & buff[i+12], 0xff & buff[i+13] );
		break;
	case 15:
		fprintf( stdout,"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x  "
						"%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\n",
			0xff & buff[i+0],  0xff & buff[i+1],  0xff & buff[i+2],  0xff & buff[i+3],
			0xff & buff[i+4],  0xff & buff[i+5],  0xff & buff[i+6],  0xff & buff[i+7],
			0xff & buff[i+8],  0xff & buff[i+9],  0xff & buff[i+10], 0xff & buff[i+11],
			0xff & buff[i+12], 0xff & buff[i+13], 0xff & buff[i+14] );
		break;
	}
}

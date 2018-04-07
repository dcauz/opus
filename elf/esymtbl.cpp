#include "esymtbl.h"
#include <elf.h>
#include <cstdio>


void load64( 
	const char * buff, 
	unsigned size, 
	unsigned esize,
	const std::unique_ptr<char> & strings )
{
	const char * cp = buff;
	const char * end = buff + size;

	while( cp < end )
	{
		const Elf64_Sym * sym = reinterpret_cast<const Elf64_Sym *>(cp);
		
		printf( "name:%s\n", strings.get() + sym->st_name );

		unsigned bind = ELF64_ST_BIND(sym->st_info);

		switch(bind)
		{
		case STB_LOCAL:
			printf( "bind:local\n" );
			break;
		case STB_GLOBAL:
			printf( "bind:global\n" );
			break;
		case STB_WEAK:
			printf( "bind:weak\n" );
			break;
		case STB_GNU_UNIQUE:
			printf( "bind:gnu-unique\n" );
			break;
		}

		unsigned type = ELF64_ST_TYPE(sym->st_info);
		switch(type)
		{
		case STT_NOTYPE:
			printf( "type:unspecified\n" );
			break;
		case STT_OBJECT:
			printf( "type:data-object\n" );
			break;
		case STT_FUNC:
			printf( "type:code-object\n" );
			break;
		case STT_SECTION:
			printf( "type:assoc-with-section\n");
			break;
		case STT_FILE:
			printf( "type:file-name\n");
			break;
		case STT_COMMON:
			printf( "type:common-data-object\n");
			break;
		case STT_TLS:
			printf( "type:thread-local-data\n");
			break;
		case STT_GNU_IFUNC:
			printf( "type:indirect-code\n");
			break;
		}

		int vis = ELF64_ST_VISIBILITY(sym->st_other);

		switch(vis)
		{
  		case STV_DEFAULT:
			printf( "visibility:default\n" );
			break;
  		case STV_INTERNAL:
			printf( "visibility:internal\n" );
			break;
  		case STV_HIDDEN:
			printf( "visibility:hidden\n" );
			break;
  		case STV_PROTECTED:
			printf( "visibility:protected\n" );
			break;
		}

		printf( "section:%u\n", sym->st_shndx );
  		printf( "value:%lu\n", sym->st_value );
  		printf( "size:%lu\n\n", sym->st_size );

		cp += esize;
	}
}

void load32( 
	const char * buff, 
	unsigned size, 
	unsigned esize,
	const std::unique_ptr<char> & strings )
{
	const char * cp = buff;
	const char * end = buff + size;

	while( cp < end )
	{
		const Elf32_Sym * sym = reinterpret_cast<const Elf32_Sym *>(cp);
		
		cp += esize;
	}
}

SymbolTable::SymbolTable( 
	const char * buff, 
	unsigned size, 
	unsigned esize, 
	bool is64, 
	const std::unique_ptr<char> & strings )
{
	if(is64)
		load64(buff, size, esize, strings );
	else
		load32(buff, size, esize, strings );
}

#if 0

typedef struct
{
  Elf64_Half si_boundto;		/* Direct bindings, symbol bound to */
  Elf64_Half si_flags;			/* Per symbol flags */
} Elf64_Syminfo;

#define SYMINFO_BT_SELF			0xffff	/* Symbol bound to self */
#define SYMINFO_BT_PARENT		0xfffe	/* Symbol bound to parent */

#define SYMINFO_FLG_DIRECT		0x0001	/* Direct bound symbol */
#define SYMINFO_FLG_PASSTHRU	0x0002	/* Pass-thru symbol for translator */
#define SYMINFO_FLG_COPY		0x0004	/* Symbol is a copy-reloc */
#define SYMINFO_FLG_LAZYLOAD	0x0008	/* Symbol bound to object to be lazy loaded */

#define SYMINFO_NONE		0
#define SYMINFO_CURRENT		1

#endif

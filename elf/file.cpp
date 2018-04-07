#include <elf.h>
#include <cstddef>
#include <memory>

#include "file.h"
#include "tostring.h"
#include "program.h"
#include "section.h"
#include "stringtbl.h"
#include "esymtbl.h"
#include "disassemble.h"


#define	TODO	fprintf( stdout, "#################\nTODO: %s:%d\n", __FILE__, __LINE__ );


bool readIdent( const char * file )
{
	FILE * fh = fopen( file, "r" );

	unsigned char e_ident[EI_NIDENT];

	if( EI_NIDENT != fread( e_ident, 1, EI_NIDENT, fh ))
	{
		fclose(fh);
		fprintf( stderr, "Failed to read magic number of file %s\n", file );
		return 1;
	}

	if( e_ident[EI_MAG0] != ELFMAG0 || e_ident[EI_MAG1] != ELFMAG1 ||
		e_ident[EI_MAG2] != ELFMAG2 || e_ident[EI_MAG3] != ELFMAG3)
	{
		fprintf( stderr, "Invalid ELF Magic number bytes\n" );
		return 2;
	}

	if( e_ident[EI_VERSION] != EV_CURRENT )
	{
		fprintf( stderr, "Invalid ELF version number %d\n", e_ident[EI_VERSION] );
		return 3;
	}

	bool is64 = false;
	bool is32 = false;

	switch(e_ident[EI_CLASS])
	{
	case ELFCLASSNONE:	printf( "class=NONE\n" ); break;
	case ELFCLASS32:	printf( "class=32\n" );   is32=true; break;
	case ELFCLASS64:	printf( "class=64\n" );   is64=true; break;

	default:			printf( "class=%d\n", e_ident[EI_CLASS] );
	}

	bool isBig = false;
	bool isLittle = false;

	switch( e_ident[EI_DATA])
	{
	case ELFDATANONE:	printf( "data=NONE\n" );	break;
	case ELFDATA2LSB:	printf( "data=2's complement, little endian\n" ); isLittle = true; break;
	case ELFDATA2MSB:	printf( "data=2's complement, big endian \n" );   isBig = true; break;
	default:			printf( "class=%d\n", e_ident[EI_DATA] );
	}

	switch(e_ident[EI_OSABI])
	{
	case ELFOSABI_SYSV:			printf( "ABI=SYSV\n" ); 		break;
	case ELFOSABI_HPUX:			printf( "ABI=HPUX\n" ); 		break;
	case ELFOSABI_NETBSD:		printf( "ABI=NETBSD\n" ); 		break;
	case ELFOSABI_GNU:			printf( "ABI=GNU\n" ); 			break;
	case ELFOSABI_SOLARIS:		printf( "ABI=SOLARIS\n" ); 		break;
	case ELFOSABI_AIX:			printf( "ABI=AIX\n" ); 			break;
	case ELFOSABI_IRIX:			printf( "ABI=IRIX\n" ); 		break;
	case ELFOSABI_FREEBSD:		printf( "ABI=FREEBSD\n" );		break;
	case ELFOSABI_TRU64:		printf( "ABI=TRU64\n" ); 		break;
	case ELFOSABI_MODESTO:		printf( "ABI=MODESTO\n" ); 		break;
	case ELFOSABI_OPENBSD:		printf( "ABI=OPENBSD\n" ); 		break;
	case ELFOSABI_ARM_AEABI:	printf( "ABI=ARM_AEABI\n" ); 	break;
	case ELFOSABI_ARM:			printf( "ABI=ARM\n" ); 			break;
	case ELFOSABI_STANDALONE:	printf( "ABI=STANDALONE\n" ); 	break;
	default:					printf( "ABI=%d\n", e_ident[EI_OSABI] );
	}

	if(!is32 && !is64 )
	{
		fprintf( stderr, "ELF architecture must be either 32 or 64\n" );
		return 4;
	}

	if(!isBig && !isLittle )
	{
		fprintf( stderr, "ELF architecture must be either big or little endian\n" );
		return 5;
	}

	bool rc;
	if(is64)
		rc = parse64(fh);
	else
		rc = parse32(fh);

	fclose(fh);

	return rc;
}

bool parse64( FILE * fh )
{
	Elf64_Ehdr hdr;

	unsigned size = sizeof(Elf64_Ehdr)-offsetof(Elf64_Ehdr, e_type);

	if( 1 != fread( &hdr.e_type, size, 1, fh ) )
	{
		fprintf( stderr, "Failed to read header\n" );
		return false;
	}

	printf( "type     =%s\n", typeToStr(hdr.e_type) );
  	printf( "machine  =%s\n", machineToStr(hdr.e_machine) );
  	printf( "version  =%u\n", hdr.e_version );

  	printf( "entry pt virt addr:    %lu\n", hdr.e_entry );

  	printf( "prog hdr tbl file off: %lu\n", hdr.e_phoff );
  	printf( "sect hdr tbl file off: %lu\n", hdr.e_shoff );

  	printf( "proc spec flags:       %u\n", hdr.e_flags );

  	printf( "elf hdr size (bytes):  %u\n", hdr.e_ehsize );
  	printf( "prog hdr tbl ent size: %u\n", hdr.e_phentsize );
  	printf( "prog hdr tbl ent cnt:  %u\n", hdr.e_phnum );		
  	printf( "sect hdr tbl ent size: %u\n", hdr.e_shentsize );
  	printf( "sect hdr tbl ent cnt:  %u\n", hdr.e_shnum );
  	printf( "sect hdr str tbl ndx   %u\n", hdr.e_shstrndx );

	std::vector<Elf64_Phdr>	pHeaders;
	bool rc = parse64ProgHeaderTable( fh, hdr.e_phoff, hdr.e_phentsize, hdr.e_phnum, pHeaders );

	std::vector<Elf64_Shdr>	sHeaders;
	rc &= parse64SectHeaderTable( fh, 	hdr.e_shoff, 
										hdr.e_shentsize, 	
										hdr.e_shnum, 
										hdr.e_shstrndx, 
										sHeaders );		

	if(rc)
	{
		auto i = sHeaders.begin();
		auto e = sHeaders.end();

		while( i != e )
		{
			const auto & hdr = *i;

			std::unique_ptr<char> buff;
			if( hdr.sh_size )
			{
				buff.reset(new char[hdr.sh_size]);

				if(fseek ( fh, hdr.sh_offset, SEEK_SET ))
				{
					fprintf( stderr, "Failed to seek to section at %lu\n", hdr.sh_offset );
					return false;
				}
				else if(1 != fread( buff.get(), hdr.sh_size, 1, fh ))
				{
					fprintf( stderr, "Failed to read section at %lu\n", hdr.sh_offset );
					return false;
				}
			}

			switch(hdr.sh_type)
			{
			case SHT_NULL:
				break;
			case SHT_PROGBITS:      
				if( hdr.sh_flags & SHF_EXECINSTR )
				{
dump(buff.get(), hdr.sh_size);
					disassemble( buff.get(), buff.get()+hdr.sh_size );
				}
				else
				{
				TODO
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_SYMTAB:        
			{
				auto & ss = sHeaders[hdr.sh_link];

				std::unique_ptr<char>	strings;
				strings.reset(new char[ss.sh_size]);

				if(fseek ( fh, ss.sh_offset, SEEK_SET ) ||
				(1 != fread( strings.get(), ss.sh_size, 1, fh )))
				{
					fprintf( stderr, "Failed to read string section at %lu\n", ss.sh_offset );
					return false;
				}
				else
				{
					SymbolTable	st( 
						buff.get(), 
						hdr.sh_size, 
						hdr.sh_entsize, 
						true,
						strings );

				}

				break;
			}
			case SHT_STRTAB:        
			{
				StringTable	st(i-sHeaders.begin(), buff.get(), hdr.sh_size);
				st.dump();
				break;
			}
			case SHT_RELA:          
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_HASH:          
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_DYNAMIC:       
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_NOTE:          
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_NOBITS:        
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_REL:           
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_SHLIB:         
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_DYNSYM:        
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_INIT_ARRAY:    
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_FINI_ARRAY:    
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_PREINIT_ARRAY: 
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_GROUP:         
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_SYMTAB_SHNDX:  
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_GNU_ATTRIBUTES:
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_GNU_HASH:      
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_GNU_LIBLIST:   
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_CHECKSUM:      
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_SUNW_move:     
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_SUNW_COMDAT:   
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_SUNW_syminfo:  
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_GNU_verdef:    
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_GNU_verneed:   
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			case SHT_GNU_versym:    
				TODO
				{
printf( "\n%lu:%lu\n", hdr.sh_offset, hdr.sh_size ); 
dump(buff.get(), hdr.sh_size);
				}
				break;
			}

			++i;
		}
	}

	return true;
}

bool parse32( FILE * fh )
{
	Elf32_Ehdr hdr;

	unsigned size = sizeof(Elf32_Ehdr)-offsetof(Elf32_Ehdr, e_type);

	if( 1 != fread( &hdr.e_type, size, 1, fh ) )
	{
		fprintf( stderr, "Failed to read header\n" );
		return false;
	}

	printf( "type     =%s\n", typeToStr(hdr.e_type) );			
  	printf( "machine  =%s\n", machineToStr(hdr.e_machine) );	
  	printf( "version  =%u\n", hdr.e_version );

  	printf( "entry pt virt addr:    %u\n", hdr.e_entry );
  	printf( "prog hdr tbl file off: %u\n", hdr.e_phoff );
  	printf( "sect hdr tbl file off: %u\n", hdr.e_shoff );
  	printf( "proc spec flags:       %u\n", hdr.e_flags );
  	printf( "elf hdr size (bytes):  %u\n", hdr.e_ehsize );
  	printf( "prog hdr tbl ent size: %u\n", hdr.e_phentsize );
  	printf( "prog hdr tbl ent cnt:  %u\n", hdr.e_phnum );		
  	printf( "sect hdr tbl ent size: %u\n", hdr.e_shentsize );
  	printf( "sect hdr tbl ent cnt:  %u\n", hdr.e_shnum );
  	printf( "sect hdr str tbl ndx   %u\n", hdr.e_shstrndx );

	std::vector<Elf32_Phdr>	pHeaders;
	bool rc = parse32ProgHeaderTable( fh, hdr.e_phoff, hdr.e_phentsize, hdr.e_phnum, pHeaders );

	std::vector<Elf32_Shdr>	sHeaders;
	rc &= parse32SectHeaderTable( fh, 	hdr.e_shoff, 
										hdr.e_shentsize, 
										hdr.e_shnum, 
										hdr.e_shstrndx, 
										sHeaders );

	return true;
}

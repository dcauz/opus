#include "program.h"
#include "tostring.h"
#include <memory>


bool parse64ProgHeaderTable( 
	FILE * fh, 
	const Elf64_Off	& e_phoff,
	const Elf64_Half & e_phentsize, 
	const Elf64_Half & e_phnum,
	std::vector<Elf64_Phdr> & pHeaders )
{
	if( !e_phoff )
		return true;

	printf( "--- Program Headers --------------------\n" );

	if(fseek ( fh, e_phoff, SEEK_SET ))
	{
		fprintf( stderr, "Failed to seek to offset %lu\n", e_phoff );
		return false;
	}
	std::unique_ptr<char> buf(new char[e_phentsize*e_phnum]);

	if(1 != fread( buf.get(), e_phentsize*e_phnum, 1, fh ))
	{
		fprintf( stderr, "Failed to read program headers\n" );
		return false;
	}

	const char * cp = buf.get();
	for( unsigned i = 0; i < e_phnum; ++i )
	{
		auto hdr = reinterpret_cast<const Elf64_Phdr *>(cp+i*e_phentsize);

		pHeaders.push_back(*hdr);

		printf( "PROGRAM: %d\n", i );
  		printf( "type:  %s\n",  pTypeToStr(hdr->p_type) );			
  		printf( "flags: %s\n",  pFlagToStr(hdr->p_flags).c_str() );
  		printf( "offset:%lu\n", hdr->p_offset );
  		printf( "vaddr: %lu\n", hdr->p_vaddr );
  		printf( "paddr: %lu\n", hdr->p_paddr );
  		printf( "filesz:%lu\n", hdr->p_filesz );
  		printf( "memsz: %lu\n", hdr->p_memsz );
  		printf( "align: %lu\n\n", hdr->p_align );
	}

	printf( "----------------------------------------\n" );

	return true;
}

bool parse32ProgHeaderTable( 
	FILE * fh, 
	const Elf32_Off	& e_phoff,
	const Elf32_Half & e_phentsize, 
	const Elf32_Half & e_phnum,
	std::vector<Elf32_Phdr> & pHeaders )
{
	if( !e_phoff )
		return true;

	printf( "--- Program Headers --------------------\n" );

	if(fseek ( fh, e_phoff, SEEK_SET ))
	{
		fprintf( stderr, "Failed to seek to offset %u\n", e_phoff );
		return false;
	}
	std::unique_ptr<char> buf(new char[e_phentsize*e_phnum]);

	if(1 != fread( buf.get(), e_phentsize*e_phnum, 1, fh ))
	{
		fprintf( stderr, "Failed to read program headers\n" );
		return false;
	}

	const char * cp = buf.get();
	for( unsigned i = 0; i < e_phnum; ++i )
	{
		auto hdr = reinterpret_cast<const Elf32_Phdr *>(cp+i*e_phentsize);

		pHeaders.push_back(*hdr);

		printf( "PROGRAM: %d\n", i );
  		printf( "type:  %s\n",  pTypeToStr(hdr->p_type) );			
  		printf( "flags: %s\n",  pFlagToStr(hdr->p_flags).c_str() );
  		printf( "offset:%u\n", hdr->p_offset );
  		printf( "vaddr: %u\n", hdr->p_vaddr );
  		printf( "paddr: %u\n", hdr->p_paddr );
  		printf( "filesz:%u\n", hdr->p_filesz );
  		printf( "memsz: %u\n", hdr->p_memsz );
  		printf( "align: %u\n\n", hdr->p_align );
	}

	printf( "----------------------------------------\n" );

	return true;
}

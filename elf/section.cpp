#include <memory>
#include "section.h"
#include "tostring.h"


bool parse64SectHeaderTable( 
	FILE * fh, 
	const Elf64_Off	& e_shoff, 
	const Elf64_Half& e_shentsize, 
	const Elf64_Half& e_shnum,
	const Elf64_Half& e_shstrndx,
	std::vector<Elf64_Shdr> & sHeaders )
{
	if( !e_shoff )
		return true;

	printf( "--- Section Headers --------------------\n" );

	if(fseek ( fh, e_shoff, SEEK_SET ))
	{
		fprintf( stderr, "Failed to seek to offset %lu\n", e_shoff );
		return false;
	}
	std::unique_ptr<char> buf(new char[e_shentsize*e_shnum]);

	if(1 != fread( buf.get(), e_shentsize*e_shnum, 1, fh ))
	{
		fprintf( stderr, "Failed to read section headers\n" );
		return false;
	}

	const char * cp = buf.get();
	for( unsigned i = 0; i < e_shnum; ++i )
	{
		auto hdr = reinterpret_cast<const Elf64_Shdr *>(cp+i*e_shentsize);

		sHeaders.push_back( *hdr );
	}

	const auto & shdr = sHeaders[e_shstrndx];
	if(fseek ( fh, shdr.sh_offset, SEEK_SET ))
	{
		fprintf( stderr, "Failed to seek to offset %lu\n", e_shoff );
		return false;
	}
	std::unique_ptr<char> strings(new char[shdr.sh_size]);

	if(1 != fread( strings.get(), shdr.sh_size, 1, fh ))
	{
		fprintf( stderr, "Failed to read section headers\n" );
		return false;
	}

	for( unsigned i = 0; i < e_shnum; ++i )
	{
		const auto & hdr = sHeaders[i];

		printf( "SECTION: %d\n", i );

		printf( "name:     %s\n",    strings.get()+hdr.sh_name );
		printf( "type:     %s\n",    shTypeToStr(hdr.sh_type) );
		printf( "flags:    %s\n",    shFlagToStr(hdr.sh_flags).c_str() );
		printf( "addr:     %lu\n",   hdr.sh_addr );		
		printf( "offset:   %lu\n",   hdr.sh_offset );	
		printf( "size:     %lu\n",   hdr.sh_size );		
		printf( "link:     %u\n",    hdr.sh_link );		/* Link to another section */
		printf( "info:     %u\n",    hdr.sh_info );		/* Additional section information */
		printf( "alignment:%lu\n",   hdr.sh_addralign );	
		printf( "entrySize:%lu\n\n", hdr.sh_entsize );	
	}

	printf( "----------------------------------------\n" );

	return true;
}

bool parse32SectHeaderTable( 
	FILE * fh, 
	const Elf32_Off	& e_shoff, 
	const Elf32_Half& e_shentsize, 
	const Elf32_Half& e_shnum,
	const Elf32_Half& e_shstrndx,
	std::vector<Elf32_Shdr> & sHeaders )
{
	if( !e_shoff )
		return true;

	printf( "--- Section Headers --------------------\n" );

	if(fseek ( fh, e_shoff, SEEK_SET ))
	{
		fprintf( stderr, "Failed to seek to offset %u\n", e_shoff );
		return false;
	}
	std::unique_ptr<char> buf(new char[e_shentsize*e_shnum]);

	if(1 != fread( buf.get(), e_shentsize*e_shnum, 1, fh ))
	{
		fprintf( stderr, "Failed to read section headers\n" );
		return false;
	}

	const char * cp = buf.get();
	for( unsigned i = 0; i < e_shnum; ++i )
	{
		auto hdr = reinterpret_cast<const Elf32_Shdr *>(cp+i*e_shentsize);

		sHeaders.push_back( *hdr );
	}

	const auto & shdr = sHeaders[e_shstrndx];
	if(fseek ( fh, shdr.sh_offset, SEEK_SET ))
	{
		fprintf( stderr, "Failed to seek to offset %u\n", e_shoff );
		return false;
	}
	std::unique_ptr<char> strings(new char[shdr.sh_size]);

	if(1 != fread( strings.get(), shdr.sh_size, 1, fh ))
	{
		fprintf( stderr, "Failed to read section headers\n" );
		return false;
	}

	for( unsigned i = 0; i < e_shnum; ++i )
	{
		const auto & hdr = sHeaders[i];

		printf( "SECTION: %d\n", i );

		printf( "name:     %s\n",   strings.get() + hdr.sh_name );		/* Section name (string tbl index) */
		printf( "type:     %s\n",   shTypeToStr(hdr.sh_type) );
		printf( "flags:    %s\n",   shFlagToStr(hdr.sh_flags).c_str() );
		printf( "addr:     %u\n",   hdr.sh_addr );		
		printf( "offset:   %u\n",   hdr.sh_offset );		
		printf( "size:     %u\n",   hdr.sh_size );		
		printf( "link:     %u\n",   hdr.sh_link );		/* Link to another section */
		printf( "info:     %u\n",   hdr.sh_info );		/* Additional section information */
		printf( "alignment:%u\n",   hdr.sh_addralign );		
		printf( "entrySize:%u\n\n", hdr.sh_entsize );		
	}

	printf( "----------------------------------------\n" );

	return true;
}

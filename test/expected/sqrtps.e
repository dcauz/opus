class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 280
proc spec flags:       0
elf hdr size (bytes):  64
prog hdr tbl ent size: 0
prog hdr tbl ent cnt:  0
sect hdr tbl ent size: 64
sect hdr tbl ent cnt:  7
sect hdr str tbl ndx   4
--- Section Headers --------------------
SECTION: 0
name:     
type:     UNUSED
flags:    
addr:     0
offset:   0
size:     0
link:     0
info:     0
alignment:0
entrySize:0

SECTION: 1
name:     .text
type:     Program data
flags:    OCCUPIES MEMORY|Executable
addr:     0
offset:   64
size:     72
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   136
size:     0
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 3
name:     .bss
type:     Program space with no data (bss)
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   136
size:     0
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 4
name:     .shstrtab
type:     String table
flags:    
addr:     0
offset:   233
size:     44
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 5
name:     .symtab
type:     Symbol table
flags:    
addr:     0
offset:   136
size:     96
link:     6
info:     4
alignment:8
entrySize:24

SECTION: 6
name:     .strtab
type:     String table
flags:    
addr:     0
offset:   232
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
45 0f 51 32 c4 41 78 51  32 c4 41 7c 51 32 62 51
7c 48 51 32 62 c1 7c 08  51 da 62 c1 7c 28 51 da
62 c1 7c 48 51 da c4 41  78 51 f2 c4 41 7c 51 f2
62 51 7c 48 51 f2 62 c1  7c 08 51 1a 62 c1 7c 28
51 1a 62 c1 7c 48 51 1a
     0:sqrtps (%r10),%xmm14
     4:vsqrtps (%r10),%xmm14
     9:vsqrtps (%r10),%ymm14
     e:vsqrtps (%r10),%zmm14
    14:vsqrtps %xmm10,%xmm19
    1a:vsqrtps %ymm10,%ymm19
    20:vsqrtps %zmm10,%zmm19
    26:vsqrtps %xmm10,%xmm14
    2b:vsqrtps %ymm10,%ymm14
    30:vsqrtps %zmm10,%zmm14
    36:vsqrtps (%r10),%xmm19
    3c:vsqrtps (%r10),%ymm19
    42:vsqrtps (%r10),%zmm19
#################
TODO: elf/file.cpp:186

136:0
#################
TODO: elf/file.cpp:252

136:0

.symtab
.strtab
.shstrtab
.text
.data
.bss
name:
bind:local
type:unspecified
visibility:default
section:0
value:0
size:0

name:
bind:local
type:assoc-with-section
visibility:default
section:1
value:0
size:0

name:
bind:local
type:assoc-with-section
visibility:default
section:2
value:0
size:0

name:
bind:local
type:assoc-with-section
visibility:default
section:3
value:0
size:0



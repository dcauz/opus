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
size:     65
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   129
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
offset:   129
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
66 0f 3a 21 d1 01 66 41  0f 3a 21 12 01 66 44 0f
3a 21 e1 01 66 45 0f 3a  21 22 01 c4 e3 69 21 d9
01 c4 c3 69 21 1a 01 c4  e3 19 21 d9 01 c4 c3 19
21 1a 01 62 f3 4d 00 21  d9 01 62 d3 4d 00 21 1a
01
     0:insertps $0x1,%xmm1,%xmm2
     6:insertps $0x1,(%r10),%xmm2
     d:insertps $0x1,%xmm1,%xmm12
    14:insertps $0x1,(%r10),%xmm12
    1b:vinsertps $0x1,%xmm1,%xmm2,%xmm3
    21:vinsertps $0x1,(%r10),%xmm2,%xmm3
    27:vinsertps $0x1,%xmm1,%xmm12,%xmm3
    2d:vinsertps $0x1,(%r10),%xmm12,%xmm3
    33:vinsertps $0x1,%xmm1,%xmm22,%xmm3
    3a:vinsertps $0x1,(%r10),%xmm22,%xmm3
#################
TODO: elf/file.cpp:186

129:0
#################
TODO: elf/file.cpp:252

129:0

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



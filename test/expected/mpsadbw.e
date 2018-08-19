class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 288
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
size:     75
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   139
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
offset:   139
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
offset:   241
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
offset:   144
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
offset:   240
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 3a 42 d1 01 66 41  0f 3a 42 12 01 66 45 0f
3a 42 e3 01 66 45 0f 3a  42 22 01 c4 e3 69 42 d9
01 c4 c3 69 42 1a 01 c4  c3 19 42 db 01 c4 c3 19
42 1a 01 c4 e3 6d 42 d9  01 c4 c3 6d 42 1a 01 c4
c3 1d 42 db 01 c4 c3 1d  42 1a 01
     0:mpsadbw $0x1,%xmm1,%xmm2
     6:mpsadbw $0x1,(%r10),%xmm2
     d:mpsadbw $0x1,%xmm11,%xmm12
    14:mpsadbw $0x1,(%r10),%xmm12
    1b:vmpsadbw $0x1,%xmm1,%xmm2,%xmm3
    21:vmpsadbw $0x1,(%r10),%xmm2,%xmm3
    27:vmpsadbw $0x1,%xmm11,%xmm12,%xmm3
    2d:vmpsadbw $0x1,(%r10),%xmm12,%xmm3
    33:vmpsadbw $0x1,%ymm1,%ymm2,%ymm3
    39:vmpsadbw $0x1,(%r10),%ymm2,%ymm3
    3f:vmpsadbw $0x1,%ymm11,%ymm12,%ymm3
    45:vmpsadbw $0x1,(%r10),%ymm12,%ymm3
#################
TODO: elf/file.cpp:186

139:0
#################
TODO: elf/file.cpp:252

139:0

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



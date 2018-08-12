class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 312
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
size:     98
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   162
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
offset:   162
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
offset:   265
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
offset:   168
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
offset:   264
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 3a 0c d9 02 66 0f  3a 0c d9 c8 66 41 0f 3a
0c 1a 02 66 41 0f 3a 0c  1a c8 c4 63 61 0c d1 02
c4 63 61 0c d1 c8 c4 43  61 0c 12 02 c4 43 61 0c
12 c8 c4 43 61 0c d7 c8  c4 43 61 0c 12 c8 c4 63
65 0c d1 02 c4 63 65 0c  d1 c8 c4 43 65 0c 12 02
c4 43 65 0c 12 c8 c4 43  65 0c d7 c8 c4 43 65 0c
12 c8
     0:blendps $0x2,%xmm1,%xmm3
     6:blendps $0xc8,%xmm1,%xmm3
     c:blendps $0x2,(%r10),%xmm3
    13:blendps $0xc8,(%r10),%xmm3
    1a:vblendps $0x2,%xmm1,%xmm3,%xmm10
    20:vblendps $0xc8,%xmm1,%xmm3,%xmm10
    26:vblendps $0x2,(%r10),%xmm3,%xmm10
    2c:vblendps $0xc8,(%r10),%xmm3,%xmm10
    32:vblendps $0xc8,%xmm15,%xmm3,%xmm10
    38:vblendps $0xc8,(%r10),%xmm3,%xmm10
    3e:vblendps $0x2,%ymm1,%ymm3,%ymm10
    44:vblendps $0xc8,%ymm1,%ymm3,%ymm10
    4a:vblendps $0x2,(%r10),%ymm3,%ymm10
    50:vblendps $0xc8,(%r10),%ymm3,%ymm10
    56:vblendps $0xc8,%ymm15,%ymm3,%ymm10
    5c:vblendps $0xc8,(%r10),%ymm3,%ymm10
#################
TODO: elf/file.cpp:186

162:0
#################
TODO: elf/file.cpp:252

162:0

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



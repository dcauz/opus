class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 320
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
size:     112
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   176
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
offset:   176
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
offset:   273
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
offset:   176
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
offset:   272
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 3a 40 e2 01 66 41  0f 3a 40 22 01 66 0f 3a
40 e2 64 66 41 0f 3a 40  22 64 66 45 0f 3a 40 f4
01 66 45 0f 3a 40 32 01  c4 e3 59 40 da 01 c4 c3
59 40 1a 01 c4 e3 59 40  da 64 c4 c3 59 40 1a 64
c4 c3 09 40 dc 01 c4 c3  09 40 1a 01 c4 e3 5d 40
da 01 c4 c3 5d 40 1a 01  c4 e3 5d 40 da 64 c4 c3
5d 40 1a 64 c4 c3 0d 40  dc 01 c4 c3 0d 40 1a 01
00
     0:dpps $0x1,%xmm2,%xmm4
     6:dpps $0x1,(%r10),%xmm4
     d:dpps $0x64,%xmm2,%xmm4
    13:dpps $0x64,(%r10),%xmm4
    1a:dpps $0x1,%xmm12,%xmm14
    21:dpps $0x1,(%r10),%xmm14
    28:vdpps $0x1,%xmm2,%xmm4,%xmm3
    2e:vdpps $0x1,(%r10),%xmm4,%xmm3
    34:vdpps $0x64,%xmm2,%xmm4,%xmm3
    3a:vdpps $0x64,(%r10),%xmm4,%xmm3
    40:vdpps $0x1,%xmm12,%xmm14,%xmm3
    46:vdpps $0x1,(%r10),%xmm14,%xmm3
    4c:vdpps $0x1,%ymm2,%ymm4,%ymm3
    52:vdpps $0x1,(%r10),%ymm4,%ymm3
    58:vdpps $0x64,%ymm2,%ymm4,%ymm3
    5e:vdpps $0x64,(%r10),%ymm4,%ymm3
    64:vdpps $0x1,%ymm12,%ymm14,%ymm3
    6a:vdpps $0x1,(%r10),%ymm14,%ymm3
#################
TODO: elf/file.cpp:186

176:0
#################
TODO: elf/file.cpp:252

176:0

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



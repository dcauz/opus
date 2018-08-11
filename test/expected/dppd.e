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
size:     76
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   140
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
offset:   140
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
66 0f 3a 41 e2 01 66 41  0f 3a 41 22 01 66 0f 3a
41 e2 64 66 41 0f 3a 41  22 64 66 45 0f 3a 41 f4
01 66 45 0f 3a 41 32 01  c4 e3 59 41 da 01 c4 c3
59 41 1a 01 c4 e3 59 41  da 64 c4 c3 59 41 1a 64
c4 c3 09 41 dc 01 c4 c3  09 41 1a 01
     0:dppd $0x1,%xmm2,%xmm4
     6:dppd $0x1,(%r10),%xmm4
     d:dppd $0x64,%xmm2,%xmm4
    13:dppd $0x64,(%r10),%xmm4
    1a:dppd $0x1,%xmm12,%xmm14
    21:dppd $0x1,(%r10),%xmm14
    28:vdppd $0x1,%xmm2,%xmm4,%xmm3
    2e:vdppd $0x1,(%r10),%xmm4,%xmm3
    34:vdppd $0x64,%xmm2,%xmm4,%xmm3
    3a:vdppd $0x64,(%r10),%xmm4,%xmm3
    40:vdppd $0x1,%xmm12,%xmm14,%xmm3
    46:vdppd $0x1,(%r10),%xmm14,%xmm3
#################
TODO: elf/file.cpp:186

140:0
#################
TODO: elf/file.cpp:252

140:0

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



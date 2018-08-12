class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 296
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
size:     86
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   150
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
offset:   150
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
offset:   249
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
offset:   152
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
offset:   248
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 3a 0e 0a 01 66 44  0f 3a 0e 3a 0b 66 0f 3a
0e cf 01 66 44 0f 3a 0e  ff 0b c4 63 71 0e 0a 01
c4 63 01 0e 0a 0b c4 63  71 0e cf 01 c4 63 01 0e
cf 0b c4 63 75 0e cf 01  c4 63 05 0e cf 0b c4 43
75 0e 0a 01 c4 43 05 0e  0a 0b c4 63 75 0e cf 01
c4 63 05 0e cf 0b
     0:pblendw $0x1,(%rdx),%xmm1
     6:pblendw $0xb,(%rdx),%xmm15
     d:pblendw $0x1,%xmm7,%xmm1
    13:pblendw $0xb,%xmm7,%xmm15
    1a:vpblendw $0x1,(%rdx),%xmm1,%xmm9
    20:vpblendw $0xb,(%rdx),%xmm15,%xmm9
    26:vpblendw $0x1,%xmm7,%xmm1,%xmm9
    2c:vpblendw $0xb,%xmm7,%xmm15,%xmm9
    32:vpblendw $0x1,%ymm7,%ymm1,%ymm9
    38:vpblendw $0xb,%ymm7,%ymm15,%ymm9
    3e:vpblendw $0x1,(%r10),%ymm1,%ymm9
    44:vpblendw $0xb,(%r10),%ymm15,%ymm9
    4a:vpblendw $0x1,%ymm7,%ymm1,%ymm9
    50:vpblendw $0xb,%ymm7,%ymm15,%ymm9
#################
TODO: elf/file.cpp:186

150:0
#################
TODO: elf/file.cpp:252

150:0

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



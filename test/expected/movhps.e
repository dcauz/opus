class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 416
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
size:     204
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   268
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
offset:   268
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
offset:   369
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
offset:   272
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
offset:   368
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
41 0f 17 2a 41 0f 16 2a  43 0f 16 14 22 43 0f 16
5c 22 10 43 0f 16 64 62  11 43 0f 16 84 a2 67 35
00 00 45 0f 16 12 47 0f  16 1c 22 47 0f 16 64 22
10 47 0f 16 6c 62 11 47  0f 16 b4 a2 67 35 00 00
c4 c1 50 16 0a c4 81 68  16 14 22 c4 81 60 16 5c
22 10 c4 81 58 16 64 62  11 c4 81 78 16 b4 a2 67
35 00 00 c4 c1 28 16 3a  c4 01 20 16 04 22 c4 01
18 16 4c 22 10 c4 01 10  16 54 62 11 c4 01 08 16
9c a2 67 35 00 00 c4 41  78 17 32 c4 01 78 17 2c
22 c4 01 78 17 64 22 10  c4 01 78 17 5c 62 11 c4
01 78 17 bc a2 67 35 00  00 c4 c1 78 17 12 c4 81
78 17 2c 22 c4 81 78 17  74 22 10 c4 01 78 17 44
62 11 c4 01 78 17 8c a2  67 35 00 00
     0:movhps %xmm5,(%r10)
     4:movhps (%r10),%xmm5
     8:movhps (%r10,%r12,1),%xmm2
     d:movhps 0x10(%r10,%r12,1),%xmm3
    13:movhps 0x11(%r10,%r12,2),%xmm4
    19:movhps 0x3567(%r10,%r12,4),%xmm0
    22:movhps (%r10),%xmm10
    26:movhps (%r10,%r12,1),%xmm11
    2b:movhps 0x10(%r10,%r12,1),%xmm12
    31:movhps 0x11(%r10,%r12,2),%xmm13
    37:movhps 0x3567(%r10,%r12,4),%xmm14
    40:vmovhps (%r10),%xmm5,%xmm1
    45:vmovhps (%r10,%r12,1),%xmm2,%xmm2
    4b:vmovhps 0x10(%r10,%r12,1),%xmm3,%xmm3
    52:vmovhps 0x11(%r10,%r12,2),%xmm4,%xmm4
    59:vmovhps 0x3567(%r10,%r12,4),%xmm0,%xmm6
    63:vmovhps (%r10),%xmm10,%xmm7
    68:vmovhps (%r10,%r12,1),%xmm11,%xmm8
    6e:vmovhps 0x10(%r10,%r12,1),%xmm12,%xmm9
    75:vmovhps 0x11(%r10,%r12,2),%xmm13,%xmm10
    7c:vmovhps 0x3567(%r10,%r12,4),%xmm14,%xmm11
    86:vmovhps %xmm14,(%r10)
    8b:vmovhps %xmm13,(%r10,%r12,1)
    91:vmovhps %xmm12,0x10(%r10,%r12,1)
    98:vmovhps %xmm11,0x11(%r10,%r12,2)
    9f:vmovhps %xmm15,0x3567(%r10,%r12,4)
    a9:vmovhps %xmm2,(%r10)
    ae:vmovhps %xmm5,(%r10,%r12,1)
    b4:vmovhps %xmm6,0x10(%r10,%r12,1)
    bb:vmovhps %xmm8,0x11(%r10,%r12,2)
    c2:vmovhps %xmm9,0x3567(%r10,%r12,4)
#################
TODO: elf/file.cpp:186

268:0
#################
TODO: elf/file.cpp:252

268:0

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



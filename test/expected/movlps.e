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
41 0f 13 2a 41 0f 12 2a  43 0f 12 14 22 43 0f 12
5c 22 10 43 0f 12 64 62  11 43 0f 12 84 a2 67 35
00 00 45 0f 12 12 47 0f  12 1c 22 47 0f 12 64 22
10 47 0f 12 6c 62 11 47  0f 12 b4 a2 67 35 00 00
c4 c1 50 12 0a c4 81 68  12 14 22 c4 81 60 12 5c
22 10 c4 81 58 12 64 62  11 c4 81 78 12 b4 a2 67
35 00 00 c4 c1 28 12 3a  c4 01 20 12 04 22 c4 01
18 12 4c 22 10 c4 01 10  12 54 62 11 c4 01 08 12
9c a2 67 35 00 00 c4 41  78 13 32 c4 01 78 13 2c
22 c4 01 78 13 64 22 10  c4 01 78 13 5c 62 11 c4
01 78 13 bc a2 67 35 00  00 c4 c1 78 13 12 c4 81
78 13 2c 22 c4 81 78 13  74 22 10 c4 01 78 13 44
62 11 c4 01 78 13 8c a2  67 35 00 00
     0:movlps %xmm5,(%r10)
     4:movlps (%r10),%xmm5
     8:movlps (%r10,%r12,1),%xmm2
     d:movlps 0x10(%r10,%r12,1),%xmm3
    13:movlps 0x11(%r10,%r12,2),%xmm4
    19:movlps 0x3567(%r10,%r12,4),%xmm0
    22:movlps (%r10),%xmm10
    26:movlps (%r10,%r12,1),%xmm11
    2b:movlps 0x10(%r10,%r12,1),%xmm12
    31:movlps 0x11(%r10,%r12,2),%xmm13
    37:movlps 0x3567(%r10,%r12,4),%xmm14
    40:vmovlps (%r10),%xmm5,%xmm1
    45:vmovlps (%r10,%r12,1),%xmm2,%xmm2
    4b:vmovlps 0x10(%r10,%r12,1),%xmm3,%xmm3
    52:vmovlps 0x11(%r10,%r12,2),%xmm4,%xmm4
    59:vmovlps 0x3567(%r10,%r12,4),%xmm0,%xmm6
    63:vmovlps (%r10),%xmm10,%xmm7
    68:vmovlps (%r10,%r12,1),%xmm11,%xmm8
    6e:vmovlps 0x10(%r10,%r12,1),%xmm12,%xmm9
    75:vmovlps 0x11(%r10,%r12,2),%xmm13,%xmm10
    7c:vmovlps 0x3567(%r10,%r12,4),%xmm14,%xmm11
    86:vmovlps %xmm14,(%r10)
    8b:vmovlps %xmm13,(%r10,%r12,1)
    91:vmovlps %xmm12,0x10(%r10,%r12,1)
    98:vmovlps %xmm11,0x11(%r10,%r12,2)
    9f:vmovlps %xmm15,0x3567(%r10,%r12,4)
    a9:vmovlps %xmm2,(%r10)
    ae:vmovlps %xmm5,(%r10,%r12,1)
    b4:vmovlps %xmm6,0x10(%r10,%r12,1)
    bb:vmovlps %xmm8,0x11(%r10,%r12,2)
    c2:vmovlps %xmm9,0x3567(%r10,%r12,4)
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



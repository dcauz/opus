class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 408
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
size:     200
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   264
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
offset:   264
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
offset:   361
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
offset:   264
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
offset:   360
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
41 0f 16 2a 43 0f 16 14  22 43 0f 16 5c 22 10 43
0f 16 64 62 11 43 0f 16  84 a2 67 35 00 00 45 0f
16 12 47 0f 16 1c 22 47  0f 16 64 22 10 47 0f 16
6c 62 11 47 0f 16 b4 a2  67 35 00 00 c4 c1 50 16
0a c4 81 68 16 14 22 c4  81 60 16 5c 22 10 c4 81
58 16 64 62 11 c4 81 78  16 b4 a2 67 35 00 00 c4
c1 28 16 3a c4 01 20 16  04 22 c4 01 18 16 4c 22
10 c4 01 10 16 54 62 11  c4 01 08 16 9c a2 67 35
00 00 c4 41 78 17 32 c4  01 78 17 2c 22 c4 01 78
17 64 22 10 c4 01 78 17  5c 62 11 c4 01 78 17 bc
a2 67 35 00 00 c4 c1 78  17 12 c4 81 78 17 2c 22
c4 81 78 17 74 22 10 c4  01 78 17 44 62 11 c4 01
78 17 8c a2 67 35 00 00
     0:movhps (%r10),%xmm5
     4:movhps (%r10,%r12,1),%xmm2
     9:movhps 0x10(%r10,%r12,1),%xmm3
     f:movhps 0x11(%r10,%r12,2),%xmm4
    15:movhps 0x3567(%r10,%r12,4),%xmm0
    1e:movhps (%r10),%xmm10
    22:movhps (%r10,%r12,1),%xmm11
    27:movhps 0x10(%r10,%r12,1),%xmm12
    2d:movhps 0x11(%r10,%r12,2),%xmm13
    33:movhps 0x3567(%r10,%r12,4),%xmm14
    3c:vmovhps (%r10),%xmm5,%xmm1
    41:vmovhps (%r10,%r12,1),%xmm2,%xmm2
    47:vmovhps 0x10(%r10,%r12,1),%xmm3,%xmm3
    4e:vmovhps 0x11(%r10,%r12,2),%xmm4,%xmm4
    55:vmovhps 0x3567(%r10,%r12,4),%xmm0,%xmm6
    5f:vmovhps (%r10),%xmm10,%xmm7
    64:vmovhps (%r10,%r12,1),%xmm11,%xmm8
    6a:vmovhps 0x10(%r10,%r12,1),%xmm12,%xmm9
    71:vmovhps 0x11(%r10,%r12,2),%xmm13,%xmm10
    78:vmovhps 0x3567(%r10,%r12,4),%xmm14,%xmm11
    82:vmovhps %xmm14,(%r10)
    87:vmovhps %xmm13,(%r10,%r12,1)
    8d:vmovhps %xmm12,0x10(%r10,%r12,1)
    94:vmovhps %xmm11,0x11(%r10,%r12,2)
    9b:vmovhps %xmm15,0x3567(%r10,%r12,4)
    a5:vmovhps %xmm2,(%r10)
    aa:vmovhps %xmm5,(%r10,%r12,1)
    b0:vmovhps %xmm6,0x10(%r10,%r12,1)
    b7:vmovhps %xmm8,0x11(%r10,%r12,2)
    be:vmovhps %xmm9,0x3567(%r10,%r12,4)
#################
TODO: elf/file.cpp:186

264:0
#################
TODO: elf/file.cpp:252

264:0

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



class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 472
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
size:     264
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   328
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
offset:   328
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
offset:   425
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
offset:   328
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
offset:   424
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 10 d8 0f 10 d1 44 0f  10 e3 44 0f 10 ec 41 0f
10 c3 41 0f 10 c4 45 0f  10 d6 45 0f 10 e7 41 0f
10 2a 43 0f 10 14 22 43  0f 10 5c 22 10 43 0f 10
64 62 11 43 0f 10 84 a2  67 35 00 00 45 0f 10 12
47 0f 10 1c 22 47 0f 10  64 22 10 47 0f 10 6c 62
11 47 0f 10 b4 a2 67 35  00 00 c5 fc 10 d8 c5 fc
10 d1 c5 7c 10 e3 c5 7c  10 ec c5 7c 11 d8 c5 7c
11 e0 c4 41 7c 10 d6 c4  41 7c 10 e7 c4 c1 7c 10
0a c4 81 7c 10 2c 22 c4  81 7c 10 5c 22 10 c4 81
7c 10 64 62 11 c4 81 7c  10 84 a2 67 35 00 00 c4
41 7c 10 12 c4 01 7c 10  1c 22 c4 81 7c 10 6c 22
10 c4 01 7c 10 6c 62 11  c4 01 7c 10 b4 a2 67 35
00 00 c4 41 7c 10 3a c4  01 7c 10 3c 22 c4 81 7c
10 5c 22 10 c4 01 7c 10  74 62 11 c4 01 7c 10 ac
a2 67 35 00 00 c4 41 7c  10 32 c4 01 7c 10 34 22
c4 01 7c 10 7c 22 10 c4  01 7c 10 5c 62 11 c4 01
7c 10 94 a2 67 35 00 00
     0:movups %xmm0,%xmm3
     3:movups %xmm1,%xmm2
     6:movups %xmm3,%xmm12
     a:movups %xmm4,%xmm13
     e:movups %xmm11,%xmm0
    12:movups %xmm12,%xmm0
    16:movups %xmm14,%xmm10
    1a:movups %xmm15,%xmm12
    1e:movups (%r10),%xmm5
    22:movups (%r10,%r12,1),%xmm2
    27:movups 0x10(%r10,%r12,1),%xmm3
    2d:movups 0x11(%r10,%r12,2),%xmm4
    33:movups 0x3567(%r10,%r12,4),%xmm0
    3c:movups (%r10),%xmm10
    40:movups (%r10,%r12,1),%xmm11
    45:movups 0x10(%r10,%r12,1),%xmm12
    4b:movups 0x11(%r10,%r12,2),%xmm13
    51:movups 0x3567(%r10,%r12,4),%xmm14
    5a:vmovups %ymm0,%ymm3
    5e:vmovups %ymm1,%ymm2
    62:vmovups %ymm3,%ymm12
    66:vmovups %ymm4,%ymm13
    6a:vmovups %ymm11,%ymm0
    6e:vmovups %ymm12,%ymm0
    72:vmovups %ymm14,%ymm10
    77:vmovups %ymm15,%ymm12
    7c:vmovups (%r10),%ymm1
    81:vmovups (%r10,%r12,1),%ymm5
    87:vmovups 0x10(%r10,%r12,1),%ymm3
    8e:vmovups 0x11(%r10,%r12,2),%ymm4
    95:vmovups 0x3567(%r10,%r12,4),%ymm0
    9f:vmovups (%r10),%ymm10
    a4:vmovups (%r10,%r12,1),%ymm11
    aa:vmovups 0x10(%r10,%r12,1),%ymm5
    b1:vmovups 0x11(%r10,%r12,2),%ymm13
    b8:vmovups 0x3567(%r10,%r12,4),%ymm14
    c2:vmovups (%r10),%ymm15
    c7:vmovups (%r10,%r12,1),%ymm15
    cd:vmovups 0x10(%r10,%r12,1),%ymm3
    d4:vmovups 0x11(%r10,%r12,2),%ymm14
    db:vmovups 0x3567(%r10,%r12,4),%ymm13
    e5:vmovups (%r10),%ymm14
    ea:vmovups (%r10,%r12,1),%ymm14
    f0:vmovups 0x10(%r10,%r12,1),%ymm15
    f7:vmovups 0x11(%r10,%r12,2),%ymm11
    fe:vmovups 0x3567(%r10,%r12,4),%ymm10
#################
TODO: elf/file.cpp:186

328:0
#################
TODO: elf/file.cpp:252

328:0

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



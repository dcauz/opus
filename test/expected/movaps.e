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
0f 28 d8 0f 28 d1 44 0f  28 e3 44 0f 28 ec 41 0f
28 c3 41 0f 28 c4 45 0f  28 d6 45 0f 28 e7 41 0f
28 2a 43 0f 28 14 22 43  0f 28 5c 22 10 43 0f 28
64 62 11 43 0f 28 84 a2  67 35 00 00 45 0f 28 12
47 0f 28 1c 22 47 0f 28  64 22 10 47 0f 28 6c 62
11 47 0f 28 b4 a2 67 35  00 00 c5 fc 28 d8 c5 fc
28 d1 c5 7c 28 e3 c5 7c  28 ec c5 7c 29 d8 c5 7c
29 e0 c4 41 7c 28 d6 c4  41 7c 28 e7 c4 c1 7c 28
0a c4 81 7c 28 2c 22 c4  81 7c 28 5c 22 10 c4 81
7c 28 64 62 11 c4 81 7c  28 84 a2 67 35 00 00 c4
41 7c 28 12 c4 01 7c 28  1c 22 c4 81 7c 28 6c 22
10 c4 01 7c 28 6c 62 11  c4 01 7c 28 b4 a2 67 35
00 00 c4 41 7c 28 3a c4  01 7c 28 3c 22 c4 81 7c
28 5c 22 10 c4 01 7c 28  74 62 11 c4 01 7c 28 ac
a2 67 35 00 00 c4 41 7c  28 32 c4 01 7c 28 34 22
c4 01 7c 28 7c 22 10 c4  01 7c 28 5c 62 11 c4 01
7c 28 94 a2 67 35 00 00
     0:movaps %xmm0,%xmm3
     3:movaps %xmm1,%xmm2
     6:movaps %xmm3,%xmm12
     a:movaps %xmm4,%xmm13
     e:movaps %xmm11,%xmm0
    12:movaps %xmm12,%xmm0
    16:movaps %xmm14,%xmm10
    1a:movaps %xmm15,%xmm12
    1e:movaps (%r10),%xmm5
    22:movaps (%r10,%r12,1),%xmm2
    27:movaps 0x10(%r10,%r12,1),%xmm3
    2d:movaps 0x11(%r10,%r12,2),%xmm4
    33:movaps 0x3567(%r10,%r12,4),%xmm0
    3c:movaps (%r10),%xmm10
    40:movaps (%r10,%r12,1),%xmm11
    45:movaps 0x10(%r10,%r12,1),%xmm12
    4b:movaps 0x11(%r10,%r12,2),%xmm13
    51:movaps 0x3567(%r10,%r12,4),%xmm14
    5a:vmovaps %ymm0,%ymm3
    5e:vmovaps %ymm1,%ymm2
    62:vmovaps %ymm3,%ymm12
    66:vmovaps %ymm4,%ymm13
    6a:vmovaps %ymm11,%ymm0
    6e:vmovaps %ymm12,%ymm0
    72:vmovaps %ymm14,%ymm10
    77:vmovaps %ymm15,%ymm12
    7c:vmovaps (%r10),%ymm1
    81:vmovaps (%r10,%r12,1),%ymm5
    87:vmovaps 0x10(%r10,%r12,1),%ymm3
    8e:vmovaps 0x11(%r10,%r12,2),%ymm4
    95:vmovaps 0x3567(%r10,%r12,4),%ymm0
    9f:vmovaps (%r10),%ymm10
    a4:vmovaps (%r10,%r12,1),%ymm11
    aa:vmovaps 0x10(%r10,%r12,1),%ymm5
    b1:vmovaps 0x11(%r10,%r12,2),%ymm13
    b8:vmovaps 0x3567(%r10,%r12,4),%ymm14
    c2:vmovaps (%r10),%ymm15
    c7:vmovaps (%r10,%r12,1),%ymm15
    cd:vmovaps 0x10(%r10,%r12,1),%ymm3
    d4:vmovaps 0x11(%r10,%r12,2),%ymm14
    db:vmovaps 0x3567(%r10,%r12,4),%ymm13
    e5:vmovaps (%r10),%ymm14
    ea:vmovaps (%r10,%r12,1),%ymm14
    f0:vmovaps 0x10(%r10,%r12,1),%ymm15
    f7:vmovaps 0x11(%r10,%r12,2),%ymm11
    fe:vmovaps 0x3567(%r10,%r12,4),%ymm10
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



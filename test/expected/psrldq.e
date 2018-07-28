class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 632
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
size:     424
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   488
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
offset:   488
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
offset:   585
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
offset:   488
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
offset:   584
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 41 0f 73 da 00 66 0f  73 d9 00 66 41 0f 73 de
02 66 41 0f 73 da 00 66  0f 73 d9 02 66 0f 73 d9
04 66 0f 73 d9 06 66 0f  73 d9 08 66 0f 73 d9 0a
66 0f 73 d9 0c 66 0f 73  d9 0e 66 0f 73 d9 12 66
0f 73 d9 24 66 0f 73 d9  48 66 0f 73 d9 7f 66 0f
73 d9 89 66 0f 73 d9 ed  c4 c1 19 73 da 00 c4 c1
29 73 da 01 c4 c1 41 73  da 02 c5 e9 73 d9 05 62
d1 1d 08 73 1a 01 c4 c1  19 73 de 02 62 d1 1d 08
73 1a 03 c4 c1 19 73 da  00 c5 e9 73 d9 02 c5 e9
73 d9 04 c5 e9 73 d9 06  c5 e9 73 d9 08 c5 e9 73
d9 0a c5 e9 73 d9 0c c5  e9 73 d9 0e c5 e9 73 d9
12 c5 e9 73 d9 24 c5 e9  73 d9 48 c5 e9 73 d9 7f
c5 e9 73 d9 89 c5 e9 73  d9 ed c5 ed 73 d9 00 62
d1 1d 28 73 1a 01 c4 c1  1d 73 de 02 62 d1 1d 28
73 1a 03 c4 c1 1d 73 da  00 c5 ed 73 d9 02 c5 ed
73 d9 04 c5 ed 73 d9 06  c5 ed 73 d9 08 c5 ed 73
d9 0a c5 ed 73 d9 0c c5  ed 73 d9 0e c5 ed 73 d9
12 c5 ed 73 d9 24 c5 ed  73 d9 48 c5 ed 73 d9 7f
c5 ed 73 d9 89 c5 ed 73  d9 ed 62 f1 6d 48 73 d9
00 62 d1 1d 48 73 1a 01  62 d1 1d 48 73 de 02 62
d1 1d 48 73 1a 03 62 d1  1d 48 73 da 00 62 f1 6d
48 73 d9 02 62 f1 6d 48  73 d9 04 62 f1 6d 48 73
d9 06 62 f1 6d 48 73 d9  08 62 f1 6d 48 73 d9 0a
62 f1 6d 48 73 d9 0c 62  f1 6d 48 73 d9 0e 62 f1
6d 48 73 d9 12 62 f1 6d  48 73 d9 24 62 f1 6d 48
73 d9 48 62 f1 6d 48 73  d9 7f 62 f1 6d 48 73 d9
89 62 f1 6d 48 73 d9 ed
     0:psrldq $0x0,%xmm10
     6:psrldq $0x0,%xmm1
     b:psrldq $0x2,%xmm14
    11:psrldq $0x0,%xmm10
    17:psrldq $0x2,%xmm1
    1c:psrldq $0x4,%xmm1
    21:psrldq $0x6,%xmm1
    26:psrldq $0x8,%xmm1
    2b:psrldq $0xa,%xmm1
    30:psrldq $0xc,%xmm1
    35:psrldq $0xe,%xmm1
    3a:psrldq $0x12,%xmm1
    3f:psrldq $0x24,%xmm1
    44:psrldq $0x48,%xmm1
    49:psrldq $0x7f,%xmm1
    4e:psrldq $0x89,%xmm1
    53:psrldq $0xed,%xmm1
    58:vpsrldq $0x0,%xmm10,%xmm12
    5e:vpsrldq $0x1,%xmm10,%xmm10
    64:vpsrldq $0x2,%xmm10,%xmm7
    6a:vpsrldq $0x5,%xmm1,%xmm2
    6f:vpsrldq $0x1,(%r10),%xmm12
    76:vpsrldq $0x2,%xmm14,%xmm12
    7c:vpsrldq $0x3,(%r10),%xmm12
    83:vpsrldq $0x0,%xmm10,%xmm12
    89:vpsrldq $0x2,%xmm1,%xmm2
    8e:vpsrldq $0x4,%xmm1,%xmm2
    93:vpsrldq $0x6,%xmm1,%xmm2
    98:vpsrldq $0x8,%xmm1,%xmm2
    9d:vpsrldq $0xa,%xmm1,%xmm2
    a2:vpsrldq $0xc,%xmm1,%xmm2
    a7:vpsrldq $0xe,%xmm1,%xmm2
    ac:vpsrldq $0x12,%xmm1,%xmm2
    b1:vpsrldq $0x24,%xmm1,%xmm2
    b6:vpsrldq $0x48,%xmm1,%xmm2
    bb:vpsrldq $0x7f,%xmm1,%xmm2
    c0:vpsrldq $0x89,%xmm1,%xmm2
    c5:vpsrldq $0xed,%xmm1,%xmm2
    ca:vpsrldq $0x0,%ymm1,%ymm2
    cf:vpsrldq $0x1,(%r10),%ymm12
    d6:vpsrldq $0x2,%ymm14,%ymm12
    dc:vpsrldq $0x3,(%r10),%ymm12
    e3:vpsrldq $0x0,%ymm10,%ymm12
    e9:vpsrldq $0x2,%ymm1,%ymm2
    ee:vpsrldq $0x4,%ymm1,%ymm2
    f3:vpsrldq $0x6,%ymm1,%ymm2
    f8:vpsrldq $0x8,%ymm1,%ymm2
    fd:vpsrldq $0xa,%ymm1,%ymm2
   102:vpsrldq $0xc,%ymm1,%ymm2
   107:vpsrldq $0xe,%ymm1,%ymm2
   10c:vpsrldq $0x12,%ymm1,%ymm2
   111:vpsrldq $0x24,%ymm1,%ymm2
   116:vpsrldq $0x48,%ymm1,%ymm2
   11b:vpsrldq $0x7f,%ymm1,%ymm2
   120:vpsrldq $0x89,%ymm1,%ymm2
   125:vpsrldq $0xed,%ymm1,%ymm2
   12a:vpsrldq $0x0,%zmm1,%zmm2
   131:vpsrldq $0x1,(%r10),%zmm12
   138:vpsrldq $0x2,%zmm14,%zmm12
   13f:vpsrldq $0x3,(%r10),%zmm12
   146:vpsrldq $0x0,%zmm10,%zmm12
   14d:vpsrldq $0x2,%zmm1,%zmm2
   154:vpsrldq $0x4,%zmm1,%zmm2
   15b:vpsrldq $0x6,%zmm1,%zmm2
   162:vpsrldq $0x8,%zmm1,%zmm2
   169:vpsrldq $0xa,%zmm1,%zmm2
   170:vpsrldq $0xc,%zmm1,%zmm2
   177:vpsrldq $0xe,%zmm1,%zmm2
   17e:vpsrldq $0x12,%zmm1,%zmm2
   185:vpsrldq $0x24,%zmm1,%zmm2
   18c:vpsrldq $0x48,%zmm1,%zmm2
   193:vpsrldq $0x7f,%zmm1,%zmm2
   19a:vpsrldq $0x89,%zmm1,%zmm2
   1a1:vpsrldq $0xed,%zmm1,%zmm2
#################
TODO: elf/file.cpp:186

488:0
#################
TODO: elf/file.cpp:252

488:0

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



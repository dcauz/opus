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
66 41 0f 73 fa 00 66 0f  73 f9 00 66 41 0f 73 fe
02 66 41 0f 73 fa 00 66  0f 73 f9 02 66 0f 73 f9
04 66 0f 73 f9 06 66 0f  73 f9 08 66 0f 73 f9 0a
66 0f 73 f9 0c 66 0f 73  f9 0e 66 0f 73 f9 12 66
0f 73 f9 24 66 0f 73 f9  48 66 0f 73 f9 7f 66 0f
73 f9 89 66 0f 73 f9 ed  c4 c1 19 73 fa 00 c4 c1
29 73 fa 01 c4 c1 41 73  fa 02 c5 e9 73 f9 05 62
d1 1d 08 73 3a 01 c4 c1  19 73 fe 02 62 d1 1d 08
73 3a 03 c4 c1 19 73 fa  00 c5 e9 73 f9 02 c5 e9
73 f9 04 c5 e9 73 f9 06  c5 e9 73 f9 08 c5 e9 73
f9 0a c5 e9 73 f9 0c c5  e9 73 f9 0e c5 e9 73 f9
12 c5 e9 73 f9 24 c5 e9  73 f9 48 c5 e9 73 f9 7f
c5 e9 73 f9 89 c5 e9 73  f9 ed c5 ed 73 f9 00 62
d1 1d 28 73 3a 01 c4 c1  1d 73 fe 02 62 d1 1d 28
73 3a 03 c4 c1 1d 73 fa  00 c5 ed 73 f9 02 c5 ed
73 f9 04 c5 ed 73 f9 06  c5 ed 73 f9 08 c5 ed 73
f9 0a c5 ed 73 f9 0c c5  ed 73 f9 0e c5 ed 73 f9
12 c5 ed 73 f9 24 c5 ed  73 f9 48 c5 ed 73 f9 7f
c5 ed 73 f9 89 c5 ed 73  f9 ed 62 f1 6d 48 73 f9
00 62 d1 1d 48 73 3a 01  62 d1 1d 48 73 fe 02 62
d1 1d 48 73 3a 03 62 d1  1d 48 73 fa 00 62 f1 6d
48 73 f9 02 62 f1 6d 48  73 f9 04 62 f1 6d 48 73
f9 06 62 f1 6d 48 73 f9  08 62 f1 6d 48 73 f9 0a
62 f1 6d 48 73 f9 0c 62  f1 6d 48 73 f9 0e 62 f1
6d 48 73 f9 12 62 f1 6d  48 73 f9 24 62 f1 6d 48
73 f9 48 62 f1 6d 48 73  f9 7f 62 f1 6d 48 73 f9
89 62 f1 6d 48 73 f9 ed
     0:pslldq $0x0,%xmm10
     6:pslldq $0x0,%xmm1
     b:pslldq $0x2,%xmm14
    11:pslldq $0x0,%xmm10
    17:pslldq $0x2,%xmm1
    1c:pslldq $0x4,%xmm1
    21:pslldq $0x6,%xmm1
    26:pslldq $0x8,%xmm1
    2b:pslldq $0xa,%xmm1
    30:pslldq $0xc,%xmm1
    35:pslldq $0xe,%xmm1
    3a:pslldq $0x12,%xmm1
    3f:pslldq $0x24,%xmm1
    44:pslldq $0x48,%xmm1
    49:pslldq $0x7f,%xmm1
    4e:pslldq $0x89,%xmm1
    53:pslldq $0xed,%xmm1
    58:vpslldq $0x0,%xmm10,%xmm12
    5e:vpslldq $0x1,%xmm10,%xmm10
    64:vpslldq $0x2,%xmm10,%xmm7
    6a:vpslldq $0x5,%xmm1,%xmm2
    6f:vpslldq $0x1,(%r10),%xmm12
    76:vpslldq $0x2,%xmm14,%xmm12
    7c:vpslldq $0x3,(%r10),%xmm12
    83:vpslldq $0x0,%xmm10,%xmm12
    89:vpslldq $0x2,%xmm1,%xmm2
    8e:vpslldq $0x4,%xmm1,%xmm2
    93:vpslldq $0x6,%xmm1,%xmm2
    98:vpslldq $0x8,%xmm1,%xmm2
    9d:vpslldq $0xa,%xmm1,%xmm2
    a2:vpslldq $0xc,%xmm1,%xmm2
    a7:vpslldq $0xe,%xmm1,%xmm2
    ac:vpslldq $0x12,%xmm1,%xmm2
    b1:vpslldq $0x24,%xmm1,%xmm2
    b6:vpslldq $0x48,%xmm1,%xmm2
    bb:vpslldq $0x7f,%xmm1,%xmm2
    c0:vpslldq $0x89,%xmm1,%xmm2
    c5:vpslldq $0xed,%xmm1,%xmm2
    ca:vpslldq $0x0,%ymm1,%ymm2
    cf:vpslldq $0x1,(%r10),%ymm12
    d6:vpslldq $0x2,%ymm14,%ymm12
    dc:vpslldq $0x3,(%r10),%ymm12
    e3:vpslldq $0x0,%ymm10,%ymm12
    e9:vpslldq $0x2,%ymm1,%ymm2
    ee:vpslldq $0x4,%ymm1,%ymm2
    f3:vpslldq $0x6,%ymm1,%ymm2
    f8:vpslldq $0x8,%ymm1,%ymm2
    fd:vpslldq $0xa,%ymm1,%ymm2
   102:vpslldq $0xc,%ymm1,%ymm2
   107:vpslldq $0xe,%ymm1,%ymm2
   10c:vpslldq $0x12,%ymm1,%ymm2
   111:vpslldq $0x24,%ymm1,%ymm2
   116:vpslldq $0x48,%ymm1,%ymm2
   11b:vpslldq $0x7f,%ymm1,%ymm2
   120:vpslldq $0x89,%ymm1,%ymm2
   125:vpslldq $0xed,%ymm1,%ymm2
   12a:vpslldq $0x0,%zmm1,%zmm2
   131:vpslldq $0x1,(%r10),%zmm12
   138:vpslldq $0x2,%zmm14,%zmm12
   13f:vpslldq $0x3,(%r10),%zmm12
   146:vpslldq $0x0,%zmm10,%zmm12
   14d:vpslldq $0x2,%zmm1,%zmm2
   154:vpslldq $0x4,%zmm1,%zmm2
   15b:vpslldq $0x6,%zmm1,%zmm2
   162:vpslldq $0x8,%zmm1,%zmm2
   169:vpslldq $0xa,%zmm1,%zmm2
   170:vpslldq $0xc,%zmm1,%zmm2
   177:vpslldq $0xe,%zmm1,%zmm2
   17e:vpslldq $0x12,%zmm1,%zmm2
   185:vpslldq $0x24,%zmm1,%zmm2
   18c:vpslldq $0x48,%zmm1,%zmm2
   193:vpslldq $0x7f,%zmm1,%zmm2
   19a:vpslldq $0x89,%zmm1,%zmm2
   1a1:vpslldq $0xed,%zmm1,%zmm2
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



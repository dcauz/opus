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
size:     417
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   481
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
offset:   481
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
41 0f 7e 02 0f 7e 09 0f  7e 19 0f 7e 29 0f 7e 39
0f 7f 01 41 0f 7f 0a 0f  7f 19 0f 7f 29 0f 7f 39
41 0f 6e 02 41 0f 6e 0a  0f 6e 1a 41 0f 6e 2a 41
0f 6e 3a 41 0f 6f 02 41  0f 6f 0a 0f 6f 1a 41 0f
6f 2a 41 0f 6f 3a 66 0f  7e 01 66 0f 7e 09 66 0f
7e 19 66 0f 7e 29 66 0f  7e 39 66 0f d6 01 66 0f
d6 09 66 0f d6 19 66 0f  d6 29 66 0f d6 39 66 41
0f 6e 02 66 0f 6e 0a 66  41 0f 6e 1a 66 41 0f 6e
2a 66 41 0f 6e 3a f3 41  0f 7e 02 f3 41 0f 7e 0a
f3 0f 7e 1e f3 41 0f 7e  2a f3 41 0f 7e 3a c5 f9
7e 01 c5 f9 7e 09 c5 f9  7e 19 c4 c1 79 7e 2c 24
c5 f9 7e 39 62 61 7d 08  7e 39 c5 f9 d6 01 c5 f9
d6 09 c5 f9 d6 19 c5 f9  d6 29 c5 f9 d6 39 62 61
fd 08 7e 39 c4 c1 79 6e  02 c4 c1 79 6e 0a c4 c1
79 6e 1a c4 c1 79 6e 2a  c5 f9 6e 3a 62 41 7d 08
6e 3a c4 c1 7a 7e 02 c4  c1 7a 7e 0a c4 c1 7a 7e
12 c4 c1 7a 7e 1a c4 c1  7a 7e 22 c5 fa 7e 2a c4
c1 7a 7e 32 c4 c1 7a 7e  3a c4 41 7a 7e 02 c4 41
7a 7e 0a c4 41 7a 7e 12  c4 41 7a 7e 1a c4 41 7a
7e 22 c4 41 7a 7e 2a c4  41 7a 7e 32 c4 41 7a 7e
3a 62 c1 fd 08 6e 02 62  c1 fd 08 6e 0a 62 c1 fd
08 6e 12 62 c1 fd 08 6e  1a 62 c1 fd 08 6e 22 62
c1 fd 08 6e 2a 62 c1 fd  08 6e 32 62 c1 fd 08 6e
3a 62 41 fd 08 6e 02 62  41 fd 08 6e 0a 62 41 fd
08 6e 12 62 41 fd 08 6e  1a 62 41 fd 08 6e 22 62
61 fd 08 6e 2e 62 41 fd  08 6e 32 62 41 fd 08 6e
3a
     0:movd %mm0,(%r10)
     4:movd %mm1,(%rcx)
     7:movd %mm3,(%rcx)
     a:movd %mm5,(%rcx)
     d:movd %mm7,(%rcx)
    10:movq %mm0,(%rcx)
    13:movq %mm1,(%r10)
    17:movq %mm3,(%rcx)
    1a:movq %mm5,(%rcx)
    1d:movq %mm7,(%rcx)
    20:movd (%r10),%mm0
    24:movd (%r10),%mm1
    28:movd (%rdx),%mm3
    2b:movd (%r10),%mm5
    2f:movd (%r10),%mm7
    33:movq (%r10),%mm0
    37:movq (%r10),%mm1
    3b:movq (%rdx),%mm3
    3e:movq (%r10),%mm5
    42:movq (%r10),%mm7
    46:movd %xmm0,(%rcx)
    4a:movd %xmm1,(%rcx)
    4e:movd %xmm3,(%rcx)
    52:movd %xmm5,(%rcx)
    56:movd %xmm7,(%rcx)
    5a:movq %xmm0,(%rcx)
    5e:movq %xmm1,(%rcx)
    62:movq %xmm3,(%rcx)
    66:movq %xmm5,(%rcx)
    6a:movq %xmm7,(%rcx)
    6e:movd (%r10),%xmm0
    73:movd (%rdx),%xmm1
    77:movd (%r10),%xmm3
    7c:movd (%r10),%xmm5
    81:movd (%r10),%xmm7
    86:movq (%r10),%xmm0
    8b:movq (%r10),%xmm1
    90:movq (%rsi),%xmm3
    94:movq (%r10),%xmm5
    99:movq (%r10),%xmm7
    9e:vmovd %xmm0,(%rcx)
    a2:vmovd %xmm1,(%rcx)
    a6:vmovd %xmm3,(%rcx)
    aa:vmovd %xmm5,(%r12)
    b0:vmovd %xmm7,(%rcx)
    b4:vmovd %xmm31,(%rcx)
    ba:vmovq %xmm0,(%rcx)
    be:vmovq %xmm1,(%rcx)
    c2:vmovq %xmm3,(%rcx)
    c6:vmovq %xmm5,(%rcx)
    ca:vmovq %xmm7,(%rcx)
    ce:vmovq %xmm31,(%rcx)
    d4:vmovd (%r10),%xmm0
    d9:vmovd (%r10),%xmm1
    de:vmovd (%r10),%xmm3
    e3:vmovd (%r10),%xmm5
    e8:vmovd (%rdx),%xmm7
    ec:vmovd (%r10),%xmm31
    f2:vmovq (%r10),%xmm0
    f7:vmovq (%r10),%xmm1
    fc:vmovq (%r10),%xmm2
   101:vmovq (%r10),%xmm3
   106:vmovq (%r10),%xmm4
   10b:vmovq (%rdx),%xmm5
   10f:vmovq (%r10),%xmm6
   114:vmovq (%r10),%xmm7
   119:vmovq (%r10),%xmm8
   11e:vmovq (%r10),%xmm9
   123:vmovq (%r10),%xmm10
   128:vmovq (%r10),%xmm11
   12d:vmovq (%r10),%xmm12
   132:vmovq (%r10),%xmm13
   137:vmovq (%r10),%xmm14
   13c:vmovq (%r10),%xmm15
   141:vmovq (%r10),%xmm16
   147:vmovq (%r10),%xmm17
   14d:vmovq (%r10),%xmm18
   153:vmovq (%r10),%xmm19
   159:vmovq (%r10),%xmm20
   15f:vmovq (%r10),%xmm21
   165:vmovq (%r10),%xmm22
   16b:vmovq (%r10),%xmm23
   171:vmovq (%r10),%xmm24
   177:vmovq (%r10),%xmm25
   17d:vmovq (%r10),%xmm26
   183:vmovq (%r10),%xmm27
   189:vmovq (%r10),%xmm28
   18f:vmovq (%rsi),%xmm29
   195:vmovq (%r10),%xmm30
   19b:vmovq (%r10),%xmm31

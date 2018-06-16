class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 600
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
size:     386
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   450
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
offset:   450
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
offset:   553
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
offset:   456
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
offset:   552
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 38 3c fa 66 41 0f  38 3c 02 66 0f ee fa 66
41 0f ee 02 62 12 05 00  3c 54 22 01 c4 82 51 3c
5c 22 10 c4 82 51 3c 5c  22 10 62 12 05 20 3c 94
22 10 00 00 00 c4 82 55  3c 5c 22 10 c4 82 55 3c
5c 22 10 62 12 55 40 3c  94 a2 67 35 00 00 62 92
55 48 3c 14 22 62 d2 55  48 3c 0a 62 72 35 00 3c
d7 62 42 7d 28 3c e5 62  02 5d 40 3c ec 62 12 05
00 3d 54 22 01 c4 82 51  3d 5c 22 10 c4 82 51 3d
5c 22 10 62 12 05 20 3d  94 22 10 00 00 00 c4 82
55 3d 5c 22 10 c4 82 55  3d 5c 22 10 62 12 55 40
3d 94 a2 67 35 00 00 62  92 55 48 3d 14 22 62 d2
55 48 3d 0a 62 72 35 00  3d d7 62 42 7d 28 3d e5
62 02 5d 40 3d ec 62 11  05 00 ee 54 22 01 c4 81
51 ee 5c 22 10 c4 81 51  ee 5c 22 10 62 11 05 20
ee 94 22 10 00 00 00 c4  81 55 ee 5c 22 10 c4 81
55 ee 5c 22 10 62 11 55  40 ee 94 a2 67 35 00 00
62 91 55 48 ee 14 22 62  d1 55 48 ee 0a 62 71 35
00 ee d7 62 41 7d 28 ee  e5 62 01 5d 40 ee ec 62
12 85 00 3d 54 22 01 62  92 d5 08 3d 5c 22 01 62
92 d5 08 3d 5c 22 01 62  12 85 20 3d 94 22 10 00
00 00 62 92 d5 28 3d 9c  22 10 00 00 00 62 92 d5
28 3d 9c 22 10 00 00 00  62 12 d5 40 3d 94 a2 67
35 00 00 62 92 d5 48 3d  14 22 62 d2 d5 48 3d 0a
62 72 b5 00 3d d7 62 42  fd 28 3d e5 62 02 dd 40
3d ec
     0:pmaxsb %xmm2,%xmm7
     5:pmaxsb (%r10),%xmm0
     b:pmaxsw %xmm2,%xmm7
     f:pmaxsw (%r10),%xmm0
    14:vpmaxsb 0x10(%r10,%r12,1),%xmm31,%xmm10
    1c:vpmaxsb 0x10(%r10,%r12,1),%xmm5,%xmm3
    23:vpmaxsb 0x10(%r10,%r12,1),%xmm5,%xmm3
    2a:vpmaxsb 0x10(%r10,%r12,1),%ymm31,%ymm10
    35:vpmaxsb 0x10(%r10,%r12,1),%ymm5,%ymm3
    3c:vpmaxsb 0x10(%r10,%r12,1),%ymm5,%ymm3
    43:vpmaxsb 0x3567(%r10,%r12,4),%zmm21,%zmm10
    4e:vpmaxsb (%r10,%r12,1),%zmm5,%zmm2
    55:vpmaxsb (%r10),%zmm5,%zmm1
    5b:vpmaxsb %xmm7,%xmm25,%xmm10
    61:vpmaxsb %ymm13,%ymm0,%ymm28
    67:vpmaxsb %zmm28,%zmm20,%zmm29
    6d:vpmaxsd 0x10(%r10,%r12,1),%xmm31,%xmm10
    75:vpmaxsd 0x10(%r10,%r12,1),%xmm5,%xmm3
    7c:vpmaxsd 0x10(%r10,%r12,1),%xmm5,%xmm3
    83:vpmaxsd 0x10(%r10,%r12,1),%ymm31,%ymm10
    8e:vpmaxsd 0x10(%r10,%r12,1),%ymm5,%ymm3
    95:vpmaxsd 0x10(%r10,%r12,1),%ymm5,%ymm3
    9c:vpmaxsd 0x3567(%r10,%r12,4),%zmm21,%zmm10
    a7:vpmaxsd (%r10,%r12,1),%zmm5,%zmm2
    ae:vpmaxsd (%r10),%zmm5,%zmm1
    b4:vpmaxsd %xmm7,%xmm25,%xmm10
    ba:vpmaxsd %ymm13,%ymm0,%ymm28
    c0:vpmaxsd %zmm28,%zmm20,%zmm29
    c6:vpmaxsw 0x10(%r10,%r12,1),%xmm31,%xmm10
    ce:vpmaxsw 0x10(%r10,%r12,1),%xmm5,%xmm3
    d5:vpmaxsw 0x10(%r10,%r12,1),%xmm5,%xmm3
    dc:vpmaxsw 0x10(%r10,%r12,1),%ymm31,%ymm10
    e7:vpmaxsw 0x10(%r10,%r12,1),%ymm5,%ymm3
    ee:vpmaxsw 0x10(%r10,%r12,1),%ymm5,%ymm3
    f5:vpmaxsw 0x3567(%r10,%r12,4),%zmm21,%zmm10
   100:vpmaxsw (%r10,%r12,1),%zmm5,%zmm2
   107:vpmaxsw (%r10),%zmm5,%zmm1
   10d:vpmaxsw %xmm7,%xmm25,%xmm10
   113:vpmaxsw %ymm13,%ymm0,%ymm28
   119:vpmaxsw %zmm28,%zmm20,%zmm29
   11f:vpmaxsq 0x10(%r10,%r12,1),%xmm31,%xmm10
   127:vpmaxsq 0x10(%r10,%r12,1),%xmm5,%xmm3
   12f:vpmaxsq 0x10(%r10,%r12,1),%xmm5,%xmm3
   137:vpmaxsq 0x10(%r10,%r12,1),%ymm31,%ymm10
   142:vpmaxsq 0x10(%r10,%r12,1),%ymm5,%ymm3
   14d:vpmaxsq 0x10(%r10,%r12,1),%ymm5,%ymm3
   158:vpmaxsq 0x3567(%r10,%r12,4),%zmm21,%zmm10
   163:vpmaxsq (%r10,%r12,1),%zmm5,%zmm2
   16a:vpmaxsq (%r10),%zmm5,%zmm1
   170:vpmaxsq %xmm7,%xmm25,%xmm10
   176:vpmaxsq %ymm13,%ymm0,%ymm28
   17c:vpmaxsq %zmm28,%zmm20,%zmm29
#################
TODO: elf/file.cpp:186

450:0
#################
TODO: elf/file.cpp:252

450:0

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



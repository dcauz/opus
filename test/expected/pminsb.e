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
66 0f 38 38 fa 66 41 0f  38 38 02 66 0f ea fa 66
41 0f ea 02 62 12 05 00  38 54 22 01 c4 82 51 38
5c 22 10 c4 82 51 38 5c  22 10 62 12 05 20 38 94
22 10 00 00 00 c4 82 55  38 5c 22 10 c4 82 55 38
5c 22 10 62 12 55 40 38  94 a2 67 35 00 00 62 92
55 48 38 14 22 62 d2 55  48 38 0a 62 72 35 00 38
d7 62 42 7d 28 38 e5 62  02 5d 40 38 ec 62 12 05
00 39 54 22 01 c4 82 51  39 5c 22 10 c4 82 51 39
5c 22 10 62 12 05 20 39  94 22 10 00 00 00 c4 82
55 39 5c 22 10 c4 82 55  39 5c 22 10 62 12 55 40
39 94 a2 67 35 00 00 62  92 55 48 39 14 22 62 d2
55 48 39 0a 62 72 35 00  39 d7 62 42 7d 28 39 e5
62 02 5d 40 39 ec 62 11  05 00 ea 54 22 01 c4 81
51 ea 5c 22 10 c4 81 51  ea 5c 22 10 62 11 05 20
ea 94 22 10 00 00 00 c4  81 55 ea 5c 22 10 c4 81
55 ea 5c 22 10 62 11 55  40 ea 94 a2 67 35 00 00
62 91 55 48 ea 14 22 62  d1 55 48 ea 0a 62 71 35
00 ea d7 62 41 7d 28 ea  e5 62 01 5d 40 ea ec 62
12 85 00 39 54 22 01 62  92 d5 08 39 5c 22 01 62
92 d5 08 39 5c 22 01 62  12 85 20 39 94 22 10 00
00 00 62 92 d5 28 39 9c  22 10 00 00 00 62 92 d5
28 39 9c 22 10 00 00 00  62 12 d5 40 39 94 a2 67
35 00 00 62 92 d5 48 39  14 22 62 d2 d5 48 39 0a
62 72 b5 00 39 d7 62 42  fd 28 39 e5 62 02 dd 40
39 ec
     0:pminsb %xmm2,%xmm7
     5:pminsb (%r10),%xmm0
     b:pminsw %xmm2,%xmm7
     f:pminsw (%r10),%xmm0
    14:vpminsb 0x10(%r10,%r12,1),%xmm31,%xmm10
    1c:vpminsb 0x10(%r10,%r12,1),%xmm5,%xmm3
    23:vpminsb 0x10(%r10,%r12,1),%xmm5,%xmm3
    2a:vpminsb 0x10(%r10,%r12,1),%ymm31,%ymm10
    35:vpminsb 0x10(%r10,%r12,1),%ymm5,%ymm3
    3c:vpminsb 0x10(%r10,%r12,1),%ymm5,%ymm3
    43:vpminsb 0x3567(%r10,%r12,4),%zmm21,%zmm10
    4e:vpminsb (%r10,%r12,1),%zmm5,%zmm2
    55:vpminsb (%r10),%zmm5,%zmm1
    5b:vpminsb %xmm7,%xmm25,%xmm10
    61:vpminsb %ymm13,%ymm0,%ymm28
    67:vpminsb %zmm28,%zmm20,%zmm29
    6d:vpminsd 0x10(%r10,%r12,1),%xmm31,%xmm10
    75:vpminsd 0x10(%r10,%r12,1),%xmm5,%xmm3
    7c:vpminsd 0x10(%r10,%r12,1),%xmm5,%xmm3
    83:vpminsd 0x10(%r10,%r12,1),%ymm31,%ymm10
    8e:vpminsd 0x10(%r10,%r12,1),%ymm5,%ymm3
    95:vpminsd 0x10(%r10,%r12,1),%ymm5,%ymm3
    9c:vpminsd 0x3567(%r10,%r12,4),%zmm21,%zmm10
    a7:vpminsd (%r10,%r12,1),%zmm5,%zmm2
    ae:vpminsd (%r10),%zmm5,%zmm1
    b4:vpminsd %xmm7,%xmm25,%xmm10
    ba:vpminsd %ymm13,%ymm0,%ymm28
    c0:vpminsd %zmm28,%zmm20,%zmm29
    c6:vpminsw 0x10(%r10,%r12,1),%xmm31,%xmm10
    ce:vpminsw 0x10(%r10,%r12,1),%xmm5,%xmm3
    d5:vpminsw 0x10(%r10,%r12,1),%xmm5,%xmm3
    dc:vpminsw 0x10(%r10,%r12,1),%ymm31,%ymm10
    e7:vpminsw 0x10(%r10,%r12,1),%ymm5,%ymm3
    ee:vpminsw 0x10(%r10,%r12,1),%ymm5,%ymm3
    f5:vpminsw 0x3567(%r10,%r12,4),%zmm21,%zmm10
   100:vpminsw (%r10,%r12,1),%zmm5,%zmm2
   107:vpminsw (%r10),%zmm5,%zmm1
   10d:vpminsw %xmm7,%xmm25,%xmm10
   113:vpminsw %ymm13,%ymm0,%ymm28
   119:vpminsw %zmm28,%zmm20,%zmm29
   11f:vpminsq 0x10(%r10,%r12,1),%xmm31,%xmm10
   127:vpminsq 0x10(%r10,%r12,1),%xmm5,%xmm3
   12f:vpminsq 0x10(%r10,%r12,1),%xmm5,%xmm3
   137:vpminsq 0x10(%r10,%r12,1),%ymm31,%ymm10
   142:vpminsq 0x10(%r10,%r12,1),%ymm5,%ymm3
   14d:vpminsq 0x10(%r10,%r12,1),%ymm5,%ymm3
   158:vpminsq 0x3567(%r10,%r12,4),%zmm21,%zmm10
   163:vpminsq (%r10,%r12,1),%zmm5,%zmm2
   16a:vpminsq (%r10),%zmm5,%zmm1
   170:vpminsq %xmm7,%xmm25,%xmm10
   176:vpminsq %ymm13,%ymm0,%ymm28
   17c:vpminsq %zmm28,%zmm20,%zmm29
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



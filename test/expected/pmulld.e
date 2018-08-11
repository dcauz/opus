class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 504
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
size:     295
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   359
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
offset:   359
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
offset:   457
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
offset:   360
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
offset:   456
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 38 40 f2 66 41 0f  38 40 32 c4 62 49 40 d2
62 72 7d 00 40 d2 c4 42  49 40 12 62 52 7d 00 40
12 62 72 cd 08 40 d2 62  72 fd 00 40 d2 62 52 cd
08 40 12 62 52 fd 00 40  12 c4 62 4d 40 d2 62 72
7d 20 40 d2 c4 42 4d 40  12 62 52 7d 20 40 12 62
72 cd 28 40 d2 62 72 fd  20 40 d2 62 52 cd 28 40
12 62 52 fd 20 40 12 62  72 4d 48 40 d2 62 72 7d
40 40 d2 62 52 4d 48 40  12 62 52 7d 40 40 12 62
72 cd 48 40 d2 62 72 fd  40 40 d2 62 52 cd 48 40
12 62 52 fd 40 40 12 62  72 4d 0d 40 d2 62 72 7d
05 40 d2 62 52 4d 0d 40  12 62 52 7d 05 40 12 62
72 cd 0d 40 d2 62 72 fd  05 40 d2 62 52 cd 0d 40
12 62 52 fd 05 40 12 62  72 4d 2d 40 d2 62 72 7d
25 40 d2 62 52 4d 2d 40  12 62 52 7d 25 40 12 62
72 cd 2d 40 d2 62 72 fd  25 40 d2 62 52 cd 2d 40
12 62 52 fd 25 40 12 62  72 4d 4d 40 d2 62 72 7d
45 40 d2 62 52 4d 4d 40  12 62 52 7d 45 40 12 62
72 cd 4d 40 d2 62 72 fd  45 40 d2 62 52 cd 4d 40
12 62 52 fd 45 40 12
     0:pmulld %xmm2,%xmm6
     5:pmulld (%r10),%xmm6
     b:vpmulld %xmm2,%xmm6,%xmm10
    10:vpmulld %xmm2,%xmm16,%xmm10
    16:vpmulld (%r10),%xmm6,%xmm10
    1b:vpmulld (%r10),%xmm16,%xmm10
    21:vpmullq %xmm2,%xmm6,%xmm10
    27:vpmullq %xmm2,%xmm16,%xmm10
    2d:vpmullq (%r10),%xmm6,%xmm10
    33:vpmullq (%r10),%xmm16,%xmm10
    39:vpmulld %ymm2,%ymm6,%ymm10
    3e:vpmulld %ymm2,%ymm16,%ymm10
    44:vpmulld (%r10),%ymm6,%ymm10
    49:vpmulld (%r10),%ymm16,%ymm10
    4f:vpmullq %ymm2,%ymm6,%ymm10
    55:vpmullq %ymm2,%ymm16,%ymm10
    5b:vpmullq (%r10),%ymm6,%ymm10
    61:vpmullq (%r10),%ymm16,%ymm10
    67:vpmulld %zmm2,%zmm6,%zmm10
    6d:vpmulld %zmm2,%zmm16,%zmm10
    73:vpmulld (%r10),%zmm6,%zmm10
    79:vpmulld (%r10),%zmm16,%zmm10
    7f:vpmullq %zmm2,%zmm6,%zmm10
    85:vpmullq %zmm2,%zmm16,%zmm10
    8b:vpmullq (%r10),%zmm6,%zmm10
    91:vpmullq (%r10),%zmm16,%zmm10
    97:vpmulld %xmm2,%xmm6,%xmm10{%k5}
    9d:vpmulld %xmm2,%xmm16,%xmm10{%k5}
    a3:vpmulld (%r10),%xmm6,%xmm10{%k5}
    a9:vpmulld (%r10),%xmm16,%xmm10{%k5}
    af:vpmullq %xmm2,%xmm6,%xmm10{%k5}
    b5:vpmullq %xmm2,%xmm16,%xmm10{%k5}
    bb:vpmullq (%r10),%xmm6,%xmm10{%k5}
    c1:vpmullq (%r10),%xmm16,%xmm10{%k5}
    c7:vpmulld %ymm2,%ymm6,%ymm10{%k5}
    cd:vpmulld %ymm2,%ymm16,%ymm10{%k5}
    d3:vpmulld (%r10),%ymm6,%ymm10{%k5}
    d9:vpmulld (%r10),%ymm16,%ymm10{%k5}
    df:vpmullq %ymm2,%ymm6,%ymm10{%k5}
    e5:vpmullq %ymm2,%ymm16,%ymm10{%k5}
    eb:vpmullq (%r10),%ymm6,%ymm10{%k5}
    f1:vpmullq (%r10),%ymm16,%ymm10{%k5}
    f7:vpmulld %zmm2,%zmm6,%zmm10{%k5}
    fd:vpmulld %zmm2,%zmm16,%zmm10{%k5}
   103:vpmulld (%r10),%zmm6,%zmm10{%k5}
   109:vpmulld (%r10),%zmm16,%zmm10{%k5}
   10f:vpmullq %zmm2,%zmm6,%zmm10{%k5}
   115:vpmullq %zmm2,%zmm16,%zmm10{%k5}
   11b:vpmullq (%r10),%zmm6,%zmm10{%k5}
   121:vpmullq (%r10),%zmm16,%zmm10{%k5}
#################
TODO: elf/file.cpp:186

359:0
#################
TODO: elf/file.cpp:252

359:0

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



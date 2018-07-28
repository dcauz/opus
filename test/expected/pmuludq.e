class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 512
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
size:     301
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   365
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
offset:   365
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
offset:   465
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
offset:   368
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
offset:   464
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f f4 d1 66 41 0f f4  12 66 41 0f f4 d2 66 44
0f f4 e1 66 44 0f f4 e1  66 45 0f f4 22 c5 e9 f4
d9 c4 c1 69 f4 da c5 99  f4 d9 c5 19 f4 e9 62 b1
ed 08 f4 dc 62 f1 cd 00  f4 d9 62 e1 cd 00 f4 f9
c4 c1 69 f4 1a c5 ed f4  d9 c4 c1 6d f4 da c5 9d
f4 d9 c5 1d f4 e9 62 b1  ed 28 f4 dc 62 f1 cd 20
f4 d9 62 e1 cd 20 f4 f9  c4 c1 6d f4 1a 62 f1 ed
48 f4 d9 62 d1 ed 48 f4  da 62 f1 9d 48 f4 d9 62
71 9d 48 f4 e9 62 b1 ed  48 f4 dc 62 f1 cd 40 f4
d9 62 e1 cd 40 f4 f9 62  d1 ed 48 f4 1a 62 f1 ed
09 f4 d9 62 d1 ed 09 f4  da 62 f1 9d 09 f4 d9 62
71 9d 09 f4 e9 62 b1 ed  09 f4 dc 62 f1 cd 01 f4
d9 62 e1 cd 01 f4 f9 62  d1 ed 09 f4 1a 62 f1 ed
29 f4 d9 62 d1 ed 29 f4  da 62 f1 9d 29 f4 d9 62
71 9d 29 f4 e9 62 b1 ed  29 f4 dc 62 f1 cd 21 f4
d9 62 e1 cd 21 f4 f9 62  d1 ed 29 f4 1a 62 f1 ed
49 f4 d9 62 d1 ed 49 f4  da 62 f1 9d 49 f4 d9 62
71 9d 49 f4 e9 62 b1 ed  49 f4 dc 62 f1 cd 41 f4
d9 62 e1 cd 41 f4 f9 62  d1 ed 49 f4 1a
     0:pmuludq %xmm1,%xmm2
     4:pmuludq (%r10),%xmm2
     9:pmuludq %xmm10,%xmm2
     e:pmuludq %xmm1,%xmm12
    13:pmuludq %xmm1,%xmm12
    18:pmuludq (%r10),%xmm12
    1d:vpmuludq %xmm1,%xmm2,%xmm3
    21:vpmuludq %xmm10,%xmm2,%xmm3
    26:vpmuludq %xmm1,%xmm12,%xmm3
    2a:vpmuludq %xmm1,%xmm12,%xmm13
    2e:vpmuludq %xmm20,%xmm2,%xmm3
    34:vpmuludq %xmm1,%xmm22,%xmm3
    3a:vpmuludq %xmm1,%xmm22,%xmm23
    40:vpmuludq (%r10),%xmm2,%xmm3
    45:vpmuludq %ymm1,%ymm2,%ymm3
    49:vpmuludq %ymm10,%ymm2,%ymm3
    4e:vpmuludq %ymm1,%ymm12,%ymm3
    52:vpmuludq %ymm1,%ymm12,%ymm13
    56:vpmuludq %ymm20,%ymm2,%ymm3
    5c:vpmuludq %ymm1,%ymm22,%ymm3
    62:vpmuludq %ymm1,%ymm22,%ymm23
    68:vpmuludq (%r10),%ymm2,%ymm3
    6d:vpmuludq %zmm1,%zmm2,%zmm3
    73:vpmuludq %zmm10,%zmm2,%zmm3
    79:vpmuludq %zmm1,%zmm12,%zmm3
    7f:vpmuludq %zmm1,%zmm12,%zmm13
    85:vpmuludq %zmm20,%zmm2,%zmm3
    8b:vpmuludq %zmm1,%zmm22,%zmm3
    91:vpmuludq %zmm1,%zmm22,%zmm23
    97:vpmuludq (%r10),%zmm2,%zmm3
    9d:vpmuludq %xmm1,%xmm2,%xmm3{%k1}
    a3:vpmuludq %xmm10,%xmm2,%xmm3{%k1}
    a9:vpmuludq %xmm1,%xmm12,%xmm3{%k1}
    af:vpmuludq %xmm1,%xmm12,%xmm13{%k1}
    b5:vpmuludq %xmm20,%xmm2,%xmm3{%k1}
    bb:vpmuludq %xmm1,%xmm22,%xmm3{%k1}
    c1:vpmuludq %xmm1,%xmm22,%xmm23{%k1}
    c7:vpmuludq (%r10),%xmm2,%xmm3{%k1}
    cd:vpmuludq %ymm1,%ymm2,%ymm3{%k1}
    d3:vpmuludq %ymm10,%ymm2,%ymm3{%k1}
    d9:vpmuludq %ymm1,%ymm12,%ymm3{%k1}
    df:vpmuludq %ymm1,%ymm12,%ymm13{%k1}
    e5:vpmuludq %ymm20,%ymm2,%ymm3{%k1}
    eb:vpmuludq %ymm1,%ymm22,%ymm3{%k1}
    f1:vpmuludq %ymm1,%ymm22,%ymm23{%k1}
    f7:vpmuludq (%r10),%ymm2,%ymm3{%k1}
    fd:vpmuludq %zmm1,%zmm2,%zmm3{%k1}
   103:vpmuludq %zmm10,%zmm2,%zmm3{%k1}
   109:vpmuludq %zmm1,%zmm12,%zmm3{%k1}
   10f:vpmuludq %zmm1,%zmm12,%zmm13{%k1}
   115:vpmuludq %zmm20,%zmm2,%zmm3{%k1}
   11b:vpmuludq %zmm1,%zmm22,%zmm3{%k1}
   121:vpmuludq %zmm1,%zmm22,%zmm23{%k1}
   127:vpmuludq (%r10),%zmm2,%zmm3{%k1}
#################
TODO: elf/file.cpp:186

365:0
#################
TODO: elf/file.cpp:252

365:0

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



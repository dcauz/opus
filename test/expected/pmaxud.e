class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 656
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
size:     447
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   511
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
offset:   511
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
offset:   609
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
offset:   512
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
offset:   608
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 38 3f d1 66 44 0f  38 3f e1 66 41 0f 38 3f
12 66 45 0f 38 3f 22 c4  62 69 3f d9 c4 62 19 3f
d9 62 72 4d 00 3f d9 c4  42 69 3f 1a c4 42 19 3f
1a 62 52 4d 00 3f 1a c4  62 6d 3f d9 c4 62 1d 3f
d9 62 72 4d 20 3f d9 c4  42 6d 3f 1a c4 42 1d 3f
1a 62 52 4d 20 3f 1a 62  72 6d 48 3f d9 62 72 1d
48 3f d9 62 72 4d 40 3f  d9 62 52 6d 48 3f 1a 62
52 1d 48 3f 1a 62 52 4d  40 3f 1a 62 72 6d 0c 3f
d9 62 72 1d 0c 3f d9 62  72 4d 04 3f d9 62 52 6d
0c 3f 1a 62 52 1d 0c 3f  1a 62 52 4d 04 3f 1a 62
72 6d 2c 3f d9 62 72 1d  2c 3f d9 62 72 4d 24 3f
d9 62 52 6d 2c 3f 1a 62  52 1d 2c 3f 1a 62 52 4d
24 3f 1a 62 72 6d 4c 3f  d9 62 72 1d 4c 3f d9 62
72 4d 44 3f d9 62 52 6d  4c 3f 1a 62 52 1d 4c 3f
1a 62 52 4d 44 3f 1a 62  72 ed 08 3f d9 62 72 9d
08 3f d9 62 72 cd 00 3f  d9 62 52 ed 08 3f 1a 62
52 9d 08 3f 1a 62 52 cd  00 3f 1a 62 72 ed 28 3f
d9 62 72 9d 28 3f d9 62  72 cd 20 3f d9 62 52 ed
28 3f 1a 62 52 9d 28 3f  1a 62 52 cd 20 3f 1a 62
72 ed 48 3f d9 62 72 9d  48 3f d9 62 72 cd 40 3f
d9 62 52 ed 48 3f 1a 62  52 9d 48 3f 1a 62 52 cd
40 3f 1a 62 72 ed 0c 3f  d9 62 72 9d 0c 3f d9 62
72 cd 04 3f d9 62 52 ed  0c 3f 1a 62 52 9d 0c 3f
1a 62 52 cd 04 3f 1a 62  72 ed 2c 3f d9 62 72 9d
2c 3f d9 62 72 cd 24 3f  d9 62 52 ed 2c 3f 1a 62
52 9d 2c 3f 1a 62 52 cd  24 3f 1a 62 72 ed 4c 3f
d9 62 72 9d 4c 3f d9 62  72 cd 44 3f d9 62 52 ed
4c 3f 1a 62 52 9d 4c 3f  1a 62 52 cd 44 3f 1a
     0:pmaxud %xmm1,%xmm2
     5:pmaxud %xmm1,%xmm12
     b:pmaxud (%r10),%xmm2
    11:pmaxud (%r10),%xmm12
    17:vpmaxud %xmm1,%xmm2,%xmm11
    1c:vpmaxud %xmm1,%xmm12,%xmm11
    21:vpmaxud %xmm1,%xmm22,%xmm11
    27:vpmaxud (%r10),%xmm2,%xmm11
    2c:vpmaxud (%r10),%xmm12,%xmm11
    31:vpmaxud (%r10),%xmm22,%xmm11
    37:vpmaxud %ymm1,%ymm2,%ymm11
    3c:vpmaxud %ymm1,%ymm12,%ymm11
    41:vpmaxud %ymm1,%ymm22,%ymm11
    47:vpmaxud (%r10),%ymm2,%ymm11
    4c:vpmaxud (%r10),%ymm12,%ymm11
    51:vpmaxud (%r10),%ymm22,%ymm11
    57:vpmaxud %zmm1,%zmm2,%zmm11
    5d:vpmaxud %zmm1,%zmm12,%zmm11
    63:vpmaxud %zmm1,%zmm22,%zmm11
    69:vpmaxud (%r10),%zmm2,%zmm11
    6f:vpmaxud (%r10),%zmm12,%zmm11
    75:vpmaxud (%r10),%zmm22,%zmm11
    7b:vpmaxud %xmm1,%xmm2,%xmm11{%k4}
    81:vpmaxud %xmm1,%xmm12,%xmm11{%k4}
    87:vpmaxud %xmm1,%xmm22,%xmm11{%k4}
    8d:vpmaxud (%r10),%xmm2,%xmm11{%k4}
    93:vpmaxud (%r10),%xmm12,%xmm11{%k4}
    99:vpmaxud (%r10),%xmm22,%xmm11{%k4}
    9f:vpmaxud %ymm1,%ymm2,%ymm11{%k4}
    a5:vpmaxud %ymm1,%ymm12,%ymm11{%k4}
    ab:vpmaxud %ymm1,%ymm22,%ymm11{%k4}
    b1:vpmaxud (%r10),%ymm2,%ymm11{%k4}
    b7:vpmaxud (%r10),%ymm12,%ymm11{%k4}
    bd:vpmaxud (%r10),%ymm22,%ymm11{%k4}
    c3:vpmaxud %zmm1,%zmm2,%zmm11{%k4}
    c9:vpmaxud %zmm1,%zmm12,%zmm11{%k4}
    cf:vpmaxud %zmm1,%zmm22,%zmm11{%k4}
    d5:vpmaxud (%r10),%zmm2,%zmm11{%k4}
    db:vpmaxud (%r10),%zmm12,%zmm11{%k4}
    e1:vpmaxud (%r10),%zmm22,%zmm11{%k4}
    e7:vpmaxuq %xmm1,%xmm2,%xmm11
    ed:vpmaxuq %xmm1,%xmm12,%xmm11
    f3:vpmaxuq %xmm1,%xmm22,%xmm11
    f9:vpmaxuq (%r10),%xmm2,%xmm11
    ff:vpmaxuq (%r10),%xmm12,%xmm11
   105:vpmaxuq (%r10),%xmm22,%xmm11
   10b:vpmaxuq %ymm1,%ymm2,%ymm11
   111:vpmaxuq %ymm1,%ymm12,%ymm11
   117:vpmaxuq %ymm1,%ymm22,%ymm11
   11d:vpmaxuq (%r10),%ymm2,%ymm11
   123:vpmaxuq (%r10),%ymm12,%ymm11
   129:vpmaxuq (%r10),%ymm22,%ymm11
   12f:vpmaxuq %zmm1,%zmm2,%zmm11
   135:vpmaxuq %zmm1,%zmm12,%zmm11
   13b:vpmaxuq %zmm1,%zmm22,%zmm11
   141:vpmaxuq (%r10),%zmm2,%zmm11
   147:vpmaxuq (%r10),%zmm12,%zmm11
   14d:vpmaxuq (%r10),%zmm22,%zmm11
   153:vpmaxuq %xmm1,%xmm2,%xmm11{%k4}
   159:vpmaxuq %xmm1,%xmm12,%xmm11{%k4}
   15f:vpmaxuq %xmm1,%xmm22,%xmm11{%k4}
   165:vpmaxuq (%r10),%xmm2,%xmm11{%k4}
   16b:vpmaxuq (%r10),%xmm12,%xmm11{%k4}
   171:vpmaxuq (%r10),%xmm22,%xmm11{%k4}
   177:vpmaxuq %ymm1,%ymm2,%ymm11{%k4}
   17d:vpmaxuq %ymm1,%ymm12,%ymm11{%k4}
   183:vpmaxuq %ymm1,%ymm22,%ymm11{%k4}
   189:vpmaxuq (%r10),%ymm2,%ymm11{%k4}
   18f:vpmaxuq (%r10),%ymm12,%ymm11{%k4}
   195:vpmaxuq (%r10),%ymm22,%ymm11{%k4}
   19b:vpmaxuq %zmm1,%zmm2,%zmm11{%k4}
   1a1:vpmaxuq %zmm1,%zmm12,%zmm11{%k4}
   1a7:vpmaxuq %zmm1,%zmm22,%zmm11{%k4}
   1ad:vpmaxuq (%r10),%zmm2,%zmm11{%k4}
   1b3:vpmaxuq (%r10),%zmm12,%zmm11{%k4}
   1b9:vpmaxuq (%r10),%zmm22,%zmm11{%k4}
#################
TODO: elf/file.cpp:186

511:0
#################
TODO: elf/file.cpp:252

511:0

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



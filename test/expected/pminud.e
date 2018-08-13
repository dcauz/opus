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
66 0f 38 3b d1 66 44 0f  38 3b e1 66 41 0f 38 3b
12 66 45 0f 38 3b 22 c4  62 69 3b d9 c4 62 19 3b
d9 62 72 4d 00 3b d9 c4  42 69 3b 1a c4 42 19 3b
1a 62 52 4d 00 3b 1a c4  62 6d 3b d9 c4 62 1d 3b
d9 62 72 4d 20 3b d9 c4  42 6d 3b 1a c4 42 1d 3b
1a 62 52 4d 20 3b 1a 62  72 6d 48 3b d9 62 72 1d
48 3b d9 62 72 4d 40 3b  d9 62 52 6d 48 3b 1a 62
52 1d 48 3b 1a 62 52 4d  40 3b 1a 62 72 6d 0c 3b
d9 62 72 1d 0c 3b d9 62  72 4d 04 3b d9 62 52 6d
0c 3b 1a 62 52 1d 0c 3b  1a 62 52 4d 04 3b 1a 62
72 6d 2c 3b d9 62 72 1d  2c 3b d9 62 72 4d 24 3b
d9 62 52 6d 2c 3b 1a 62  52 1d 2c 3b 1a 62 52 4d
24 3b 1a 62 72 6d 4c 3b  d9 62 72 1d 4c 3b d9 62
72 4d 44 3b d9 62 52 6d  4c 3b 1a 62 52 1d 4c 3b
1a 62 52 4d 44 3b 1a 62  72 ed 08 3b d9 62 72 9d
08 3b d9 62 72 cd 00 3b  d9 62 52 ed 08 3b 1a 62
52 9d 08 3b 1a 62 52 cd  00 3b 1a 62 72 ed 28 3b
d9 62 72 9d 28 3b d9 62  72 cd 20 3b d9 62 52 ed
28 3b 1a 62 52 9d 28 3b  1a 62 52 cd 20 3b 1a 62
72 ed 48 3b d9 62 72 9d  48 3b d9 62 72 cd 40 3b
d9 62 52 ed 48 3b 1a 62  52 9d 48 3b 1a 62 52 cd
40 3b 1a 62 72 ed 0c 3b  d9 62 72 9d 0c 3b d9 62
72 cd 04 3b d9 62 52 ed  0c 3b 1a 62 52 9d 0c 3b
1a 62 52 cd 04 3b 1a 62  72 ed 2c 3b d9 62 72 9d
2c 3b d9 62 72 cd 24 3b  d9 62 52 ed 2c 3b 1a 62
52 9d 2c 3b 1a 62 52 cd  24 3b 1a 62 72 ed 4c 3b
d9 62 72 9d 4c 3b d9 62  72 cd 44 3b d9 62 52 ed
4c 3b 1a 62 52 9d 4c 3b  1a 62 52 cd 44 3b 1a
     0:pminud %xmm1,%xmm2
     5:pminud %xmm1,%xmm12
     b:pminud (%r10),%xmm2
    11:pminud (%r10),%xmm12
    17:vpminud %xmm1,%xmm2,%xmm11
    1c:vpminud %xmm1,%xmm12,%xmm11
    21:vpminud %xmm1,%xmm22,%xmm11
    27:vpminud (%r10),%xmm2,%xmm11
    2c:vpminud (%r10),%xmm12,%xmm11
    31:vpminud (%r10),%xmm22,%xmm11
    37:vpminud %ymm1,%ymm2,%ymm11
    3c:vpminud %ymm1,%ymm12,%ymm11
    41:vpminud %ymm1,%ymm22,%ymm11
    47:vpminud (%r10),%ymm2,%ymm11
    4c:vpminud (%r10),%ymm12,%ymm11
    51:vpminud (%r10),%ymm22,%ymm11
    57:vpminud %zmm1,%zmm2,%zmm11
    5d:vpminud %zmm1,%zmm12,%zmm11
    63:vpminud %zmm1,%zmm22,%zmm11
    69:vpminud (%r10),%zmm2,%zmm11
    6f:vpminud (%r10),%zmm12,%zmm11
    75:vpminud (%r10),%zmm22,%zmm11
    7b:vpminud %xmm1,%xmm2,%xmm11{%k4}
    81:vpminud %xmm1,%xmm12,%xmm11{%k4}
    87:vpminud %xmm1,%xmm22,%xmm11{%k4}
    8d:vpminud (%r10),%xmm2,%xmm11{%k4}
    93:vpminud (%r10),%xmm12,%xmm11{%k4}
    99:vpminud (%r10),%xmm22,%xmm11{%k4}
    9f:vpminud %ymm1,%ymm2,%ymm11{%k4}
    a5:vpminud %ymm1,%ymm12,%ymm11{%k4}
    ab:vpminud %ymm1,%ymm22,%ymm11{%k4}
    b1:vpminud (%r10),%ymm2,%ymm11{%k4}
    b7:vpminud (%r10),%ymm12,%ymm11{%k4}
    bd:vpminud (%r10),%ymm22,%ymm11{%k4}
    c3:vpminud %zmm1,%zmm2,%zmm11{%k4}
    c9:vpminud %zmm1,%zmm12,%zmm11{%k4}
    cf:vpminud %zmm1,%zmm22,%zmm11{%k4}
    d5:vpminud (%r10),%zmm2,%zmm11{%k4}
    db:vpminud (%r10),%zmm12,%zmm11{%k4}
    e1:vpminud (%r10),%zmm22,%zmm11{%k4}
    e7:vpminuq %xmm1,%xmm2,%xmm11
    ed:vpminuq %xmm1,%xmm12,%xmm11
    f3:vpminuq %xmm1,%xmm22,%xmm11
    f9:vpminuq (%r10),%xmm2,%xmm11
    ff:vpminuq (%r10),%xmm12,%xmm11
   105:vpminuq (%r10),%xmm22,%xmm11
   10b:vpminuq %ymm1,%ymm2,%ymm11
   111:vpminuq %ymm1,%ymm12,%ymm11
   117:vpminuq %ymm1,%ymm22,%ymm11
   11d:vpminuq (%r10),%ymm2,%ymm11
   123:vpminuq (%r10),%ymm12,%ymm11
   129:vpminuq (%r10),%ymm22,%ymm11
   12f:vpminuq %zmm1,%zmm2,%zmm11
   135:vpminuq %zmm1,%zmm12,%zmm11
   13b:vpminuq %zmm1,%zmm22,%zmm11
   141:vpminuq (%r10),%zmm2,%zmm11
   147:vpminuq (%r10),%zmm12,%zmm11
   14d:vpminuq (%r10),%zmm22,%zmm11
   153:vpminuq %xmm1,%xmm2,%xmm11{%k4}
   159:vpminuq %xmm1,%xmm12,%xmm11{%k4}
   15f:vpminuq %xmm1,%xmm22,%xmm11{%k4}
   165:vpminuq (%r10),%xmm2,%xmm11{%k4}
   16b:vpminuq (%r10),%xmm12,%xmm11{%k4}
   171:vpminuq (%r10),%xmm22,%xmm11{%k4}
   177:vpminuq %ymm1,%ymm2,%ymm11{%k4}
   17d:vpminuq %ymm1,%ymm12,%ymm11{%k4}
   183:vpminuq %ymm1,%ymm22,%ymm11{%k4}
   189:vpminuq (%r10),%ymm2,%ymm11{%k4}
   18f:vpminuq (%r10),%ymm12,%ymm11{%k4}
   195:vpminuq (%r10),%ymm22,%ymm11{%k4}
   19b:vpminuq %zmm1,%zmm2,%zmm11{%k4}
   1a1:vpminuq %zmm1,%zmm12,%zmm11{%k4}
   1a7:vpminuq %zmm1,%zmm22,%zmm11{%k4}
   1ad:vpminuq (%r10),%zmm2,%zmm11{%k4}
   1b3:vpminuq (%r10),%zmm12,%zmm11{%k4}
   1b9:vpminuq (%r10),%zmm22,%zmm11{%k4}
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



class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 816
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
size:     601
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   665
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
offset:   665
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
offset:   769
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
offset:   672
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
offset:   768
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f de d1 66 0f 38 3e  d1 66 41 0f de d7 66 41
0f 38 3e d7 66 41 0f de  12 66 41 0f 38 3e 12 66
41 0f de 12 66 41 0f 38  3e 12 66 41 0f de 52 02
66 41 0f 38 3e 52 04 66  41 0f 38 3e 52 08 66 41
0f de 52 05 66 41 0f 38  3e 52 63 c5 e9 de d9 c4
e2 69 3e d9 c4 c1 69 de  df c4 c2 69 3e df c4 c1
69 de 1a c4 c2 69 3e 1a  c4 c1 69 de 1a c4 c2 69
3e 1a c4 c1 69 de 5a 02  c4 c2 69 3e 5a 04 c4 c2
69 3e 5a 08 c4 c1 69 de  5a 05 c4 c2 69 3e 5a 63
62 91 6d 08 de df 62 92  6d 08 3e df c4 c1 69 de
df c4 c2 69 3e df 62 41  6d 08 de 3a 62 42 6d 08
3e 3a 62 41 6d 08 de 3a  62 42 6d 08 3e 3a 62 41
6d 08 de ba 02 00 00 00  62 42 6d 08 3e ba 04 00
00 00 62 42 6d 08 3e ba  08 00 00 00 62 41 6d 08
de ba 05 00 00 00 62 42  6d 08 3e ba 63 00 00 00
c5 ed de d9 c4 e2 6d 3e  d9 c4 c1 6d de df c4 c2
6d 3e df c4 c1 6d de 1a  c4 c2 6d 3e 1a c4 c1 6d
de 1a c4 c2 6d 3e 1a c4  c1 6d de 5a 02 c4 c2 6d
3e 5a 04 c4 c2 6d 3e 5a  08 c4 c1 6d de 5a 05 c4
c2 6d 3e 5a 63 62 91 6d  28 de df 62 92 6d 28 3e
df c4 c1 6d de df c4 c2  6d 3e df 62 41 6d 28 de
3a 62 42 6d 28 3e 3a 62  41 6d 28 de 3a 62 42 6d
28 3e 3a 62 41 6d 28 de  ba 02 00 00 00 62 42 6d
28 3e ba 04 00 00 00 62  42 6d 28 3e ba 08 00 00
00 62 41 6d 28 de ba 05  00 00 00 62 42 6d 28 3e
ba 63 00 00 00 62 f1 6d  48 de d9 62 f2 6d 48 3e
d9 62 d1 6d 48 de df 62  d2 6d 48 3e df 62 d1 6d
48 de 1a 62 d2 6d 48 3e  1a 62 d1 6d 48 de 1a 62
d2 6d 48 3e 1a 62 d1 6d  48 de 9a 02 00 00 00 62
d2 6d 48 3e 9a 04 00 00  00 62 d2 6d 48 3e 9a 08
00 00 00 62 d1 6d 48 de  9a 05 00 00 00 62 d2 6d
48 3e 9a 63 00 00 00 62  91 6d 48 de df 62 92 6d
48 3e df 62 d1 6d 48 de  df 62 d2 6d 48 3e df 62
41 6d 48 de 3a 62 42 6d  48 3e 3a 62 41 6d 48 de
3a 62 42 6d 48 3e 3a 62  41 6d 48 de ba 02 00 00
00 62 42 6d 48 3e ba 04  00 00 00 62 42 6d 48 3e
ba 08 00 00 00 62 41 6d  48 de ba 05 00 00 00 62
42 6d 48 3e ba 63 00 00  00
     0:pmaxub %xmm1,%xmm2
     4:pmaxuw %xmm1,%xmm2
     9:pmaxub %xmm15,%xmm2
     e:pmaxuw %xmm15,%xmm2
    14:pmaxub (%r10),%xmm2
    19:pmaxuw (%r10),%xmm2
    1f:pmaxub (%r10),%xmm2
    24:pmaxuw (%r10),%xmm2
    2a:pmaxub 0x2(%r10),%xmm2
    30:pmaxuw 0x4(%r10),%xmm2
    37:pmaxuw 0x8(%r10),%xmm2
    3e:pmaxub 0x5(%r10),%xmm2
    44:pmaxuw 0x63(%r10),%xmm2
    4b:vpmaxub %xmm1,%xmm2,%xmm3
    4f:vpmaxuw %xmm1,%xmm2,%xmm3
    54:vpmaxub %xmm15,%xmm2,%xmm3
    59:vpmaxuw %xmm15,%xmm2,%xmm3
    5e:vpmaxub (%r10),%xmm2,%xmm3
    63:vpmaxuw (%r10),%xmm2,%xmm3
    68:vpmaxub (%r10),%xmm2,%xmm3
    6d:vpmaxuw (%r10),%xmm2,%xmm3
    72:vpmaxub 0x2(%r10),%xmm2,%xmm3
    78:vpmaxuw 0x4(%r10),%xmm2,%xmm3
    7e:vpmaxuw 0x8(%r10),%xmm2,%xmm3
    84:vpmaxub 0x5(%r10),%xmm2,%xmm3
    8a:vpmaxuw 0x63(%r10),%xmm2,%xmm3
    90:vpmaxub %xmm31,%xmm2,%xmm3
    96:vpmaxuw %xmm31,%xmm2,%xmm3
    9c:vpmaxub %xmm15,%xmm2,%xmm3
    a1:vpmaxuw %xmm15,%xmm2,%xmm3
    a6:vpmaxub (%r10),%xmm2,%xmm31
    ac:vpmaxuw (%r10),%xmm2,%xmm31
    b2:vpmaxub (%r10),%xmm2,%xmm31
    b8:vpmaxuw (%r10),%xmm2,%xmm31
    be:vpmaxub 0x2(%r10),%xmm2,%xmm31
    c8:vpmaxuw 0x4(%r10),%xmm2,%xmm31
    d2:vpmaxuw 0x8(%r10),%xmm2,%xmm31
    dc:vpmaxub 0x5(%r10),%xmm2,%xmm31
    e6:vpmaxuw 0x63(%r10),%xmm2,%xmm31
    f0:vpmaxub %ymm1,%ymm2,%ymm3
    f4:vpmaxuw %ymm1,%ymm2,%ymm3
    f9:vpmaxub %ymm15,%ymm2,%ymm3
    fe:vpmaxuw %ymm15,%ymm2,%ymm3
   103:vpmaxub (%r10),%ymm2,%ymm3
   108:vpmaxuw (%r10),%ymm2,%ymm3
   10d:vpmaxub (%r10),%ymm2,%ymm3
   112:vpmaxuw (%r10),%ymm2,%ymm3
   117:vpmaxub 0x2(%r10),%ymm2,%ymm3
   11d:vpmaxuw 0x4(%r10),%ymm2,%ymm3
   123:vpmaxuw 0x8(%r10),%ymm2,%ymm3
   129:vpmaxub 0x5(%r10),%ymm2,%ymm3
   12f:vpmaxuw 0x63(%r10),%ymm2,%ymm3
   135:vpmaxub %ymm31,%ymm2,%ymm3
   13b:vpmaxuw %ymm31,%ymm2,%ymm3
   141:vpmaxub %ymm15,%ymm2,%ymm3
   146:vpmaxuw %ymm15,%ymm2,%ymm3
   14b:vpmaxub (%r10),%ymm2,%ymm31
   151:vpmaxuw (%r10),%ymm2,%ymm31
   157:vpmaxub (%r10),%ymm2,%ymm31
   15d:vpmaxuw (%r10),%ymm2,%ymm31
   163:vpmaxub 0x2(%r10),%ymm2,%ymm31
   16d:vpmaxuw 0x4(%r10),%ymm2,%ymm31
   177:vpmaxuw 0x8(%r10),%ymm2,%ymm31
   181:vpmaxub 0x5(%r10),%ymm2,%ymm31
   18b:vpmaxuw 0x63(%r10),%ymm2,%ymm31
   195:vpmaxub %zmm1,%zmm2,%zmm3
   19b:vpmaxuw %zmm1,%zmm2,%zmm3
   1a1:vpmaxub %zmm15,%zmm2,%zmm3
   1a7:vpmaxuw %zmm15,%zmm2,%zmm3
   1ad:vpmaxub (%r10),%zmm2,%zmm3
   1b3:vpmaxuw (%r10),%zmm2,%zmm3
   1b9:vpmaxub (%r10),%zmm2,%zmm3
   1bf:vpmaxuw (%r10),%zmm2,%zmm3
   1c5:vpmaxub 0x2(%r10),%zmm2,%zmm3
   1cf:vpmaxuw 0x4(%r10),%zmm2,%zmm3
   1d9:vpmaxuw 0x8(%r10),%zmm2,%zmm3
   1e3:vpmaxub 0x5(%r10),%zmm2,%zmm3
   1ed:vpmaxuw 0x63(%r10),%zmm2,%zmm3
   1f7:vpmaxub %zmm31,%zmm2,%zmm3
   1fd:vpmaxuw %zmm31,%zmm2,%zmm3
   203:vpmaxub %zmm15,%zmm2,%zmm3
   209:vpmaxuw %zmm15,%zmm2,%zmm3
   20f:vpmaxub (%r10),%zmm2,%zmm31
   215:vpmaxuw (%r10),%zmm2,%zmm31
   21b:vpmaxub (%r10),%zmm2,%zmm31
   221:vpmaxuw (%r10),%zmm2,%zmm31
   227:vpmaxub 0x2(%r10),%zmm2,%zmm31
   231:vpmaxuw 0x4(%r10),%zmm2,%zmm31
   23b:vpmaxuw 0x8(%r10),%zmm2,%zmm31
   245:vpmaxub 0x5(%r10),%zmm2,%zmm31
   24f:vpmaxuw 0x63(%r10),%zmm2,%zmm31
#################
TODO: elf/file.cpp:186

665:0
#################
TODO: elf/file.cpp:252

665:0

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



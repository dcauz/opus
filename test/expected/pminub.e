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
66 0f da d1 66 0f 38 3a  d1 66 41 0f da d7 66 41
0f 38 3a d7 66 41 0f da  12 66 41 0f 38 3a 12 66
41 0f da 12 66 41 0f 38  3a 12 66 41 0f da 52 02
66 41 0f 38 3a 52 04 66  41 0f 38 3a 52 08 66 41
0f da 52 05 66 41 0f 38  3a 52 63 c5 e9 da d9 c4
e2 69 3a d9 c4 c1 69 da  df c4 c2 69 3a df c4 c1
69 da 1a c4 c2 69 3a 1a  c4 c1 69 da 1a c4 c2 69
3a 1a c4 c1 69 da 5a 02  c4 c2 69 3a 5a 04 c4 c2
69 3a 5a 08 c4 c1 69 da  5a 05 c4 c2 69 3a 5a 63
62 91 6d 08 da df 62 92  6d 08 3a df c4 c1 69 da
df c4 c2 69 3a df 62 41  6d 08 da 3a 62 42 6d 08
3a 3a 62 41 6d 08 da 3a  62 42 6d 08 3a 3a 62 41
6d 08 da ba 02 00 00 00  62 42 6d 08 3a ba 04 00
00 00 62 42 6d 08 3a ba  08 00 00 00 62 41 6d 08
da ba 05 00 00 00 62 42  6d 08 3a ba 63 00 00 00
c5 ed da d9 c4 e2 6d 3a  d9 c4 c1 6d da df c4 c2
6d 3a df c4 c1 6d da 1a  c4 c2 6d 3a 1a c4 c1 6d
da 1a c4 c2 6d 3a 1a c4  c1 6d da 5a 02 c4 c2 6d
3a 5a 04 c4 c2 6d 3a 5a  08 c4 c1 6d da 5a 05 c4
c2 6d 3a 5a 63 62 91 6d  28 da df 62 92 6d 28 3a
df c4 c1 6d da df c4 c2  6d 3a df 62 41 6d 28 da
3a 62 42 6d 28 3a 3a 62  41 6d 28 da 3a 62 42 6d
28 3a 3a 62 41 6d 28 da  ba 02 00 00 00 62 42 6d
28 3a ba 04 00 00 00 62  42 6d 28 3a ba 08 00 00
00 62 41 6d 28 da ba 05  00 00 00 62 42 6d 28 3a
ba 63 00 00 00 62 f1 6d  48 da d9 62 f2 6d 48 3a
d9 62 d1 6d 48 da df 62  d2 6d 48 3a df 62 d1 6d
48 da 1a 62 d2 6d 48 3a  1a 62 d1 6d 48 da 1a 62
d2 6d 48 3a 1a 62 d1 6d  48 da 9a 02 00 00 00 62
d2 6d 48 3a 9a 04 00 00  00 62 d2 6d 48 3a 9a 08
00 00 00 62 d1 6d 48 da  9a 05 00 00 00 62 d2 6d
48 3a 9a 63 00 00 00 62  91 6d 48 da df 62 92 6d
48 3a df 62 d1 6d 48 da  df 62 d2 6d 48 3a df 62
41 6d 48 da 3a 62 42 6d  48 3a 3a 62 41 6d 48 da
3a 62 42 6d 48 3a 3a 62  41 6d 48 da ba 02 00 00
00 62 42 6d 48 3a ba 04  00 00 00 62 42 6d 48 3a
ba 08 00 00 00 62 41 6d  48 da ba 05 00 00 00 62
42 6d 48 3a ba 63 00 00  00
     0:pminub %xmm1,%xmm2
     4:pminuw %xmm1,%xmm2
     9:pminub %xmm15,%xmm2
     e:pminuw %xmm15,%xmm2
    14:pminub (%r10),%xmm2
    19:pminuw (%r10),%xmm2
    1f:pminub (%r10),%xmm2
    24:pminuw (%r10),%xmm2
    2a:pminub 0x2(%r10),%xmm2
    30:pminuw 0x4(%r10),%xmm2
    37:pminuw 0x8(%r10),%xmm2
    3e:pminub 0x5(%r10),%xmm2
    44:pminuw 0x63(%r10),%xmm2
    4b:vpminub %xmm1,%xmm2,%xmm3
    4f:vpminuw %xmm1,%xmm2,%xmm3
    54:vpminub %xmm15,%xmm2,%xmm3
    59:vpminuw %xmm15,%xmm2,%xmm3
    5e:vpminub (%r10),%xmm2,%xmm3
    63:vpminuw (%r10),%xmm2,%xmm3
    68:vpminub (%r10),%xmm2,%xmm3
    6d:vpminuw (%r10),%xmm2,%xmm3
    72:vpminub 0x2(%r10),%xmm2,%xmm3
    78:vpminuw 0x4(%r10),%xmm2,%xmm3
    7e:vpminuw 0x8(%r10),%xmm2,%xmm3
    84:vpminub 0x5(%r10),%xmm2,%xmm3
    8a:vpminuw 0x63(%r10),%xmm2,%xmm3
    90:vpminub %xmm31,%xmm2,%xmm3
    96:vpminuw %xmm31,%xmm2,%xmm3
    9c:vpminub %xmm15,%xmm2,%xmm3
    a1:vpminuw %xmm15,%xmm2,%xmm3
    a6:vpminub (%r10),%xmm2,%xmm31
    ac:vpminuw (%r10),%xmm2,%xmm31
    b2:vpminub (%r10),%xmm2,%xmm31
    b8:vpminuw (%r10),%xmm2,%xmm31
    be:vpminub 0x2(%r10),%xmm2,%xmm31
    c8:vpminuw 0x4(%r10),%xmm2,%xmm31
    d2:vpminuw 0x8(%r10),%xmm2,%xmm31
    dc:vpminub 0x5(%r10),%xmm2,%xmm31
    e6:vpminuw 0x63(%r10),%xmm2,%xmm31
    f0:vpminub %ymm1,%ymm2,%ymm3
    f4:vpminuw %ymm1,%ymm2,%ymm3
    f9:vpminub %ymm15,%ymm2,%ymm3
    fe:vpminuw %ymm15,%ymm2,%ymm3
   103:vpminub (%r10),%ymm2,%ymm3
   108:vpminuw (%r10),%ymm2,%ymm3
   10d:vpminub (%r10),%ymm2,%ymm3
   112:vpminuw (%r10),%ymm2,%ymm3
   117:vpminub 0x2(%r10),%ymm2,%ymm3
   11d:vpminuw 0x4(%r10),%ymm2,%ymm3
   123:vpminuw 0x8(%r10),%ymm2,%ymm3
   129:vpminub 0x5(%r10),%ymm2,%ymm3
   12f:vpminuw 0x63(%r10),%ymm2,%ymm3
   135:vpminub %ymm31,%ymm2,%ymm3
   13b:vpminuw %ymm31,%ymm2,%ymm3
   141:vpminub %ymm15,%ymm2,%ymm3
   146:vpminuw %ymm15,%ymm2,%ymm3
   14b:vpminub (%r10),%ymm2,%ymm31
   151:vpminuw (%r10),%ymm2,%ymm31
   157:vpminub (%r10),%ymm2,%ymm31
   15d:vpminuw (%r10),%ymm2,%ymm31
   163:vpminub 0x2(%r10),%ymm2,%ymm31
   16d:vpminuw 0x4(%r10),%ymm2,%ymm31
   177:vpminuw 0x8(%r10),%ymm2,%ymm31
   181:vpminub 0x5(%r10),%ymm2,%ymm31
   18b:vpminuw 0x63(%r10),%ymm2,%ymm31
   195:vpminub %zmm1,%zmm2,%zmm3
   19b:vpminuw %zmm1,%zmm2,%zmm3
   1a1:vpminub %zmm15,%zmm2,%zmm3
   1a7:vpminuw %zmm15,%zmm2,%zmm3
   1ad:vpminub (%r10),%zmm2,%zmm3
   1b3:vpminuw (%r10),%zmm2,%zmm3
   1b9:vpminub (%r10),%zmm2,%zmm3
   1bf:vpminuw (%r10),%zmm2,%zmm3
   1c5:vpminub 0x2(%r10),%zmm2,%zmm3
   1cf:vpminuw 0x4(%r10),%zmm2,%zmm3
   1d9:vpminuw 0x8(%r10),%zmm2,%zmm3
   1e3:vpminub 0x5(%r10),%zmm2,%zmm3
   1ed:vpminuw 0x63(%r10),%zmm2,%zmm3
   1f7:vpminub %zmm31,%zmm2,%zmm3
   1fd:vpminuw %zmm31,%zmm2,%zmm3
   203:vpminub %zmm15,%zmm2,%zmm3
   209:vpminuw %zmm15,%zmm2,%zmm3
   20f:vpminub (%r10),%zmm2,%zmm31
   215:vpminuw (%r10),%zmm2,%zmm31
   21b:vpminub (%r10),%zmm2,%zmm31
   221:vpminuw (%r10),%zmm2,%zmm31
   227:vpminub 0x2(%r10),%zmm2,%zmm31
   231:vpminuw 0x4(%r10),%zmm2,%zmm31
   23b:vpminuw 0x8(%r10),%zmm2,%zmm31
   245:vpminub 0x5(%r10),%zmm2,%zmm31
   24f:vpminuw 0x63(%r10),%zmm2,%zmm31
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



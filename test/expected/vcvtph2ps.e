class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 416
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
size:     208
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   272
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
offset:   272
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
offset:   369
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
offset:   272
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
offset:   368
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
c4 e2 7d 13 ca c4 42 7d  13 dc 62 a2 7d 28 13 ed
c4 c2 7d 13 0a c4 42 7d  13 1a 62 c2 7d 28 13 2a
c4 e2 79 13 ca c4 42 79  13 dc 62 a2 7d 08 13 ed
c4 c2 79 13 0a c4 42 79  13 1a 62 c2 7d 08 13 2a
62 f2 7d 48 13 ca 62 52  7d 48 13 dc 62 a2 7d 48
13 ed 62 d2 7d 48 13 0a  62 52 7d 48 13 1a 62 c2
7d 48 13 2a 62 f2 7d 2d  13 ca 62 52 7d 2d 13 dc
62 a2 7d 2d 13 ed 62 d2  7d 2d 13 0a 62 52 7d 2d
13 1a 62 c2 7d 2d 13 2a  62 f2 7d 0d 13 ca 62 52
7d 0d 13 dc 62 a2 7d 0d  13 ed 62 d2 7d 0d 13 0a
62 52 7d 0d 13 1a 62 c2  7d 0d 13 2a 62 f2 7d 4d
13 ca 62 52 7d 4d 13 dc  62 a2 7d 4d 13 ed 62 d2
7d 4d 13 0a 62 52 7d 4d  13 1a 62 c2 7d 4d 13 2a
01
     0:vcvtph2ps %xmm2,%ymm1
     5:vcvtph2ps %xmm12,%ymm11
     a:vcvtph2ps %xmm21,%ymm21
    10:vcvtph2ps (%r10),%ymm1
    15:vcvtph2ps (%r10),%ymm11
    1a:vcvtph2ps (%r10),%ymm21
    20:vcvtph2ps %xmm2,%xmm1
    25:vcvtph2ps %xmm12,%xmm11
    2a:vcvtph2ps %xmm21,%xmm21
    30:vcvtph2ps (%r10),%xmm1
    35:vcvtph2ps (%r10),%xmm11
    3a:vcvtph2ps (%r10),%xmm21
    40:vcvtph2ps %ymm2,%zmm1
    46:vcvtph2ps %ymm12,%zmm11
    4c:vcvtph2ps %ymm21,%zmm21
    52:vcvtph2ps (%r10),%zmm1
    58:vcvtph2ps (%r10),%zmm11
    5e:vcvtph2ps (%r10),%zmm21
    64:vcvtph2ps %xmm2,%ymm1{%k5}
    6a:vcvtph2ps %xmm12,%ymm11{%k5}
    70:vcvtph2ps %xmm21,%ymm21{%k5}
    76:vcvtph2ps (%r10),%ymm1{%k5}
    7c:vcvtph2ps (%r10),%ymm11{%k5}
    82:vcvtph2ps (%r10),%ymm21{%k5}
    88:vcvtph2ps %xmm2,%xmm1{%k5}
    8e:vcvtph2ps %xmm12,%xmm11{%k5}
    94:vcvtph2ps %xmm21,%xmm21{%k5}
    9a:vcvtph2ps (%r10),%xmm1{%k5}
    a0:vcvtph2ps (%r10),%xmm11{%k5}
    a6:vcvtph2ps (%r10),%xmm21{%k5}
    ac:vcvtph2ps %ymm2,%zmm1{%k5}
    b2:vcvtph2ps %ymm12,%zmm11{%k5}
    b8:vcvtph2ps %ymm21,%zmm21{%k5}
    be:vcvtph2ps (%r10),%zmm1{%k5}
    c4:vcvtph2ps (%r10),%zmm11{%k5}
    ca:vcvtph2ps (%r10),%zmm21{%k5}
#################
TODO: elf/file.cpp:186

272:0
#################
TODO: elf/file.cpp:252

272:0

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



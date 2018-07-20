class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 384
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
size:     170
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   234
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
offset:   234
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
offset:   337
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
offset:   240
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
offset:   336
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 5a d9 41 0f 5a 1a c5  f8 5a d9 62 61 7c 08 5a
f1 62 21 7c 08 5a f3 62  b1 7c 08 5a db c5 fc 5a
d9 62 61 7c 28 5a f1 62  21 7c 28 5a f3 62 b1 7c
28 5a db c4 c1 7c 5a 1a  62 41 7c 28 5a 32 62 f1
7c 48 5a d9 62 61 7c 48  5a f1 62 21 7c 48 5a f3
62 b1 7c 48 5a db 62 f1  7c 0a 5a d9 62 61 7c 0a
5a f1 62 21 7c 0a 5a f3  62 b1 7c 0a 5a db 62 f1
7c 2a 5a d9 62 61 7c 2a  5a f1 62 21 7c 2a 5a f3
62 b1 7c 2a 5a db 62 d1  7c 2a 5a 1a 62 41 7c 2a
5a 32 62 f1 7c 4a 5a d9  62 61 7c 4a 5a f1 62 21
7c 4a 5a f3 62 b1 7c 4a  5a db
     0:cvtps2pd %xmm1,%xmm3
     3:cvtps2pd (%r10),%xmm3
     7:vcvtps2pd %xmm1,%xmm3
     b:vcvtps2pd %xmm1,%xmm30
    11:vcvtps2pd %xmm19,%xmm30
    17:vcvtps2pd %xmm19,%xmm3
    1d:vcvtps2pd %xmm1,%ymm3
    21:vcvtps2pd %xmm1,%ymm30
    27:vcvtps2pd %xmm19,%ymm30
    2d:vcvtps2pd %xmm19,%ymm3
    33:vcvtps2pd (%r10),%ymm3
    38:vcvtps2pd (%r10),%ymm30
    3e:vcvtps2pd %ymm1,%zmm3
    44:vcvtps2pd %ymm1,%zmm30
    4a:vcvtps2pd %ymm19,%zmm30
    50:vcvtps2pd %ymm19,%zmm3
    56:vcvtps2pd %xmm1,%xmm3{%k2}
    5c:vcvtps2pd %xmm1,%xmm30{%k2}
    62:vcvtps2pd %xmm19,%xmm30{%k2}
    68:vcvtps2pd %xmm19,%xmm3{%k2}
    6e:vcvtps2pd %xmm1,%ymm3{%k2}
    74:vcvtps2pd %xmm1,%ymm30{%k2}
    7a:vcvtps2pd %xmm19,%ymm30{%k2}
    80:vcvtps2pd %xmm19,%ymm3{%k2}
    86:vcvtps2pd (%r10),%ymm3{%k2}
    8c:vcvtps2pd (%r10),%ymm30{%k2}
    92:vcvtps2pd %ymm1,%zmm3{%k2}
    98:vcvtps2pd %ymm1,%zmm30{%k2}
    9e:vcvtps2pd %ymm19,%zmm30{%k2}
    a4:vcvtps2pd %ymm19,%zmm3{%k2}
#################
TODO: elf/file.cpp:186

234:0
#################
TODO: elf/file.cpp:252

234:0

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



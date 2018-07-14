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
size:     173
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   237
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
offset:   237
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
66 0f e6 d9 66 41 0f e6  1a c5 f9 e6 d9 62 61 fd
08 e6 f1 62 21 fd 08 e6  f3 62 b1 fd 08 e6 db c5
fd e6 d9 62 61 fd 28 e6  f1 62 21 fd 28 e6 f3 62
b1 fd 28 e6 db 62 d1 fd  48 e6 1a 62 41 fd 48 e6
32 62 f1 fd 48 e6 d9 62  61 fd 48 e6 f1 62 21 fd
48 e6 f3 62 b1 fd 48 e6  db 62 f1 fd 0a e6 d9 62
61 fd 0a e6 f1 62 21 fd  0a e6 f3 62 b1 fd 0a e6
db 62 f1 fd 2a e6 d9 62  61 fd 2a e6 f1 62 21 fd
2a e6 f3 62 b1 fd 2a e6  db 62 d1 fd 4a e6 1a 62
41 fd 4a e6 32 62 f1 fd  4a e6 d9 62 61 fd 4a e6
f1 62 21 fd 4a e6 f3 62  b1 fd 4a e6 db
     0:cvttpd2dq %xmm1,%xmm3
     4:cvttpd2dq (%r10),%xmm3
     9:vcvttpd2dq %xmm1,%xmm3
     d:vcvttpd2dq %xmm1,%xmm30
    13:vcvttpd2dq %xmm19,%xmm30
    19:vcvttpd2dq %xmm19,%xmm3
    1f:vcvttpd2dq %ymm1,%xmm3
    23:vcvttpd2dq %ymm1,%xmm30
    29:vcvttpd2dq %ymm19,%xmm30
    2f:vcvttpd2dq %ymm19,%xmm3
    35:vcvttpd2dq (%r10),%ymm3
    3b:vcvttpd2dq (%r10),%ymm30
    41:vcvttpd2dq %zmm1,%ymm3
    47:vcvttpd2dq %zmm1,%ymm30
    4d:vcvttpd2dq %zmm19,%ymm30
    53:vcvttpd2dq %zmm19,%ymm3
    59:vcvttpd2dq %xmm1,%xmm3{%k2}
    5f:vcvttpd2dq %xmm1,%xmm30{%k2}
    65:vcvttpd2dq %xmm19,%xmm30{%k2}
    6b:vcvttpd2dq %xmm19,%xmm3{%k2}
    71:vcvttpd2dq %ymm1,%xmm3{%k2}
    77:vcvttpd2dq %ymm1,%xmm30{%k2}
    7d:vcvttpd2dq %ymm19,%xmm30{%k2}
    83:vcvttpd2dq %ymm19,%xmm3{%k2}
    89:vcvttpd2dq (%r10),%ymm3{%k2}
    8f:vcvttpd2dq (%r10),%ymm30{%k2}
    95:vcvttpd2dq %zmm1,%ymm3{%k2}
    9b:vcvttpd2dq %zmm1,%ymm30{%k2}
    a1:vcvttpd2dq %zmm19,%ymm30{%k2}
    a7:vcvttpd2dq %zmm19,%ymm3{%k2}
#################
TODO: elf/file.cpp:186

237:0
#################
TODO: elf/file.cpp:252

237:0

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



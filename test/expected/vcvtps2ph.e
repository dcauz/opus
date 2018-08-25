class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 456
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
size:     244
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   308
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
offset:   308
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
offset:   409
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
offset:   312
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
offset:   408
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
c4 e3 7d 1d d1 01 c4 c3  7d 1d 12 02 c4 e3 79 1d
d1 03 c4 c3 79 1d 12 04  62 f3 7d 2b 1d d1 05 62
d3 7d 2b 1d 12 06 62 f3  7d 0b 1d d1 07 62 d3 7d
0b 1d 12 08 62 f3 7d 48  1d d1 09 62 d3 7d 48 1d
12 0a 62 f3 7d 4b 1d d1  0b 62 d3 7d 4b 1d 12 0c
c4 63 7d 1d e1 0d c4 43  7d 1d 22 0e c4 63 79 1d
e1 0f c4 43 79 1d 22 10  62 73 7d 2b 1d e1 11 62
53 7d 2b 1d 22 12 62 73  7d 0b 1d e1 13 62 53 7d
0b 1d 22 14 62 73 7d 48  1d e1 15 62 53 7d 48 1d
22 16 62 73 7d 4b 1d e1  17 62 53 7d 4b 1d 22 18
62 e3 7d 28 1d f1 19 62  c3 7d 28 1d 32 1a 62 e3
7d 08 1d f1 1b 62 c3 7d  08 1d 32 1c 62 e3 7d 2b
1d f1 1d 62 c3 7d 2b 1d  32 1e 62 e3 7d 0b 1d f1
1f 62 c3 7d 0b 1d 32 20  62 e3 7d 48 1d f1 21 62
c3 7d 48 1d 32 22 62 e3  7d 4b 1d f1 23 62 c3 7d
4b 1d 32 24
     0:vcvtps2ph $0x1,%ymm2,%xmm1
     6:vcvtps2ph $0x2,%ymm2,(%r10)
     c:vcvtps2ph $0x3,%xmm2,%xmm1
    12:vcvtps2ph $0x4,%xmm2,(%r10)
    18:vcvtps2ph $0x5,%ymm2,%xmm1{%k3}
    1f:vcvtps2ph $0x6,%ymm2,(%r10){%k3}
    26:vcvtps2ph $0x7,%xmm2,%xmm1{%k3}
    2d:vcvtps2ph $0x8,%xmm2,(%r10){%k3}
    34:vcvtps2ph $0x9,%zmm2,%ymm1
    3b:vcvtps2ph $0xa,%zmm2,(%r10)
    42:vcvtps2ph $0xb,%zmm2,%ymm1{%k3}
    49:vcvtps2ph $0xc,%zmm2,(%r10){%k3}
    50:vcvtps2ph $0xd,%ymm12,%xmm1
    56:vcvtps2ph $0xe,%ymm12,(%r10)
    5c:vcvtps2ph $0xf,%xmm12,%xmm1
    62:vcvtps2ph $0x10,%xmm12,(%r10)
    68:vcvtps2ph $0x11,%ymm12,%xmm1{%k3}
    6f:vcvtps2ph $0x12,%ymm12,(%r10){%k3}
    76:vcvtps2ph $0x13,%xmm12,%xmm1{%k3}
    7d:vcvtps2ph $0x14,%xmm12,(%r10){%k3}
    84:vcvtps2ph $0x15,%zmm12,%ymm1
    8b:vcvtps2ph $0x16,%zmm12,(%r10)
    92:vcvtps2ph $0x17,%zmm12,%ymm1{%k3}
    99:vcvtps2ph $0x18,%zmm12,(%r10){%k3}
    a0:vcvtps2ph $0x19,%ymm22,%xmm1
    a7:vcvtps2ph $0x1a,%ymm22,(%r10)
    ae:vcvtps2ph $0x1b,%xmm22,%xmm1
    b5:vcvtps2ph $0x1c,%xmm22,(%r10)
    bc:vcvtps2ph $0x1d,%ymm22,%xmm1{%k3}
    c3:vcvtps2ph $0x1e,%ymm22,(%r10){%k3}
    ca:vcvtps2ph $0x1f,%xmm22,%xmm1{%k3}
    d1:vcvtps2ph $0x20,%xmm22,(%r10){%k3}
    d8:vcvtps2ph $0x21,%zmm22,%ymm1
    df:vcvtps2ph $0x22,%zmm22,(%r10)
    e6:vcvtps2ph $0x23,%zmm22,%ymm1{%k3}
    ed:vcvtps2ph $0x24,%zmm22,(%r10){%k3}
#################
TODO: elf/file.cpp:186

308:0
#################
TODO: elf/file.cpp:252

308:0

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



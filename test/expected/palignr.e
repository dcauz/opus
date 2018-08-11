class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 592
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
size:     377
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   441
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
offset:   441
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
offset:   545
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
offset:   448
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
offset:   544
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 3a 0f f9 01 41 0f 3a  0f 39 0b 41 0f 3a 0f 39
79 41 0f 3a 0f 39 dd 66  0f 3a 0f f9 01 66 41 0f
3a 0f fb 01 66 41 0f 3a  0f 39 0b 66 41 0f 3a 0f
39 79 66 41 0f 3a 0f 39  dd c4 e3 69 0f e9 01 c4
63 49 0f cd 01 c4 43 29  0f e9 01 62 c3 0d 08 0f
cd 01 62 a3 6d 00 0f e9  01 62 23 4d 00 0f cd 01
62 03 2d 00 0f e9 01 62  03 0d 00 0f fd 01 c4 43
71 0f 09 0b 62 c3 45 08  0f 19 79 62 c3 15 08 0f
39 dd 62 43 25 00 0f 39  0b c4 63 45 0f c9 01 c4
43 45 0f cb 01 62 33 25  20 0f cd 01 62 53 25 20
0f 09 0b c4 43 45 0f 09  0b c4 43 45 0f 09 79 c4
43 45 0f 09 dd 62 73 45  48 0f c9 01 62 53 45 48
0f cb 01 62 33 25 40 0f  cd 01 62 53 25 40 0f 09
0b 62 53 45 48 0f 09 0b  62 53 45 48 0f 09 79 62
53 45 48 0f 09 dd 62 73  45 0c 0f c9 01 62 53 45
0c 0f cb 01 62 33 25 04  0f cd 01 62 53 25 04 0f
09 0b 62 53 45 0c 0f 09  0b 62 53 45 0c 0f 09 79
62 53 45 0c 0f 09 dd 62  73 45 2c 0f c9 01 62 53
45 2c 0f cb 01 62 33 25  24 0f cd 01 62 53 25 24
0f 09 0b 62 53 45 2c 0f  09 0b 62 53 45 2c 0f 09
79 62 53 45 2c 0f 09 dd  62 73 45 4c 0f c9 01 62
53 45 4c 0f cb 01 62 33  25 44 0f cd 01 62 53 25
44 0f 09 0b 62 53 45 4c  0f 09 0b 62 53 45 4c 0f
09 79 62 53 45 4c 0f 09  dd
     0:palignr $0x1,%mm1,%mm7
     5:palignr $0xb,(%r9),%mm7
     b:palignr $0x79,(%r9),%mm7
    11:palignr $0xdd,(%r9),%mm7
    17:palignr $0x1,%xmm1,%xmm7
    1d:palignr $0x1,%xmm11,%xmm7
    24:palignr $0xb,(%r9),%xmm7
    2b:palignr $0x79,(%r9),%xmm7
    32:palignr $0xdd,(%r9),%xmm7
    39:vpalignr $0x1,%xmm1,%xmm2,%xmm5
    3f:vpalignr $0x1,%xmm5,%xmm6,%xmm9
    45:vpalignr $0x1,%xmm9,%xmm10,%xmm13
    4b:vpalignr $0x1,%xmm13,%xmm14,%xmm17
    52:vpalignr $0x1,%xmm17,%xmm18,%xmm21
    59:vpalignr $0x1,%xmm21,%xmm22,%xmm25
    60:vpalignr $0x1,%xmm25,%xmm26,%xmm29
    67:vpalignr $0x1,%xmm29,%xmm30,%xmm31
    6e:vpalignr $0xb,(%r9),%xmm1,%xmm9
    74:vpalignr $0x79,(%r9),%xmm7,%xmm19
    7b:vpalignr $0xdd,(%r9),%xmm13,%xmm23
    82:vpalignr $0xb,(%r9),%xmm27,%xmm31
    89:vpalignr $0x1,%ymm1,%ymm7,%ymm9
    8f:vpalignr $0x1,%ymm11,%ymm7,%ymm9
    95:vpalignr $0x1,%ymm21,%ymm27,%ymm9
    9c:vpalignr $0xb,(%r9),%ymm27,%ymm9
    a3:vpalignr $0xb,(%r9),%ymm7,%ymm9
    a9:vpalignr $0x79,(%r9),%ymm7,%ymm9
    af:vpalignr $0xdd,(%r9),%ymm7,%ymm9
    b5:vpalignr $0x1,%zmm1,%zmm7,%zmm9
    bc:vpalignr $0x1,%zmm11,%zmm7,%zmm9
    c3:vpalignr $0x1,%zmm21,%zmm27,%zmm9
    ca:vpalignr $0xb,(%r9),%zmm27,%zmm9
    d1:vpalignr $0xb,(%r9),%zmm7,%zmm9
    d8:vpalignr $0x79,(%r9),%zmm7,%zmm9
    df:vpalignr $0xdd,(%r9),%zmm7,%zmm9
    e6:vpalignr $0x1,%xmm1,%xmm7,%xmm9{%k4}
    ed:vpalignr $0x1,%xmm11,%xmm7,%xmm9{%k4}
    f4:vpalignr $0x1,%xmm21,%xmm27,%xmm9{%k4}
    fb:vpalignr $0xb,(%r9),%xmm27,%xmm9{%k4}
   102:vpalignr $0xb,(%r9),%xmm7,%xmm9{%k4}
   109:vpalignr $0x79,(%r9),%xmm7,%xmm9{%k4}
   110:vpalignr $0xdd,(%r9),%xmm7,%xmm9{%k4}
   117:vpalignr $0x1,%ymm1,%ymm7,%ymm9{%k4}
   11e:vpalignr $0x1,%ymm11,%ymm7,%ymm9{%k4}
   125:vpalignr $0x1,%ymm21,%ymm27,%ymm9{%k4}
   12c:vpalignr $0xb,(%r9),%ymm27,%ymm9{%k4}
   133:vpalignr $0xb,(%r9),%ymm7,%ymm9{%k4}
   13a:vpalignr $0x79,(%r9),%ymm7,%ymm9{%k4}
   141:vpalignr $0xdd,(%r9),%ymm7,%ymm9{%k4}
   148:vpalignr $0x1,%zmm1,%zmm7,%zmm9{%k4}
   14f:vpalignr $0x1,%zmm11,%zmm7,%zmm9{%k4}
   156:vpalignr $0x1,%zmm21,%zmm27,%zmm9{%k4}
   15d:vpalignr $0xb,(%r9),%zmm27,%zmm9{%k4}
   164:vpalignr $0xb,(%r9),%zmm7,%zmm9{%k4}
   16b:vpalignr $0x79,(%r9),%zmm7,%zmm9{%k4}
   172:vpalignr $0xdd,(%r9),%zmm7,%zmm9{%k4}
#################
TODO: elf/file.cpp:186

441:0
#################
TODO: elf/file.cpp:252

441:0

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



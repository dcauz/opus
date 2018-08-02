class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 368
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
size:     157
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   221
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
offset:   221
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
offset:   321
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
offset:   224
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
offset:   320
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
f3 0f 12 da f3 44 0f 12  c2 f3 45 0f 12 c1 f3 45
0f 12 02 c5 fa 12 da 62  31 7e 08 12 c6 62 c1 7e
08 12 d1 c4 41 7a 12 02  c5 fe 12 da 62 31 7e 28
12 c6 62 c1 7e 28 12 d1  c4 41 7e 12 02 62 f1 7e
48 12 da 62 31 7e 48 12  c6 62 c1 7e 48 12 d1 62
51 7e 48 12 02 62 f1 7e  0e 12 da 62 31 7e 09 12
c6 62 c1 7e 0b 12 d1 62  51 7e 0c 12 02 62 f1 7e
2a 12 da 62 31 7e 2d 12  c6 62 c1 7e 29 12 d1 62
51 7e 2a 12 02 62 f1 7e  4a 12 da 62 31 7e 4a 12
c6 62 c1 7e 4a 12 d1 62  51 7e 4e 12 02
     0:movsldup %xmm2,%xmm3
     4:movsldup %xmm2,%xmm8
     9:movsldup %xmm9,%xmm8
     e:movsldup (%r10),%xmm8
    13:vmovsldup %xmm2,%xmm3
    17:vmovsldup %xmm22,%xmm8
    1d:vmovsldup %xmm9,%xmm18
    23:vmovsldup (%r10),%xmm8
    28:vmovsldup %ymm2,%ymm3
    2c:vmovsldup %ymm22,%ymm8
    32:vmovsldup %ymm9,%ymm18
    38:vmovsldup (%r10),%ymm8
    3d:vmovsldup %zmm2,%zmm3
    43:vmovsldup %zmm22,%zmm8
    49:vmovsldup %zmm9,%zmm18
    4f:vmovsldup (%r10),%zmm8
    55:vmovsldup %xmm2,%xmm3{%k6}
    5b:vmovsldup %xmm22,%xmm8{%k1}
    61:vmovsldup %xmm9,%xmm18{%k3}
    67:vmovsldup (%r10),%xmm8{%k4}
    6d:vmovsldup %ymm2,%ymm3{%k2}
    73:vmovsldup %ymm22,%ymm8{%k5}
    79:vmovsldup %ymm9,%ymm18{%k1}
    7f:vmovsldup (%r10),%ymm8{%k2}
    85:vmovsldup %zmm2,%zmm3{%k2}
    8b:vmovsldup %zmm22,%zmm8{%k2}
    91:vmovsldup %zmm9,%zmm18{%k2}
    97:vmovsldup (%r10),%zmm8{%k6}
#################
TODO: elf/file.cpp:186

221:0
#################
TODO: elf/file.cpp:252

221:0

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



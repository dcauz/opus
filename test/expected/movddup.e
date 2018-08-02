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
f2 0f 12 da f2 44 0f 12  c2 f2 45 0f 12 c1 f2 45
0f 12 02 c5 fb 12 da 62  31 ff 08 12 c6 62 c1 ff
08 12 d1 c4 41 7b 12 02  c5 ff 12 da 62 31 ff 28
12 c6 62 c1 ff 28 12 d1  c4 41 7f 12 02 62 f1 ff
48 12 da 62 31 ff 48 12  c6 62 c1 ff 48 12 d1 62
51 ff 48 12 02 62 f1 ff  0e 12 da 62 31 ff 09 12
c6 62 c1 ff 0b 12 d1 62  51 ff 0c 12 02 62 f1 ff
2a 12 da 62 31 ff 2d 12  c6 62 c1 ff 29 12 d1 62
51 ff 2a 12 02 62 f1 ff  4a 12 da 62 31 ff 4a 12
c6 62 c1 ff 4a 12 d1 62  51 ff 4e 12 02
     0:movddup %xmm2,%xmm3
     4:movddup %xmm2,%xmm8
     9:movddup %xmm9,%xmm8
     e:movddup (%r10),%xmm8
    13:vmovddup %xmm2,%xmm3
    17:vmovddup %xmm22,%xmm8
    1d:vmovddup %xmm9,%xmm18
    23:vmovddup (%r10),%xmm8
    28:vmovddup %ymm2,%ymm3
    2c:vmovddup %ymm22,%ymm8
    32:vmovddup %ymm9,%ymm18
    38:vmovddup (%r10),%ymm8
    3d:vmovddup %zmm2,%zmm3
    43:vmovddup %zmm22,%zmm8
    49:vmovddup %zmm9,%zmm18
    4f:vmovddup (%r10),%zmm8
    55:vmovddup %xmm2,%xmm3{%k6}
    5b:vmovddup %xmm22,%xmm8{%k1}
    61:vmovddup %xmm9,%xmm18{%k3}
    67:vmovddup (%r10),%xmm8{%k4}
    6d:vmovddup %ymm2,%ymm3{%k2}
    73:vmovddup %ymm22,%ymm8{%k5}
    79:vmovddup %ymm9,%ymm18{%k1}
    7f:vmovddup (%r10),%ymm8{%k2}
    85:vmovddup %zmm2,%zmm3{%k2}
    8b:vmovddup %zmm22,%zmm8{%k2}
    91:vmovddup %zmm9,%zmm18{%k2}
    97:vmovddup (%r10),%zmm8{%k6}
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



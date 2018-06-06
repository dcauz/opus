class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 344
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
size:     130
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   194
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
offset:   194
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
offset:   297
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
offset:   200
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
offset:   296
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f e0 c8 0f e0 df 41 0f  e0 22 66 0f e0 c8 66 0f
e0 df 66 41 0f e0 22 0f  e3 c8 0f e3 df 41 0f e3
22 66 0f e3 c8 66 0f e3  df 66 41 0f e3 22 c5 e1
e0 f1 c4 c1 61 e0 32 62  a1 0d 00 e0 c0 62 41 05
00 e0 12 c5 e5 e0 f1 c4  c1 65 e0 32 62 a1 0d 20
e0 c0 62 41 05 20 e0 12  c5 e1 e3 f1 c4 c1 61 e3
32 62 a1 0d 00 e3 c0 62  41 05 00 e3 12 c5 e5 e3
f1 c4 c1 65 e3 32 62 a1  0d 20 e3 c0 62 41 05 20
e3 12
     0:pavgb %mm0,%mm1
     3:pavgb %mm7,%mm3
     6:pavgb (%r10),%mm4
     a:pavgb %xmm0,%xmm1
     e:pavgb %xmm7,%xmm3
    12:pavgb (%r10),%xmm4
    17:pavgw %mm0,%mm1
    1a:pavgw %mm7,%mm3
    1d:pavgw (%r10),%mm4
    21:pavgw %xmm0,%xmm1
    25:pavgw %xmm7,%xmm3
    29:pavgw (%r10),%xmm4
    2e:vpavgb %xmm1,%xmm3,%xmm6
    32:vpavgb (%r10),%xmm3,%xmm6
    37:vpavgb %xmm16,%xmm30,%xmm16
    3d:vpavgb (%r10),%xmm31,%xmm26
    43:vpavgb %ymm1,%ymm3,%ymm6
    47:vpavgb (%r10),%ymm3,%ymm6
    4c:vpavgb %ymm16,%ymm30,%ymm16
    52:vpavgb (%r10),%ymm31,%ymm26
    58:vpavgw %xmm1,%xmm3,%xmm6
    5c:vpavgw (%r10),%xmm3,%xmm6
    61:vpavgw %xmm16,%xmm30,%xmm16
    67:vpavgw (%r10),%xmm31,%xmm26
    6d:vpavgw %ymm1,%ymm3,%ymm6
    71:vpavgw (%r10),%ymm3,%ymm6
    76:vpavgw %ymm16,%ymm30,%ymm16
    7c:vpavgw (%r10),%ymm31,%ymm26
#################
TODO: elf/file.cpp:186

194:0
#################
TODO: elf/file.cpp:252

194:0

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



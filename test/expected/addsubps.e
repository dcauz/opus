class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 312
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
size:     97
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   161
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
offset:   161
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
offset:   265
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
offset:   168
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
offset:   264
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
f2 0f d0 d1 f2 41 0f d0  d0 f2 44 0f d0 e1 f2 45
0f d0 e0 f2 41 0f d0 12  f2 41 0f d0 12 f2 45 0f
d0 22 f2 45 0f d0 22 c5  eb d0 d9 c4 41 6b d0 e8
c4 c1 1b d0 d8 c4 c1 6b  d0 1a c4 41 6b d0 2a c4
c1 1b d0 1a c5 ef d0 d9  c4 41 6f d0 e8 c4 c1 1f
d0 d8 c4 c1 6f d0 1a c4  41 6f d0 2a c4 c1 1f d0
1a
     0:addsubps %xmm1,%xmm2
     4:addsubps %xmm8,%xmm2
     9:addsubps %xmm1,%xmm12
     e:addsubps %xmm8,%xmm12
    13:addsubps (%r10),%xmm2
    18:addsubps (%r10),%xmm2
    1d:addsubps (%r10),%xmm12
    22:addsubps (%r10),%xmm12
    27:vaddsubps %xmm1,%xmm2,%xmm3
    2b:vaddsubps %xmm8,%xmm2,%xmm13
    30:vaddsubps %xmm8,%xmm12,%xmm3
    35:vaddsubps (%r10),%xmm2,%xmm3
    3a:vaddsubps (%r10),%xmm2,%xmm13
    3f:vaddsubps (%r10),%xmm12,%xmm3
    44:vaddsubps %ymm1,%ymm2,%ymm3
    48:vaddsubps %ymm8,%ymm2,%ymm13
    4d:vaddsubps %ymm8,%ymm12,%ymm3
    52:vaddsubps (%r10),%ymm2,%ymm3
    57:vaddsubps (%r10),%ymm2,%ymm13
    5c:vaddsubps (%r10),%ymm12,%ymm3
#################
TODO: elf/file.cpp:186

161:0
#################
TODO: elf/file.cpp:252

161:0

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



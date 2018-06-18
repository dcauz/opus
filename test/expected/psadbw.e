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
size:     100
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   164
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
offset:   164
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
66 41 0f f6 d9 66 41 0f  f6 2a 62 61 55 08 f6 ca
c5 d1 f6 fa c4 c1 51 f6  12 62 41 55 08 f6 0a 62
c1 35 00 f6 22 62 d1 35  00 f6 12 62 61 55 28 f6
ca c5 d5 f6 fa c4 c1 55  f6 12 62 41 55 28 f6 0a
62 c1 35 20 f6 22 62 d1  35 20 f6 12 62 61 55 48
f6 cb 62 41 55 48 f6 0a  62 c1 35 40 f6 22 62 d1
35 40 f6 12
     0:psadbw %xmm9,%xmm3
     5:psadbw (%r10),%xmm5
     a:vpsadbw %xmm2,%xmm5,%xmm25
    10:vpsadbw %xmm2,%xmm5,%xmm7
    14:vpsadbw (%r10),%xmm5,%xmm2
    19:vpsadbw (%r10),%xmm5,%xmm25
    1f:vpsadbw (%r10),%xmm25,%xmm20
    25:vpsadbw (%r10),%xmm25,%xmm2
    2b:vpsadbw %ymm2,%ymm5,%ymm25
    31:vpsadbw %ymm2,%ymm5,%ymm7
    35:vpsadbw (%r10),%ymm5,%ymm2
    3a:vpsadbw (%r10),%ymm5,%ymm25
    40:vpsadbw (%r10),%ymm25,%ymm20
    46:vpsadbw (%r10),%ymm25,%ymm2
    4c:vpsadbw %zmm3,%zmm5,%zmm25
    52:vpsadbw (%r10),%zmm5,%zmm25
    58:vpsadbw (%r10),%zmm25,%zmm20
    5e:vpsadbw (%r10),%zmm25,%zmm2
#################
TODO: elf/file.cpp:186

164:0
#################
TODO: elf/file.cpp:252

164:0

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



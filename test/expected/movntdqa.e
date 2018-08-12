class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 272
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
size:     62
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   126
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
offset:   126
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
offset:   225
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
offset:   128
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
offset:   224
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 41 0f 38 2a 09 66 45  0f 38 2a 19 c4 c2 79 2a
09 c4 42 79 2a 19 62 c2  7d 08 2a 29 c4 c2 7d 2a
09 c4 42 7d 2a 19 62 c2  7d 28 2a 29 62 d2 7d 48
2a 09 62 52 7d 48 2a 19  62 c2 7d 48 2a 29
     0:movntdqa (%r9),%xmm1
     6:movntdqa (%r9),%xmm11
     c:vmovntdqa (%r9),%xmm1
    11:vmovntdqa (%r9),%xmm11
    16:vmovntdqa (%r9),%xmm21
    1c:vmovntdqa (%r9),%ymm1
    21:vmovntdqa (%r9),%ymm11
    26:vmovntdqa (%r9),%ymm21
    2c:vmovntdqa (%r9),%zmm1
    32:vmovntdqa (%r9),%zmm11
    38:vmovntdqa (%r9),%zmm21
#################
TODO: elf/file.cpp:186

126:0
#################
TODO: elf/file.cpp:252

126:0

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



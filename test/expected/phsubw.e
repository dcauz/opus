class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 288
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
size:     80
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   144
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
offset:   144
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
offset:   241
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
offset:   144
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
offset:   240
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 38 05 f8 41 0f 38 05  38 66 0f 38 05 f8 66 41
0f 38 05 38 0f 38 06 f8  41 0f 38 06 38 66 0f 38
06 f8 66 41 0f 38 06 38  c4 62 41 05 f8 c4 42 41
05 38 c4 62 41 06 f8 c4  42 41 06 38 c4 62 45 05
f8 c4 42 45 05 38 c4 62  45 06 f8 c4 42 45 06 38
00
     0:phsubw %mm0,%mm7
     4:phsubw (%r8),%mm7
     9:phsubw %xmm0,%xmm7
     e:phsubw (%r8),%xmm7
    14:phsubd %mm0,%mm7
    18:phsubd (%r8),%mm7
    1d:phsubd %xmm0,%xmm7
    22:phsubd (%r8),%xmm7
    28:vphsubw %xmm0,%xmm7,%xmm15
    2d:vphsubw (%r8),%xmm7,%xmm15
    32:vphsubd %xmm0,%xmm7,%xmm15
    37:vphsubd (%r8),%xmm7,%xmm15
    3c:vphsubw %ymm0,%ymm7,%ymm15
    41:vphsubw (%r8),%ymm7,%ymm15
    46:vphsubd %ymm0,%ymm7,%ymm15
    4b:vphsubd (%r8),%ymm7,%ymm15
#################
TODO: elf/file.cpp:186

144:0
#################
TODO: elf/file.cpp:252

144:0

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



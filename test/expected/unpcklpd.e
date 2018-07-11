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
size:     98
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   162
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
offset:   162
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
66 0f 14 fa 66 41 0f 14  02 62 11 85 00 14 54 22
01 c4 81 51 14 5c 22 10  c4 81 51 14 5c 22 10 62
11 85 20 14 94 22 10 00  00 00 c4 81 55 14 5c 22
10 c4 81 55 14 5c 22 10  62 11 d5 40 14 94 a2 67
35 00 00 62 91 d5 48 14  14 22 62 d1 d5 48 14 0a
62 71 b5 00 14 d7 62 41  fd 28 14 e5 62 01 dd 40
14 ec
     0:unpcklpd %xmm2,%xmm7
     4:unpcklpd (%r10),%xmm0
     9:vunpcklpd 0x10(%r10,%r12,1),%xmm31,%xmm10
    11:vunpcklpd 0x10(%r10,%r12,1),%xmm5,%xmm3
    18:vunpcklpd 0x10(%r10,%r12,1),%xmm5,%xmm3
    1f:vunpcklpd 0x10(%r10,%r12,1),%ymm31,%ymm10
    2a:vunpcklpd 0x10(%r10,%r12,1),%ymm5,%ymm3
    31:vunpcklpd 0x10(%r10,%r12,1),%ymm5,%ymm3
    38:vunpcklpd 0x3567(%r10,%r12,4),%zmm21,%zmm10
    43:vunpcklpd (%r10,%r12,1),%zmm5,%zmm2
    4a:vunpcklpd (%r10),%zmm5,%zmm1
    50:vunpcklpd %xmm7,%xmm25,%xmm10
    56:vunpcklpd %ymm13,%ymm0,%ymm28
    5c:vunpcklpd %zmm28,%zmm20,%zmm29
#################
TODO: elf/file.cpp:186

162:0
#################
TODO: elf/file.cpp:252

162:0

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



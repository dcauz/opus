class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 400
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
size:     192
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   256
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
offset:   256
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
offset:   353
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
offset:   256
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
offset:   352
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f dc fa 41 0f dc 02 62  11 05 00 dc 54 22 01 c4
81 51 dc 5c 22 10 c4 81  51 dc 5c 22 10 62 11 05
20 dc 94 22 10 00 00 00  c4 81 55 dc 5c 22 10 c4
81 55 dc 5c 22 10 62 11  55 40 dc 94 a2 67 35 00
00 62 91 55 48 dc 14 22  62 d1 55 48 dc 0a 62 71
35 00 dc d7 62 41 7d 28  dc e5 62 01 5d 40 dc ec
0f dd fa 41 0f dd 02 62  11 05 00 dd 54 22 01 c4
81 51 dd 5c 22 10 c4 81  51 dd 5c 22 10 62 11 05
20 dd 94 22 10 00 00 00  c4 81 55 dd 5c 22 10 c4
81 55 dd 5c 22 10 62 11  55 40 dd 94 a2 67 35 00
00 62 91 55 48 dd 14 22  62 d1 55 48 dd 0a 62 71
35 00 dd d7 62 41 7d 28  dd e5 62 01 5d 40 dd ec
00
     0:paddusb %mm2,%mm7
     3:paddusb (%r10),%mm0
     7:vpaddusb 0x10(%r10,%r12,1),%xmm31,%xmm10
     f:vpaddusb 0x10(%r10,%r12,1),%xmm5,%xmm3
    16:vpaddusb 0x10(%r10,%r12,1),%xmm5,%xmm3
    1d:vpaddusb 0x10(%r10,%r12,1),%ymm31,%ymm10
    28:vpaddusb 0x10(%r10,%r12,1),%ymm5,%ymm3
    2f:vpaddusb 0x10(%r10,%r12,1),%ymm5,%ymm3
    36:vpaddusb 0x3567(%r10,%r12,4),%zmm21,%zmm10
    41:vpaddusb (%r10,%r12,1),%zmm5,%zmm2
    48:vpaddusb (%r10),%zmm5,%zmm1
    4e:vpaddusb %xmm7,%xmm25,%xmm10
    54:vpaddusb %ymm13,%ymm0,%ymm28
    5a:vpaddusb %zmm28,%zmm20,%zmm29
    60:paddusw %mm2,%mm7
    63:paddusw (%r10),%mm0
    67:vpaddusw 0x10(%r10,%r12,1),%xmm31,%xmm10
    6f:vpaddusw 0x10(%r10,%r12,1),%xmm5,%xmm3
    76:vpaddusw 0x10(%r10,%r12,1),%xmm5,%xmm3
    7d:vpaddusw 0x10(%r10,%r12,1),%ymm31,%ymm10
    88:vpaddusw 0x10(%r10,%r12,1),%ymm5,%ymm3
    8f:vpaddusw 0x10(%r10,%r12,1),%ymm5,%ymm3
    96:vpaddusw 0x3567(%r10,%r12,4),%zmm21,%zmm10
    a1:vpaddusw (%r10,%r12,1),%zmm5,%zmm2
    a8:vpaddusw (%r10),%zmm5,%zmm1
    ae:vpaddusw %xmm7,%xmm25,%xmm10
    b4:vpaddusw %ymm13,%ymm0,%ymm28
    ba:vpaddusw %zmm28,%zmm20,%zmm29
#################
TODO: elf/file.cpp:186

256:0
#################
TODO: elf/file.cpp:252

256:0

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



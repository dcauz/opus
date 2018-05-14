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
0f e8 fa 41 0f e8 02 62  11 05 00 e8 54 22 01 c4
81 51 e8 5c 22 10 c4 81  51 e8 5c 22 10 62 11 05
20 e8 94 22 10 00 00 00  c4 81 55 e8 5c 22 10 c4
81 55 e8 5c 22 10 62 11  55 40 e8 94 a2 67 35 00
00 62 91 55 48 e8 14 22  62 d1 55 48 e8 0a 62 71
35 00 e8 d7 62 41 7d 28  e8 e5 62 01 5d 40 e8 ec
0f e9 fa 41 0f e9 02 62  11 05 00 e9 54 22 01 c4
81 51 e9 5c 22 10 c4 81  51 e9 5c 22 10 62 11 05
20 e9 94 22 10 00 00 00  c4 81 55 e9 5c 22 10 c4
81 55 e9 5c 22 10 62 11  55 40 e9 94 a2 67 35 00
00 62 91 55 48 e9 14 22  62 d1 55 48 e9 0a 62 71
35 00 e9 d7 62 41 7d 28  e9 e5 62 01 5d 40 e9 ec
00
     0:psubsb %mm2,%mm7
     3:psubsb (%r10),%mm0
     7:vpsubsb 0x10(%r10,%r12,1),%xmm31,%xmm10
     f:vpsubsb 0x10(%r10,%r12,1),%xmm5,%xmm3
    16:vpsubsb 0x10(%r10,%r12,1),%xmm5,%xmm3
    1d:vpsubsb 0x10(%r10,%r12,1),%ymm31,%ymm10
    28:vpsubsb 0x10(%r10,%r12,1),%ymm5,%ymm3
    2f:vpsubsb 0x10(%r10,%r12,1),%ymm5,%ymm3
    36:vpsubsb 0x3567(%r10,%r12,4),%zmm21,%zmm10
    41:vpsubsb (%r10,%r12,1),%zmm5,%zmm2
    48:vpsubsb (%r10),%zmm5,%zmm1
    4e:vpsubsb %xmm7,%xmm25,%xmm10
    54:vpsubsb %ymm13,%ymm0,%ymm28
    5a:vpsubsb %zmm28,%zmm20,%zmm29
    60:psubsw %mm2,%mm7
    63:psubsw (%r10),%mm0
    67:vpsubsw 0x10(%r10,%r12,1),%xmm31,%xmm10
    6f:vpsubsw 0x10(%r10,%r12,1),%xmm5,%xmm3
    76:vpsubsw 0x10(%r10,%r12,1),%xmm5,%xmm3
    7d:vpsubsw 0x10(%r10,%r12,1),%ymm31,%ymm10
    88:vpsubsw 0x10(%r10,%r12,1),%ymm5,%ymm3
    8f:vpsubsw 0x10(%r10,%r12,1),%ymm5,%ymm3
    96:vpsubsw 0x3567(%r10,%r12,4),%zmm21,%zmm10
    a1:vpsubsw (%r10,%r12,1),%zmm5,%zmm2
    a8:vpsubsw (%r10),%zmm5,%zmm1
    ae:vpsubsw %xmm7,%xmm25,%xmm10
    b4:vpsubsw %ymm13,%ymm0,%ymm28
    ba:vpsubsw %zmm28,%zmm20,%zmm29

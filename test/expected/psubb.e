class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 592
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
size:     384
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   448
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
offset:   448
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
offset:   545
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
offset:   448
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
offset:   544
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f f8 fa 41 0f f8 02 62  11 05 00 f8 54 22 01 c4
81 51 f8 5c 22 10 c4 81  51 f8 5c 22 10 62 11 05
20 f8 94 22 10 00 00 00  c4 81 55 f8 5c 22 10 c4
81 55 f8 5c 22 10 62 11  55 40 f8 94 a2 67 35 00
00 62 91 55 48 f8 14 22  62 d1 55 48 f8 0a 62 71
35 00 f8 d7 62 41 7d 28  f8 e5 62 01 5d 40 f8 ec
0f f9 fa 41 0f f9 02 62  11 05 00 f9 54 22 01 c4
81 51 f9 5c 22 10 c4 81  51 f9 5c 22 10 62 11 05
20 f9 94 22 10 00 00 00  c4 81 55 f9 5c 22 10 c4
81 55 f9 5c 22 10 62 11  55 40 f9 94 a2 67 35 00
00 62 91 55 48 f9 14 22  62 d1 55 48 f9 0a 62 71
35 00 f9 d7 62 41 7d 28  f9 e5 62 01 5d 40 f9 ec
0f fa fa 41 0f fa 02 62  11 05 00 fa 54 22 01 c4
81 51 fa 5c 22 10 c4 81  51 fa 5c 22 10 62 11 05
20 fa 94 22 10 00 00 00  c4 81 55 fa 5c 22 10 c4
81 55 fa 5c 22 10 62 11  55 40 fa 94 a2 67 35 00
00 62 91 55 48 fa 14 22  62 d1 55 48 fa 0a 62 71
35 00 fa d7 62 41 7d 28  fa e5 62 01 5d 40 fa ec
0f fb fa 41 0f fb 02 62  11 85 00 fb 54 22 01 c4
81 51 fb 5c 22 10 c4 81  51 fb 5c 22 10 62 11 85
20 fb 94 22 10 00 00 00  c4 81 55 fb 5c 22 10 c4
81 55 fb 5c 22 10 62 11  d5 40 fb 94 a2 67 35 00
00 62 91 d5 48 fb 14 22  62 d1 d5 48 fb 0a 62 71
b5 00 fb d7 62 41 fd 28  fb e5 62 01 dd 40 fb ec
00
     0:psubb %mm2,%mm7
     3:psubb (%r10),%mm0
     7:vpsubb 0x10(%r10,%r12,1),%xmm31,%xmm10
     f:vpsubb 0x10(%r10,%r12,1),%xmm5,%xmm3
    16:vpsubb 0x10(%r10,%r12,1),%xmm5,%xmm3
    1d:vpsubb 0x10(%r10,%r12,1),%ymm31,%ymm10
    28:vpsubb 0x10(%r10,%r12,1),%ymm5,%ymm3
    2f:vpsubb 0x10(%r10,%r12,1),%ymm5,%ymm3
    36:vpsubb 0x3567(%r10,%r12,4),%zmm21,%zmm10
    41:vpsubb (%r10,%r12,1),%zmm5,%zmm2
    48:vpsubb (%r10),%zmm5,%zmm1
    4e:vpsubb %xmm7,%xmm25,%xmm10
    54:vpsubb %ymm13,%ymm0,%ymm28
    5a:vpsubb %zmm28,%zmm20,%zmm29
    60:psubw %mm2,%mm7
    63:psubw (%r10),%mm0
    67:vpsubw 0x10(%r10,%r12,1),%xmm31,%xmm10
    6f:vpsubw 0x10(%r10,%r12,1),%xmm5,%xmm3
    76:vpsubw 0x10(%r10,%r12,1),%xmm5,%xmm3
    7d:vpsubw 0x10(%r10,%r12,1),%ymm31,%ymm10
    88:vpsubw 0x10(%r10,%r12,1),%ymm5,%ymm3
    8f:vpsubw 0x10(%r10,%r12,1),%ymm5,%ymm3
    96:vpsubw 0x3567(%r10,%r12,4),%zmm21,%zmm10
    a1:vpsubw (%r10,%r12,1),%zmm5,%zmm2
    a8:vpsubw (%r10),%zmm5,%zmm1
    ae:vpsubw %xmm7,%xmm25,%xmm10
    b4:vpsubw %ymm13,%ymm0,%ymm28
    ba:vpsubw %zmm28,%zmm20,%zmm29
    c0:psubd %mm2,%mm7
    c3:psubd (%r10),%mm0
    c7:vpsubd 0x10(%r10,%r12,1),%xmm31,%xmm10
    cf:vpsubd 0x10(%r10,%r12,1),%xmm5,%xmm3
    d6:vpsubd 0x10(%r10,%r12,1),%xmm5,%xmm3
    dd:vpsubd 0x10(%r10,%r12,1),%ymm31,%ymm10
    e8:vpsubd 0x10(%r10,%r12,1),%ymm5,%ymm3
    ef:vpsubd 0x10(%r10,%r12,1),%ymm5,%ymm3
    f6:vpsubd 0x3567(%r10,%r12,4),%zmm21,%zmm10
   101:vpsubd (%r10,%r12,1),%zmm5,%zmm2
   108:vpsubd (%r10),%zmm5,%zmm1
   10e:vpsubd %xmm7,%xmm25,%xmm10
   114:vpsubd %ymm13,%ymm0,%ymm28
   11a:vpsubd %zmm28,%zmm20,%zmm29
   120:psubq %mm2,%mm7
   123:psubq (%r10),%mm0
   127:vpsubq 0x10(%r10,%r12,1),%xmm31,%xmm10
   12f:vpsubq 0x10(%r10,%r12,1),%xmm5,%xmm3
   136:vpsubq 0x10(%r10,%r12,1),%xmm5,%xmm3
   13d:vpsubq 0x10(%r10,%r12,1),%ymm31,%ymm10
   148:vpsubq 0x10(%r10,%r12,1),%ymm5,%ymm3
   14f:vpsubq 0x10(%r10,%r12,1),%ymm5,%ymm3
   156:vpsubq 0x3567(%r10,%r12,4),%zmm21,%zmm10
   161:vpsubq (%r10,%r12,1),%zmm5,%zmm2
   168:vpsubq (%r10),%zmm5,%zmm1
   16e:vpsubq %xmm7,%xmm25,%xmm10
   174:vpsubq %ymm13,%ymm0,%ymm28
   17a:vpsubq %zmm28,%zmm20,%zmm29
#################
TODO: elf/file.cpp:186

448:0
#################
TODO: elf/file.cpp:252

448:0

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



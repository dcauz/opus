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
0f fc fa 41 0f fc 02 62  11 05 00 fc 54 22 01 c4
81 51 fc 5c 22 10 c4 81  51 fc 5c 22 10 62 11 05
20 fc 94 22 10 00 00 00  c4 81 55 fc 5c 22 10 c4
81 55 fc 5c 22 10 62 11  55 40 fc 94 a2 67 35 00
00 62 91 55 48 fc 14 22  62 d1 55 48 fc 0a 62 71
35 00 fc d7 62 41 7d 28  fc e5 62 01 5d 40 fc ec
0f fd fa 41 0f fd 02 62  11 05 00 fd 54 22 01 c4
81 51 fd 5c 22 10 c4 81  51 fd 5c 22 10 62 11 05
20 fd 94 22 10 00 00 00  c4 81 55 fd 5c 22 10 c4
81 55 fd 5c 22 10 62 11  55 40 fd 94 a2 67 35 00
00 62 91 55 48 fd 14 22  62 d1 55 48 fd 0a 62 71
35 00 fd d7 62 41 7d 28  fd e5 62 01 5d 40 fd ec
0f fe fa 41 0f fe 02 62  11 05 00 fe 54 22 01 c4
81 51 fe 5c 22 10 c4 81  51 fe 5c 22 10 62 11 05
20 fe 94 22 10 00 00 00  c4 81 55 fe 5c 22 10 c4
81 55 fe 5c 22 10 62 11  55 40 fe 94 a2 67 35 00
00 62 91 55 48 fe 14 22  62 d1 55 48 fe 0a 62 71
35 00 fe d7 62 41 7d 28  fe e5 62 01 5d 40 fe ec
0f d4 fa 41 0f d4 02 62  11 85 00 d4 54 22 01 c4
81 51 d4 5c 22 10 c4 81  51 d4 5c 22 10 62 11 85
20 d4 94 22 10 00 00 00  c4 81 55 d4 5c 22 10 c4
81 55 d4 5c 22 10 62 11  d5 40 d4 94 a2 67 35 00
00 62 91 d5 48 d4 14 22  62 d1 d5 48 d4 0a 62 71
b5 00 d4 d7 62 41 fd 28  d4 e5 62 01 dd 40 d4 ec
00
     0:paddb %mm2,%mm7
     3:paddb (%r10),%mm0
     7:vpaddb 0x10(%r10,%r12,1),%xmm31,%xmm10
     f:vpaddb 0x10(%r10,%r12,1),%xmm5,%xmm3
    16:vpaddb 0x10(%r10,%r12,1),%xmm5,%xmm3
    1d:vpaddb 0x10(%r10,%r12,1),%ymm31,%ymm10
    28:vpaddb 0x10(%r10,%r12,1),%ymm5,%ymm3
    2f:vpaddb 0x10(%r10,%r12,1),%ymm5,%ymm3
    36:vpaddb 0x3567(%r10,%r12,4),%zmm21,%zmm10
    41:vpaddb (%r10,%r12,1),%zmm5,%zmm2
    48:vpaddb (%r10),%zmm5,%zmm1
    4e:vpaddb %xmm7,%xmm25,%xmm10
    54:vpaddb %ymm13,%ymm0,%ymm28
    5a:vpaddb %zmm28,%zmm20,%zmm29
    60:paddw %mm2,%mm7
    63:paddw (%r10),%mm0
    67:vpaddw 0x10(%r10,%r12,1),%xmm31,%xmm10
    6f:vpaddw 0x10(%r10,%r12,1),%xmm5,%xmm3
    76:vpaddw 0x10(%r10,%r12,1),%xmm5,%xmm3
    7d:vpaddw 0x10(%r10,%r12,1),%ymm31,%ymm10
    88:vpaddw 0x10(%r10,%r12,1),%ymm5,%ymm3
    8f:vpaddw 0x10(%r10,%r12,1),%ymm5,%ymm3
    96:vpaddw 0x3567(%r10,%r12,4),%zmm21,%zmm10
    a1:vpaddw (%r10,%r12,1),%zmm5,%zmm2
    a8:vpaddw (%r10),%zmm5,%zmm1
    ae:vpaddw %xmm7,%xmm25,%xmm10
    b4:vpaddw %ymm13,%ymm0,%ymm28
    ba:vpaddw %zmm28,%zmm20,%zmm29
    c0:paddd %mm2,%mm7
    c3:paddd (%r10),%mm0
    c7:vpaddd 0x10(%r10,%r12,1),%xmm31,%xmm10
    cf:vpaddd 0x10(%r10,%r12,1),%xmm5,%xmm3
    d6:vpaddd 0x10(%r10,%r12,1),%xmm5,%xmm3
    dd:vpaddd 0x10(%r10,%r12,1),%ymm31,%ymm10
    e8:vpaddd 0x10(%r10,%r12,1),%ymm5,%ymm3
    ef:vpaddd 0x10(%r10,%r12,1),%ymm5,%ymm3
    f6:vpaddd 0x3567(%r10,%r12,4),%zmm21,%zmm10
   101:vpaddd (%r10,%r12,1),%zmm5,%zmm2
   108:vpaddd (%r10),%zmm5,%zmm1
   10e:vpaddd %xmm7,%xmm25,%xmm10
   114:vpaddd %ymm13,%ymm0,%ymm28
   11a:vpaddd %zmm28,%zmm20,%zmm29
   120:paddq %mm2,%mm7
   123:paddq (%r10),%mm0
   127:vpaddq 0x10(%r10,%r12,1),%xmm31,%xmm10
   12f:vpaddq 0x10(%r10,%r12,1),%xmm5,%xmm3
   136:vpaddq 0x10(%r10,%r12,1),%xmm5,%xmm3
   13d:vpaddq 0x10(%r10,%r12,1),%ymm31,%ymm10
   148:vpaddq 0x10(%r10,%r12,1),%ymm5,%ymm3
   14f:vpaddq 0x10(%r10,%r12,1),%ymm5,%ymm3
   156:vpaddq 0x3567(%r10,%r12,4),%zmm21,%zmm10
   161:vpaddq (%r10,%r12,1),%zmm5,%zmm2
   168:vpaddq (%r10),%zmm5,%zmm1
   16e:vpaddq %xmm7,%xmm25,%xmm10
   174:vpaddq %ymm13,%ymm0,%ymm28
   17a:vpaddq %zmm28,%zmm20,%zmm29
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



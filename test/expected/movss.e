class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 408
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
size:     194
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   258
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
offset:   258
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
offset:   361
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
offset:   264
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
offset:   360
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
f3 0f 10 c8 f3 0f 10 fa  f3 0f 10 ef f3 41 0f 10
02 f3 41 0f 10 04 92 f3  41 0f 10 44 92 10 f3 41
0f 10 22 f3 41 0f 10 2c  92 f3 41 0f 10 74 92 10
f3 45 0f 11 2a f3 45 0f  11 34 92 f3 45 0f 11 7c
92 10 f3 41 0f 10 22 f3  41 0f 10 2c 92 f3 41 0f
10 74 92 10 c5 e2 10 c8  c5 6a 10 d9 c5 9a 10 cb
c5 12 10 fc 62 c1 7e 08  10 fb 62 51 5e 00 10 dc
c5 2a 11 f4 c4 41 1a 10  df c4 c1 7a 10 02 c4 c1
7a 10 04 92 c4 c1 7a 10  44 92 10 c4 c1 7a 10 22
c4 c1 7a 10 2c 92 c4 c1  7a 10 74 92 10 c4 41 7a
11 2a c4 41 7a 11 34 92  c4 41 7a 11 7c 92 10 62
41 7e 08 11 02 c4 41 7a  11 34 92 c4 c1 7a 11 64
92 10
     0:movss %xmm0,%xmm1
     4:movss %xmm2,%xmm7
     8:movss %xmm7,%xmm5
     c:movss (%r10),%xmm0
    11:movss (%r10,%rdx,4),%xmm0
    17:movss 0x10(%r10,%rdx,4),%xmm0
    1e:movss (%r10),%xmm4
    23:movss (%r10,%rdx,4),%xmm5
    29:movss 0x10(%r10,%rdx,4),%xmm6
    30:movss %xmm13,(%r10)
    35:movss %xmm14,(%r10,%rdx,4)
    3b:movss %xmm15,0x10(%r10,%rdx,4)
    42:movss (%r10),%xmm4
    47:movss (%r10,%rdx,4),%xmm5
    4d:movss 0x10(%r10,%rdx,4),%xmm6
    54:vmovss %xmm0,%xmm3,%xmm1
    58:vmovss %xmm1,%xmm2,%xmm11
    5c:vmovss %xmm3,%xmm12,%xmm1
    60:vmovss %xmm4,%xmm13,%xmm15
    64:vmovss %xmm11,%xmm0,%xmm23
    6a:vmovss %xmm12,%xmm20,%xmm11
    70:vmovss %xmm14,%xmm10,%xmm4
    74:vmovss %xmm15,%xmm12,%xmm11
    79:vmovss (%r10),%xmm0
    7e:vmovss (%r10,%rdx,4),%xmm0
    84:vmovss 0x10(%r10,%rdx,4),%xmm0
    8b:vmovss (%r10),%xmm4
    90:vmovss (%r10,%rdx,4),%xmm5
    96:vmovss 0x10(%r10,%rdx,4),%xmm6
    9d:vmovss %xmm13,(%r10)
    a2:vmovss %xmm14,(%r10,%rdx,4)
    a8:vmovss %xmm15,0x10(%r10,%rdx,4)
    af:vmovss %xmm24,(%r10)
    b5:vmovss %xmm14,(%r10,%rdx,4)
    bb:vmovss %xmm4,0x10(%r10,%rdx,4)
#################
TODO: elf/file.cpp:186

258:0
#################
TODO: elf/file.cpp:252

258:0

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



class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 432
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
size:     220
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   284
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
offset:   284
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
offset:   385
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
offset:   288
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
offset:   384
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 57 22 66 0f 57 e2  c4 c1 71 57 12 62 d1 d5
00 57 12 62 c1 f5 08 57  22 62 c1 d5 00 57 22 c4
c1 75 57 12 62 d1 d5 20  57 12 62 c1 f5 28 57 22
62 c1 d5 20 57 22 62 d1  f5 48 57 12 62 d1 d5 40
57 12 62 c1 f5 48 57 22  62 c1 d5 40 57 22 c4 c1
71 57 d2 62 d1 d5 00 57  d2 62 c1 f5 08 57 e2 62
c1 d5 00 57 e2 c4 c1 75  57 d2 62 d1 d5 20 57 d2
62 c1 f5 28 57 e2 62 c1  d5 20 57 e2 62 d1 f5 48
57 d2 62 d1 d5 40 57 d2  62 c1 f5 48 57 e2 62 c1
d5 40 57 e2 62 b1 f5 08  57 d4 62 b1 d5 00 57 d4
62 a1 f5 08 57 e4 62 a1  d5 00 57 e4 62 b1 f5 28
57 d4 62 b1 d5 20 57 d4  62 a1 f5 28 57 e4 62 a1
d5 20 57 e4 62 b1 f5 48  57 d4 62 b1 d5 40 57 d4
62 a1 f5 48 57 e4 62 a1  d5 40 57 e4
     0:xorpd (%rdx),%xmm4
     4:xorpd %xmm2,%xmm4
     8:vxorpd (%r10),%xmm1,%xmm2
     d:vxorpd (%r10),%xmm21,%xmm2
    13:vxorpd (%r10),%xmm1,%xmm20
    19:vxorpd (%r10),%xmm21,%xmm20
    1f:vxorpd (%r10),%ymm1,%ymm2
    24:vxorpd (%r10),%ymm21,%ymm2
    2a:vxorpd (%r10),%ymm1,%ymm20
    30:vxorpd (%r10),%ymm21,%ymm20
    36:vxorpd (%r10),%zmm1,%zmm2
    3c:vxorpd (%r10),%zmm21,%zmm2
    42:vxorpd (%r10),%zmm1,%zmm20
    48:vxorpd (%r10),%zmm21,%zmm20
    4e:vxorpd %xmm10,%xmm1,%xmm2
    53:vxorpd %xmm10,%xmm21,%xmm2
    59:vxorpd %xmm10,%xmm1,%xmm20
    5f:vxorpd %xmm10,%xmm21,%xmm20
    65:vxorpd %ymm10,%ymm1,%ymm2
    6a:vxorpd %ymm10,%ymm21,%ymm2
    70:vxorpd %ymm10,%ymm1,%ymm20
    76:vxorpd %ymm10,%ymm21,%ymm20
    7c:vxorpd %zmm10,%zmm1,%zmm2
    82:vxorpd %zmm10,%zmm21,%zmm2
    88:vxorpd %zmm10,%zmm1,%zmm20
    8e:vxorpd %zmm10,%zmm21,%zmm20
    94:vxorpd %xmm20,%xmm1,%xmm2
    9a:vxorpd %xmm20,%xmm21,%xmm2
    a0:vxorpd %xmm20,%xmm1,%xmm20
    a6:vxorpd %xmm20,%xmm21,%xmm20
    ac:vxorpd %ymm20,%ymm1,%ymm2
    b2:vxorpd %ymm20,%ymm21,%ymm2
    b8:vxorpd %ymm20,%ymm1,%ymm20
    be:vxorpd %ymm20,%ymm21,%ymm20
    c4:vxorpd %zmm20,%zmm1,%zmm2
    ca:vxorpd %zmm20,%zmm21,%zmm2
    d0:vxorpd %zmm20,%zmm1,%zmm20
    d6:vxorpd %zmm20,%zmm21,%zmm20
#################
TODO: elf/file.cpp:186

284:0
#################
TODO: elf/file.cpp:252

284:0

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



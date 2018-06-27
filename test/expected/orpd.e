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
66 0f 56 22 66 0f 56 e2  c4 c1 71 56 12 62 d1 d5
00 56 12 62 c1 f5 08 56  22 62 c1 d5 00 56 22 c4
c1 75 56 12 62 d1 d5 20  56 12 62 c1 f5 28 56 22
62 c1 d5 20 56 22 62 d1  f5 48 56 12 62 d1 d5 40
56 12 62 c1 f5 48 56 22  62 c1 d5 40 56 22 c4 c1
71 56 d2 62 d1 d5 00 56  d2 62 c1 f5 08 56 e2 62
c1 d5 00 56 e2 c4 c1 75  56 d2 62 d1 d5 20 56 d2
62 c1 f5 28 56 e2 62 c1  d5 20 56 e2 62 d1 f5 48
56 d2 62 d1 d5 40 56 d2  62 c1 f5 48 56 e2 62 c1
d5 40 56 e2 62 b1 f5 08  56 d4 62 b1 d5 00 56 d4
62 a1 f5 08 56 e4 62 a1  d5 00 56 e4 62 b1 f5 28
56 d4 62 b1 d5 20 56 d4  62 a1 f5 28 56 e4 62 a1
d5 20 56 e4 62 b1 f5 48  56 d4 62 b1 d5 40 56 d4
62 a1 f5 48 56 e4 62 a1  d5 40 56 e4
     0:orpd (%rdx),%xmm4
     4:orpd %xmm2,%xmm4
     8:vorpd (%r10),%xmm1,%xmm2
     d:vorpd (%r10),%xmm21,%xmm2
    13:vorpd (%r10),%xmm1,%xmm20
    19:vorpd (%r10),%xmm21,%xmm20
    1f:vorpd (%r10),%ymm1,%ymm2
    24:vorpd (%r10),%ymm21,%ymm2
    2a:vorpd (%r10),%ymm1,%ymm20
    30:vorpd (%r10),%ymm21,%ymm20
    36:vorpd (%r10),%zmm1,%zmm2
    3c:vorpd (%r10),%zmm21,%zmm2
    42:vorpd (%r10),%zmm1,%zmm20
    48:vorpd (%r10),%zmm21,%zmm20
    4e:vorpd %xmm10,%xmm1,%xmm2
    53:vorpd %xmm10,%xmm21,%xmm2
    59:vorpd %xmm10,%xmm1,%xmm20
    5f:vorpd %xmm10,%xmm21,%xmm20
    65:vorpd %ymm10,%ymm1,%ymm2
    6a:vorpd %ymm10,%ymm21,%ymm2
    70:vorpd %ymm10,%ymm1,%ymm20
    76:vorpd %ymm10,%ymm21,%ymm20
    7c:vorpd %zmm10,%zmm1,%zmm2
    82:vorpd %zmm10,%zmm21,%zmm2
    88:vorpd %zmm10,%zmm1,%zmm20
    8e:vorpd %zmm10,%zmm21,%zmm20
    94:vorpd %xmm20,%xmm1,%xmm2
    9a:vorpd %xmm20,%xmm21,%xmm2
    a0:vorpd %xmm20,%xmm1,%xmm20
    a6:vorpd %xmm20,%xmm21,%xmm20
    ac:vorpd %ymm20,%ymm1,%ymm2
    b2:vorpd %ymm20,%ymm21,%ymm2
    b8:vorpd %ymm20,%ymm1,%ymm20
    be:vorpd %ymm20,%ymm21,%ymm20
    c4:vorpd %zmm20,%zmm1,%zmm2
    ca:vorpd %zmm20,%zmm21,%zmm2
    d0:vorpd %zmm20,%zmm1,%zmm20
    d6:vorpd %zmm20,%zmm21,%zmm20

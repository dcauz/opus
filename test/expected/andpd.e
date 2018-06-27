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
66 0f 54 22 66 0f 54 e2  c4 c1 71 54 12 62 d1 d5
00 54 12 62 c1 f5 08 54  22 62 c1 d5 00 54 22 c4
c1 75 54 12 62 d1 d5 20  54 12 62 c1 f5 28 54 22
62 c1 d5 20 54 22 62 d1  f5 48 54 12 62 d1 d5 40
54 12 62 c1 f5 48 54 22  62 c1 d5 40 54 22 c4 c1
71 54 d2 62 d1 d5 00 54  d2 62 c1 f5 08 54 e2 62
c1 d5 00 54 e2 c4 c1 75  54 d2 62 d1 d5 20 54 d2
62 c1 f5 28 54 e2 62 c1  d5 20 54 e2 62 d1 f5 48
54 d2 62 d1 d5 40 54 d2  62 c1 f5 48 54 e2 62 c1
d5 40 54 e2 62 b1 f5 08  54 d4 62 b1 d5 00 54 d4
62 a1 f5 08 54 e4 62 a1  d5 00 54 e4 62 b1 f5 28
54 d4 62 b1 d5 20 54 d4  62 a1 f5 28 54 e4 62 a1
d5 20 54 e4 62 b1 f5 48  54 d4 62 b1 d5 40 54 d4
62 a1 f5 48 54 e4 62 a1  d5 40 54 e4
     0:andpd (%rdx),%xmm4
     4:andpd %xmm2,%xmm4
     8:vandpd (%r10),%xmm1,%xmm2
     d:vandpd (%r10),%xmm21,%xmm2
    13:vandpd (%r10),%xmm1,%xmm20
    19:vandpd (%r10),%xmm21,%xmm20
    1f:vandpd (%r10),%ymm1,%ymm2
    24:vandpd (%r10),%ymm21,%ymm2
    2a:vandpd (%r10),%ymm1,%ymm20
    30:vandpd (%r10),%ymm21,%ymm20
    36:vandpd (%r10),%zmm1,%zmm2
    3c:vandpd (%r10),%zmm21,%zmm2
    42:vandpd (%r10),%zmm1,%zmm20
    48:vandpd (%r10),%zmm21,%zmm20
    4e:vandpd %xmm10,%xmm1,%xmm2
    53:vandpd %xmm10,%xmm21,%xmm2
    59:vandpd %xmm10,%xmm1,%xmm20
    5f:vandpd %xmm10,%xmm21,%xmm20
    65:vandpd %ymm10,%ymm1,%ymm2
    6a:vandpd %ymm10,%ymm21,%ymm2
    70:vandpd %ymm10,%ymm1,%ymm20
    76:vandpd %ymm10,%ymm21,%ymm20
    7c:vandpd %zmm10,%zmm1,%zmm2
    82:vandpd %zmm10,%zmm21,%zmm2
    88:vandpd %zmm10,%zmm1,%zmm20
    8e:vandpd %zmm10,%zmm21,%zmm20
    94:vandpd %xmm20,%xmm1,%xmm2
    9a:vandpd %xmm20,%xmm21,%xmm2
    a0:vandpd %xmm20,%xmm1,%xmm20
    a6:vandpd %xmm20,%xmm21,%xmm20
    ac:vandpd %ymm20,%ymm1,%ymm2
    b2:vandpd %ymm20,%ymm21,%ymm2
    b8:vandpd %ymm20,%ymm1,%ymm20
    be:vandpd %ymm20,%ymm21,%ymm20
    c4:vandpd %zmm20,%zmm1,%zmm2
    ca:vandpd %zmm20,%zmm21,%zmm2
    d0:vandpd %zmm20,%zmm1,%zmm20
    d6:vandpd %zmm20,%zmm21,%zmm20
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



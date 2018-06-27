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
66 0f 55 22 66 0f 55 e2  c4 c1 71 55 12 62 d1 d5
00 55 12 62 c1 f5 08 55  22 62 c1 d5 00 55 22 c4
c1 75 55 12 62 d1 d5 20  55 12 62 c1 f5 28 55 22
62 c1 d5 20 55 22 62 d1  f5 48 55 12 62 d1 d5 40
55 12 62 c1 f5 48 55 22  62 c1 d5 40 55 22 c4 c1
71 55 d2 62 d1 d5 00 55  d2 62 c1 f5 08 55 e2 62
c1 d5 00 55 e2 c4 c1 75  55 d2 62 d1 d5 20 55 d2
62 c1 f5 28 55 e2 62 c1  d5 20 55 e2 62 d1 f5 48
55 d2 62 d1 d5 40 55 d2  62 c1 f5 48 55 e2 62 c1
d5 40 55 e2 62 b1 f5 08  55 d4 62 b1 d5 00 55 d4
62 a1 f5 08 55 e4 62 a1  d5 00 55 e4 62 b1 f5 28
55 d4 62 b1 d5 20 55 d4  62 a1 f5 28 55 e4 62 a1
d5 20 55 e4 62 b1 f5 48  55 d4 62 b1 d5 40 55 d4
62 a1 f5 48 55 e4 62 a1  d5 40 55 e4
     0:andnpd (%rdx),%xmm4
     4:andnpd %xmm2,%xmm4
     8:vandnpd (%r10),%xmm1,%xmm2
     d:vandnpd (%r10),%xmm21,%xmm2
    13:vandnpd (%r10),%xmm1,%xmm20
    19:vandnpd (%r10),%xmm21,%xmm20
    1f:vandnpd (%r10),%ymm1,%ymm2
    24:vandnpd (%r10),%ymm21,%ymm2
    2a:vandnpd (%r10),%ymm1,%ymm20
    30:vandnpd (%r10),%ymm21,%ymm20
    36:vandnpd (%r10),%zmm1,%zmm2
    3c:vandnpd (%r10),%zmm21,%zmm2
    42:vandnpd (%r10),%zmm1,%zmm20
    48:vandnpd (%r10),%zmm21,%zmm20
    4e:vandnpd %xmm10,%xmm1,%xmm2
    53:vandnpd %xmm10,%xmm21,%xmm2
    59:vandnpd %xmm10,%xmm1,%xmm20
    5f:vandnpd %xmm10,%xmm21,%xmm20
    65:vandnpd %ymm10,%ymm1,%ymm2
    6a:vandnpd %ymm10,%ymm21,%ymm2
    70:vandnpd %ymm10,%ymm1,%ymm20
    76:vandnpd %ymm10,%ymm21,%ymm20
    7c:vandnpd %zmm10,%zmm1,%zmm2
    82:vandnpd %zmm10,%zmm21,%zmm2
    88:vandnpd %zmm10,%zmm1,%zmm20
    8e:vandnpd %zmm10,%zmm21,%zmm20
    94:vandnpd %xmm20,%xmm1,%xmm2
    9a:vandnpd %xmm20,%xmm21,%xmm2
    a0:vandnpd %xmm20,%xmm1,%xmm20
    a6:vandnpd %xmm20,%xmm21,%xmm20
    ac:vandnpd %ymm20,%ymm1,%ymm2
    b2:vandnpd %ymm20,%ymm21,%ymm2
    b8:vandnpd %ymm20,%ymm1,%ymm20
    be:vandnpd %ymm20,%ymm21,%ymm20
    c4:vandnpd %zmm20,%zmm1,%zmm2
    ca:vandnpd %zmm20,%zmm21,%zmm2
    d0:vandnpd %zmm20,%zmm1,%zmm20
    d6:vandnpd %zmm20,%zmm21,%zmm20
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



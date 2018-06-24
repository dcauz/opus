class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 288
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
size:     78
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   142
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
offset:   142
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
offset:   241
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
offset:   144
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
offset:   240
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 59 22 66 0f 59 e2  c4 c1 71 59 12 62 d1 d5
00 59 12 62 c1 f5 08 59  22 62 c1 d5 00 59 22 c4
c1 75 59 12 62 d1 d5 20  59 12 62 c1 f5 28 59 22
62 c1 d5 20 59 22 62 d1  f5 48 59 12 62 d1 d5 40
59 12 62 c1 f5 48 59 22  62 c1 d5 40 59 22
     0:mulpd (%rdx),%xmm4
     4:mulpd %xmm2,%xmm4
     8:vmulpd (%r10),%xmm1,%xmm2
     d:vmulpd (%r10),%xmm21,%xmm2
    13:vmulpd (%r10),%xmm1,%xmm20
    19:vmulpd (%r10),%xmm21,%xmm20
    1f:vmulpd (%r10),%ymm1,%ymm2
    24:vmulpd (%r10),%ymm21,%ymm2
    2a:vmulpd (%r10),%ymm1,%ymm20
    30:vmulpd (%r10),%ymm21,%ymm20
    36:vmulpd (%r10),%zmm1,%zmm2
    3c:vmulpd (%r10),%zmm21,%zmm2
    42:vmulpd (%r10),%zmm1,%zmm20
    48:vmulpd (%r10),%zmm21,%zmm20
#################
TODO: elf/file.cpp:186

142:0
#################
TODO: elf/file.cpp:252

142:0

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



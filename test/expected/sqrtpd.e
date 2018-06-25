class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 320
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
size:     110
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   174
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
offset:   174
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
offset:   273
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
offset:   176
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
offset:   272
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 51 22 66 0f 51 e2  c4 c1 79 51 0a 62 c1 fd
08 51 2a c5 f9 51 e1 62  61 fd 08 51 c1 62 21 fd
08 51 c5 62 b1 fd 08 51  d5 c4 c1 7d 51 0a 62 c1
fd 28 51 2a c5 fd 51 e1  62 61 fd 28 51 c1 62 21
fd 28 51 c5 62 b1 fd 28  51 d5 62 d1 fd 48 51 0a
62 c1 fd 48 51 2a 62 f1  fd 48 51 e1 62 61 fd 48
51 c1 62 21 fd 48 51 c5  62 b1 fd 48 51 d5
     0:sqrtpd (%rdx),%xmm4
     4:sqrtpd %xmm2,%xmm4
     8:vsqrtpd (%r10),%xmm1
     d:vsqrtpd (%r10),%xmm21
    13:vsqrtpd %xmm1,%xmm4
    17:vsqrtpd %xmm1,%xmm24
    1d:vsqrtpd %xmm21,%xmm24
    23:vsqrtpd %xmm21,%xmm2
    29:vsqrtpd (%r10),%ymm1
    2e:vsqrtpd (%r10),%ymm21
    34:vsqrtpd %ymm1,%ymm4
    38:vsqrtpd %ymm1,%ymm24
    3e:vsqrtpd %ymm21,%ymm24
    44:vsqrtpd %ymm21,%ymm2
    4a:vsqrtpd (%r10),%zmm1
    50:vsqrtpd (%r10),%zmm21
    56:vsqrtpd %zmm1,%zmm4
    5c:vsqrtpd %zmm1,%zmm24
    62:vsqrtpd %zmm21,%zmm24
    68:vsqrtpd %zmm21,%zmm2
#################
TODO: elf/file.cpp:186

174:0
#################
TODO: elf/file.cpp:252

174:0

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



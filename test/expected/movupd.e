class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 272
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
size:     60
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   124
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
offset:   124
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
offset:   225
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
offset:   128
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
offset:   224
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 10 ca 66 41 0f 10  0a 66 41 0f 11 22 c5 f9
10 ca c4 c1 79 10 0a c4  c1 79 11 22 c5 fd 10 ca
c4 c1 7d 10 0a c4 c1 7d  11 22 62 f1 fd 48 10 ca
62 d1 fd 48 10 0a 62 d1  fd 48 11 22
     0:movupd %xmm2,%xmm1
     4:movupd (%r10),%xmm1
     9:movupd %xmm4,(%r10)
     e:vmovupd %xmm2,%xmm1
    12:vmovupd (%r10),%xmm1
    17:vmovupd %xmm4,(%r10)
    1c:vmovupd %ymm2,%ymm1
    20:vmovupd (%r10),%ymm1
    25:vmovupd %ymm4,(%r10)
    2a:vmovupd %zmm2,%zmm1
    30:vmovupd (%r10),%zmm1
    36:vmovupd %zmm4,(%r10)
#################
TODO: elf/file.cpp:186

124:0
#################
TODO: elf/file.cpp:252

124:0

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



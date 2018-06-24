class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 256
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
size:     43
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   107
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
offset:   107
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
offset:   209
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
offset:   112
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
offset:   208
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 44 0f 50 d7 66 41 0f  50 d2 66 41 0f 50 d7 c5
79 50 d7 c4 c1 79 50 d2  c4 c1 79 50 d7 c5 7d 50
d7 c4 c1 7d 50 d2 c4 c1  7d 50 d7
     0:movmskpd %xmm7,%r10d
     5:movmskpd %xmm10,%edx
     a:movmskpd %xmm15,%edx
     f:vmovmskpd %xmm7,%r10d
    13:vmovmskpd %xmm10,%edx
    18:vmovmskpd %xmm15,%edx
    1d:vmovmskpd %ymm7,%r10d
    21:vmovmskpd %ymm10,%edx
    26:vmovmskpd %ymm15,%edx
#################
TODO: elf/file.cpp:186

107:0
#################
TODO: elf/file.cpp:252

107:0

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



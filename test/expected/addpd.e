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
66 0f 58 22 66 0f 58 e2  c4 c1 71 58 12 62 d1 d5
00 58 12 62 c1 f5 08 58  22 62 c1 d5 00 58 22 c4
c1 75 58 12 62 d1 d5 20  58 12 62 c1 f5 28 58 22
62 c1 d5 20 58 22 62 d1  f5 48 58 12 62 d1 d5 40
58 12 62 c1 f5 48 58 22  62 c1 d5 40 58 22
     0:addpd (%rdx),%xmm4
     4:addpd %xmm2,%xmm4
     8:vaddpd (%r10),%xmm1,%xmm2
     d:vaddpd (%r10),%xmm21,%xmm2
    13:vaddpd (%r10),%xmm1,%xmm20
    19:vaddpd (%r10),%xmm21,%xmm20
    1f:vaddpd (%r10),%ymm1,%ymm2
    24:vaddpd (%r10),%ymm21,%ymm2
    2a:vaddpd (%r10),%ymm1,%ymm20
    30:vaddpd (%r10),%ymm21,%ymm20
    36:vaddpd (%r10),%zmm1,%zmm2
    3c:vaddpd (%r10),%zmm21,%zmm2
    42:vaddpd (%r10),%zmm1,%zmm20
    48:vaddpd (%r10),%zmm21,%zmm20
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



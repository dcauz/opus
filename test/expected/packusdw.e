class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 440
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
size:     231
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   295
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
offset:   295
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
offset:   393
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
offset:   296
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
offset:   392
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 38 2b d1 66 41 0f  38 2b 12 66 41 0f 38 2b
d3 66 45 0f 38 2b 22 c4  e2 69 2b d9 c4 c2 69 2b
1a c4 c2 69 2b db c4 c2  19 2b 1a 62 b2 6d 08 2b
dd 62 d2 4d 00 2b 1a 62  f2 6d 0c 2b d9 62 d2 6d
0c 2b 1a 62 d2 6d 0c 2b  db 62 d2 1d 0c 2b 1a 62
b2 6d 0c 2b dd 62 d2 4d  04 2b 1a c4 e2 6d 2b d9
c4 c2 6d 2b 1a c4 c2 6d  2b db c4 c2 1d 2b 1a 62
b2 6d 28 2b dd 62 d2 4d  20 2b 1a 62 f2 6d 2c 2b
d9 62 d2 6d 2c 2b 1a 62  d2 6d 2c 2b db 62 d2 1d
2c 2b 1a 62 b2 6d 2c 2b  dd 62 d2 4d 24 2b 1a 62
f2 6d 48 2b d9 62 d2 6d  48 2b 1a 62 d2 6d 48 2b
db 62 d2 1d 48 2b 1a 62  b2 6d 48 2b dd 62 d2 4d
40 2b 1a 62 f2 6d 4c 2b  d9 62 d2 6d 4c 2b 1a 62
d2 6d 4c 2b db 62 d2 1d  4c 2b 1a 62 b2 6d 4c 2b
dd 62 d2 4d 44 2b 1a
     0:packusdw %xmm1,%xmm2
     5:packusdw (%r10),%xmm2
     b:packusdw %xmm11,%xmm2
    11:packusdw (%r10),%xmm12
    17:vpackusdw %xmm1,%xmm2,%xmm3
    1c:vpackusdw (%r10),%xmm2,%xmm3
    21:vpackusdw %xmm11,%xmm2,%xmm3
    26:vpackusdw (%r10),%xmm12,%xmm3
    2b:vpackusdw %xmm21,%xmm2,%xmm3
    31:vpackusdw (%r10),%xmm22,%xmm3
    37:vpackusdw %xmm1,%xmm2,%xmm3{%k4}
    3d:vpackusdw (%r10),%xmm2,%xmm3{%k4}
    43:vpackusdw %xmm11,%xmm2,%xmm3{%k4}
    49:vpackusdw (%r10),%xmm12,%xmm3{%k4}
    4f:vpackusdw %xmm21,%xmm2,%xmm3{%k4}
    55:vpackusdw (%r10),%xmm22,%xmm3{%k4}
    5b:vpackusdw %ymm1,%ymm2,%ymm3
    60:vpackusdw (%r10),%ymm2,%ymm3
    65:vpackusdw %ymm11,%ymm2,%ymm3
    6a:vpackusdw (%r10),%ymm12,%ymm3
    6f:vpackusdw %ymm21,%ymm2,%ymm3
    75:vpackusdw (%r10),%ymm22,%ymm3
    7b:vpackusdw %ymm1,%ymm2,%ymm3{%k4}
    81:vpackusdw (%r10),%ymm2,%ymm3{%k4}
    87:vpackusdw %ymm11,%ymm2,%ymm3{%k4}
    8d:vpackusdw (%r10),%ymm12,%ymm3{%k4}
    93:vpackusdw %ymm21,%ymm2,%ymm3{%k4}
    99:vpackusdw (%r10),%ymm22,%ymm3{%k4}
    9f:vpackusdw %zmm1,%zmm2,%zmm3
    a5:vpackusdw (%r10),%zmm2,%zmm3
    ab:vpackusdw %zmm11,%zmm2,%zmm3
    b1:vpackusdw (%r10),%zmm12,%zmm3
    b7:vpackusdw %zmm21,%zmm2,%zmm3
    bd:vpackusdw (%r10),%zmm22,%zmm3
    c3:vpackusdw %zmm1,%zmm2,%zmm3{%k4}
    c9:vpackusdw (%r10),%zmm2,%zmm3{%k4}
    cf:vpackusdw %zmm11,%zmm2,%zmm3{%k4}
    d5:vpackusdw (%r10),%zmm12,%zmm3{%k4}
    db:vpackusdw %zmm21,%zmm2,%zmm3{%k4}
    e1:vpackusdw (%r10),%zmm22,%zmm3{%k4}
#################
TODO: elf/file.cpp:186

295:0
#################
TODO: elf/file.cpp:252

295:0

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



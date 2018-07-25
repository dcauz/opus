class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 400
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
size:     187
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   251
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
offset:   251
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
offset:   353
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
offset:   256
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
offset:   352
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 5b e1 66 41 0f 5b  22 66 0f 5b 22 c5 f9 5b
e1 62 61 7d 08 5b c1 62  b1 7d 08 5b e5 62 21 7d
08 5b c5 c4 c1 79 5b 22  62 61 7d 08 5b 02 c5 fd
5b e1 62 61 7d 28 5b c1  62 b1 7d 28 5b e5 62 21
7d 28 5b c5 c4 c1 7d 5b  22 62 61 7d 28 5b 02 62
f1 7d 09 5b e1 62 61 7d  0a 5b c1 62 b1 7d 0b 5b
e5 62 21 7d 0c 5b c5 62  d1 7d 0d 5b 22 62 61 7d
0e 5b 02 62 f1 7d 2f 5b  e1 62 61 7d 2e 5b c1 62
b1 7d 2d 5b e5 62 21 7d  2c 5b c5 62 d1 7d 2b 5b
22 62 61 7d 2a 5b 02 62  f1 7d 49 5b e1 62 61 7d
4a 5b c1 62 b1 7d 4b 5b  e5 62 21 7d 4c 5b c5 62
d1 7d 4d 5b 22 62 61 7d  4e 5b 02
     0:cvtps2dq %xmm1,%xmm4
     4:cvtps2dq (%r10),%xmm4
     9:cvtps2dq (%rdx),%xmm4
     d:vcvtps2dq %xmm1,%xmm4
    11:vcvtps2dq %xmm1,%xmm24
    17:vcvtps2dq %xmm21,%xmm4
    1d:vcvtps2dq %xmm21,%xmm24
    23:vcvtps2dq (%r10),%xmm4
    28:vcvtps2dq (%rdx),%xmm24
    2e:vcvtps2dq %ymm1,%ymm4
    32:vcvtps2dq %ymm1,%ymm24
    38:vcvtps2dq %ymm21,%ymm4
    3e:vcvtps2dq %ymm21,%ymm24
    44:vcvtps2dq (%r10),%ymm4
    49:vcvtps2dq (%rdx),%ymm24
    4f:vcvtps2dq %xmm1,%xmm4{%k1}
    55:vcvtps2dq %xmm1,%xmm24{%k2}
    5b:vcvtps2dq %xmm21,%xmm4{%k3}
    61:vcvtps2dq %xmm21,%xmm24{%k4}
    67:vcvtps2dq (%r10),%xmm4{%k5}
    6d:vcvtps2dq (%rdx),%xmm24{%k6}
    73:vcvtps2dq %ymm1,%ymm4{%k7}
    79:vcvtps2dq %ymm1,%ymm24{%k6}
    7f:vcvtps2dq %ymm21,%ymm4{%k5}
    85:vcvtps2dq %ymm21,%ymm24{%k4}
    8b:vcvtps2dq (%r10),%ymm4{%k3}
    91:vcvtps2dq (%rdx),%ymm24{%k2}
    97:vcvtps2dq %zmm1,%zmm4{%k1}
    9d:vcvtps2dq %zmm1,%zmm24{%k2}
    a3:vcvtps2dq %zmm21,%zmm4{%k3}
    a9:vcvtps2dq %zmm21,%zmm24{%k4}
    af:vcvtps2dq (%r10),%zmm4{%k5}
    b5:vcvtps2dq (%rdx),%zmm24{%k6}
#################
TODO: elf/file.cpp:186

251:0
#################
TODO: elf/file.cpp:252

251:0

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



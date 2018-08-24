class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 520
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
size:     309
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   373
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
offset:   373
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
offset:   473
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
offset:   376
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
offset:   472
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 3a 44 d9 00 66 0f  3a 44 d9 01 66 41 0f 3a
44 1a 02 66 44 0f 3a 44  e9 03 66 44 0f 3a 44 e9
04 66 44 0f 3a 44 e9 05  66 44 0f 3a 44 e9 06 66
44 0f 3a 44 e9 07 66 44  0f 3a 44 e9 08 66 44 0f
3a 44 e9 09 66 44 0f 3a  44 e9 0a 66 44 0f 3a 44
e9 0b 66 44 0f 3a 44 e9  0c 66 44 0f 3a 44 e9 0d
66 44 0f 3a 44 e9 0e 66  44 0f 3a 44 e9 0f 66 44
0f 3a 44 e9 10 66 44 0f  3a 44 e9 11 66 44 0f 3a
44 e9 12 66 44 0f 3a 44  e9 13 66 44 0f 3a 44 e9
14 66 44 0f 3a 44 e9 15  66 44 0f 3a 44 e9 16 66
44 0f 3a 44 e9 17 66 44  0f 3a 44 e9 18 66 44 0f
3a 44 e9 19 66 44 0f 3a  44 e9 1a 66 44 0f 3a 44
e9 1b 66 44 0f 3a 44 e9  1c 66 44 0f 3a 44 e9 1d
66 44 0f 3a 44 e9 1e 66  44 0f 3a 44 e9 1f 66 44
0f 3a 44 e9 20 66 44 0f  3a 44 e9 21 66 45 0f 3a
44 2a 6f c4 e3 61 44 d1  01 c4 c3 61 44 12 02 c4
e3 11 44 d1 03 c4 e3 11  44 d1 04 c4 e3 11 44 d1
05 c4 e3 11 44 d1 07 c4  e3 11 44 d1 09 c4 e3 11
44 d1 0b c4 e3 11 44 d1  0e c4 e3 11 44 d1 10 c4
c3 11 44 12 6f
     0:pclmullqlqdq %xmm1,%xmm3
     6:pclmulhqlqdq %xmm1,%xmm3
     c:pclmullqhqdq (%r10),%xmm3
    13:pclmulhqhqdq %xmm1,%xmm13
    1a:pclmulqdq $0x4,%xmm1,%xmm13
    21:pclmulqdq $0x5,%xmm1,%xmm13
    28:pclmulqdq $0x6,%xmm1,%xmm13
    2f:pclmulqdq $0x7,%xmm1,%xmm13
    36:pclmulqdq $0x8,%xmm1,%xmm13
    3d:pclmulqdq $0x9,%xmm1,%xmm13
    44:pclmulqdq $0xa,%xmm1,%xmm13
    4b:pclmulqdq $0xb,%xmm1,%xmm13
    52:pclmulqdq $0xc,%xmm1,%xmm13
    59:pclmulqdq $0xd,%xmm1,%xmm13
    60:pclmulqdq $0xe,%xmm1,%xmm13
    67:pclmulqdq $0xf,%xmm1,%xmm13
    6e:pclmullqhqdq %xmm1,%xmm13
    75:pclmulhqhqdq %xmm1,%xmm13
    7c:pclmulqdq $0x12,%xmm1,%xmm13
    83:pclmulqdq $0x13,%xmm1,%xmm13
    8a:pclmulqdq $0x14,%xmm1,%xmm13
    91:pclmulqdq $0x15,%xmm1,%xmm13
    98:pclmulqdq $0x16,%xmm1,%xmm13
    9f:pclmulqdq $0x17,%xmm1,%xmm13
    a6:pclmulqdq $0x18,%xmm1,%xmm13
    ad:pclmulqdq $0x19,%xmm1,%xmm13
    b4:pclmulqdq $0x1a,%xmm1,%xmm13
    bb:pclmulqdq $0x1b,%xmm1,%xmm13
    c2:pclmulqdq $0x1c,%xmm1,%xmm13
    c9:pclmulqdq $0x1d,%xmm1,%xmm13
    d0:pclmulqdq $0x1e,%xmm1,%xmm13
    d7:pclmulqdq $0x1f,%xmm1,%xmm13
    de:pclmulqdq $0x20,%xmm1,%xmm13
    e5:pclmulqdq $0x21,%xmm1,%xmm13
    ec:pclmulqdq $0x6f,(%r10),%xmm13
    f3:vpclmulhqlqdq %xmm1,%xmm3,%xmm2
    f9:vpclmullqhqdq (%r10),%xmm3,%xmm2
    ff:vpclmulhqhqdq %xmm1,%xmm13,%xmm2
   105:vpclmulqdq $0x4,%xmm1,%xmm13,%xmm2
   10b:vpclmulqdq $0x5,%xmm1,%xmm13,%xmm2
   111:vpclmulqdq $0x7,%xmm1,%xmm13,%xmm2
   117:vpclmulqdq $0x9,%xmm1,%xmm13,%xmm2
   11d:vpclmulqdq $0xb,%xmm1,%xmm13,%xmm2
   123:vpclmulqdq $0xe,%xmm1,%xmm13,%xmm2
   129:vpclmullqhqdq %xmm1,%xmm13,%xmm2
   12f:vpclmulqdq $0x6f,(%r10),%xmm13,%xmm2
#################
TODO: elf/file.cpp:186

373:0
#################
TODO: elf/file.cpp:252

373:0

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



class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 504
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
size:     294
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   358
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
offset:   358
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
offset:   457
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
offset:   360
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
offset:   456
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
f3 45 0f 70 e2 00 f3 0f  70 d1 00 f3 45 0f 70 22
01 f3 45 0f 70 e6 02 f3  45 0f 70 22 03 f3 45 0f
70 e2 00 f3 0f 70 d1 02  f3 0f 70 d1 04 f3 0f 70
d1 06 f3 0f 70 d1 08 f3  0f 70 d1 0a f3 0f 70 d1
0c f3 0f 70 d1 0e f3 0f  70 d1 12 f3 0f 70 d1 24
f3 0f 70 d1 48 f3 0f 70  d1 7f f3 0f 70 d1 89 f3
0f 70 d1 ed c4 41 7a 70  e2 00 c5 fa 70 d1 00 c4
41 7a 70 22 01 c4 41 7a  70 e6 02 c4 41 7a 70 22
03 c4 41 7a 70 e2 00 c5  fa 70 d1 02 c5 fa 70 d1
04 c5 fa 70 d1 06 c5 fa  70 d1 08 c5 fa 70 d1 0a
c5 fa 70 d1 0c c5 fa 70  d1 0e c5 fa 70 d1 12 c5
fa 70 d1 24 c5 fa 70 d1  48 c5 fa 70 d1 7f c5 fa
70 d1 89 c5 fa 70 d1 ed  c5 fe 70 d1 00 c4 41 7e
70 22 01 c4 41 7e 70 e6  02 c4 41 7e 70 22 03 c4
41 7e 70 e2 00 c5 fe 70  d1 02 c5 fe 70 d1 04 c5
fe 70 d1 06 c5 fe 70 d1  08 c5 fe 70 d1 0a c5 fe
70 d1 0c c5 fe 70 d1 0e  c5 fe 70 d1 12 c5 fe 70
d1 24 c5 fe 70 d1 48 c5  fe 70 d1 7f c5 fe 70 d1
89 c5 fe 70 d1 ed
     0:pshufhw $0x0,%xmm10,%xmm12
     6:pshufhw $0x0,%xmm1,%xmm2
     b:pshufhw $0x1,(%r10),%xmm12
    11:pshufhw $0x2,%xmm14,%xmm12
    17:pshufhw $0x3,(%r10),%xmm12
    1d:pshufhw $0x0,%xmm10,%xmm12
    23:pshufhw $0x2,%xmm1,%xmm2
    28:pshufhw $0x4,%xmm1,%xmm2
    2d:pshufhw $0x6,%xmm1,%xmm2
    32:pshufhw $0x8,%xmm1,%xmm2
    37:pshufhw $0xa,%xmm1,%xmm2
    3c:pshufhw $0xc,%xmm1,%xmm2
    41:pshufhw $0xe,%xmm1,%xmm2
    46:pshufhw $0x12,%xmm1,%xmm2
    4b:pshufhw $0x24,%xmm1,%xmm2
    50:pshufhw $0x48,%xmm1,%xmm2
    55:pshufhw $0x7f,%xmm1,%xmm2
    5a:pshufhw $0x89,%xmm1,%xmm2
    5f:pshufhw $0xed,%xmm1,%xmm2
    64:vpshufhw $0x0,%xmm10,%xmm12
    6a:vpshufhw $0x0,%xmm1,%xmm2
    6f:vpshufhw $0x1,(%r10),%xmm12
    75:vpshufhw $0x2,%xmm14,%xmm12
    7b:vpshufhw $0x3,(%r10),%xmm12
    81:vpshufhw $0x0,%xmm10,%xmm12
    87:vpshufhw $0x2,%xmm1,%xmm2
    8c:vpshufhw $0x4,%xmm1,%xmm2
    91:vpshufhw $0x6,%xmm1,%xmm2
    96:vpshufhw $0x8,%xmm1,%xmm2
    9b:vpshufhw $0xa,%xmm1,%xmm2
    a0:vpshufhw $0xc,%xmm1,%xmm2
    a5:vpshufhw $0xe,%xmm1,%xmm2
    aa:vpshufhw $0x12,%xmm1,%xmm2
    af:vpshufhw $0x24,%xmm1,%xmm2
    b4:vpshufhw $0x48,%xmm1,%xmm2
    b9:vpshufhw $0x7f,%xmm1,%xmm2
    be:vpshufhw $0x89,%xmm1,%xmm2
    c3:vpshufhw $0xed,%xmm1,%xmm2
    c8:vpshufhw $0x0,%ymm1,%ymm2
    cd:vpshufhw $0x1,(%r10),%ymm12
    d3:vpshufhw $0x2,%ymm14,%ymm12
    d9:vpshufhw $0x3,(%r10),%ymm12
    df:vpshufhw $0x0,%ymm10,%ymm12
    e5:vpshufhw $0x2,%ymm1,%ymm2
    ea:vpshufhw $0x4,%ymm1,%ymm2
    ef:vpshufhw $0x6,%ymm1,%ymm2
    f4:vpshufhw $0x8,%ymm1,%ymm2
    f9:vpshufhw $0xa,%ymm1,%ymm2
    fe:vpshufhw $0xc,%ymm1,%ymm2
   103:vpshufhw $0xe,%ymm1,%ymm2
   108:vpshufhw $0x12,%ymm1,%ymm2
   10d:vpshufhw $0x24,%ymm1,%ymm2
   112:vpshufhw $0x48,%ymm1,%ymm2
   117:vpshufhw $0x7f,%ymm1,%ymm2
   11c:vpshufhw $0x89,%ymm1,%ymm2
   121:vpshufhw $0xed,%ymm1,%ymm2
#################
TODO: elf/file.cpp:186

358:0
#################
TODO: elf/file.cpp:252

358:0

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



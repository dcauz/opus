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
size:     305
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   369
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
offset:   369
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
66 0f 38 10 d1 66 41 0f  38 10 d3 66 44 0f 38 10
e1 66 45 0f 38 10 e3 66  41 0f 38 10 12 66 41 0f
38 10 12 66 41 0f 38 10  12 66 45 0f 38 10 22 66
45 0f 38 10 22 66 45 0f  38 10 22 c4 e3 69 4c c9
10 c4 c3 69 4c cb 10 c4  e3 19 4c c9 10 c4 c3 19
4c cb 10 c4 c3 69 4c 0a  10 c4 c3 69 4c 0a 10 c4
c3 69 4c 0a 10 c4 c3 19  4c 0a 10 c4 c3 19 4c 0a
10 c4 63 69 4c d9 b0 c4  43 69 4c db b0 c4 63 19
4c d9 b0 c4 43 19 4c db  b0 c4 43 69 4c 1a b0 c4
43 69 4c 1a b0 c4 43 69  4c 1a b0 c4 43 19 4c 1a
b0 c4 43 19 4c 1a b0 c4  e3 6d 4c c9 10 c4 c3 6d
4c cb 10 c4 e3 1d 4c c9  10 c4 c3 1d 4c cb 10 c4
c3 6d 4c 0a 10 c4 c3 6d  4c 0a 10 c4 c3 6d 4c 0a
10 c4 c3 1d 4c 0a 10 c4  c3 1d 4c 0a 10 c4 43 6d
4c 1a b0 c4 43 6d 4c 22  b0 c4 43 6d 4c 1a c0 c4
43 1d 4c 1a c0 c4 43 0d  4c 3a a0 c4 43 0d 4c 3a
b0 c4 e3 65 4c e2 10 c4  63 65 4c f2 10 c4 e3 65
4c e2 10 c4 e3 25 4c e2  10 c4 e3 65 4c e2 10 c4
c3 65 4c e1 10 c4 e3 65  4c e2 10 c4 e3 65 4c e2
b0
     0:pblendvb %xmm0,%xmm1,%xmm2
     5:pblendvb %xmm0,%xmm11,%xmm2
     b:pblendvb %xmm0,%xmm1,%xmm12
    11:pblendvb %xmm0,%xmm11,%xmm12
    17:pblendvb %xmm0,(%r10),%xmm2
    1d:pblendvb %xmm0,(%r10),%xmm2
    23:pblendvb %xmm0,(%r10),%xmm2
    29:pblendvb %xmm0,(%r10),%xmm12
    2f:pblendvb %xmm0,(%r10),%xmm12
    35:pblendvb %xmm0,(%r10),%xmm12
    3b:vpblendvb %xmm1,%xmm1,%xmm2,%xmm1
    41:vpblendvb %xmm1,%xmm11,%xmm2,%xmm1
    47:vpblendvb %xmm1,%xmm1,%xmm12,%xmm1
    4d:vpblendvb %xmm1,%xmm11,%xmm12,%xmm1
    53:vpblendvb %xmm1,(%r10),%xmm2,%xmm1
    59:vpblendvb %xmm1,(%r10),%xmm2,%xmm1
    5f:vpblendvb %xmm1,(%r10),%xmm2,%xmm1
    65:vpblendvb %xmm1,(%r10),%xmm12,%xmm1
    6b:vpblendvb %xmm1,(%r10),%xmm12,%xmm1
    71:vpblendvb %xmm11,%xmm1,%xmm2,%xmm11
    77:vpblendvb %xmm11,%xmm11,%xmm2,%xmm11
    7d:vpblendvb %xmm11,%xmm1,%xmm12,%xmm11
    83:vpblendvb %xmm11,%xmm11,%xmm12,%xmm11
    89:vpblendvb %xmm11,(%r10),%xmm2,%xmm11
    8f:vpblendvb %xmm11,(%r10),%xmm2,%xmm11
    95:vpblendvb %xmm11,(%r10),%xmm2,%xmm11
    9b:vpblendvb %xmm11,(%r10),%xmm12,%xmm11
    a1:vpblendvb %xmm11,(%r10),%xmm12,%xmm11
    a7:vpblendvb %ymm1,%ymm1,%ymm2,%ymm1
    ad:vpblendvb %ymm1,%ymm11,%ymm2,%ymm1
    b3:vpblendvb %ymm1,%ymm1,%ymm12,%ymm1
    b9:vpblendvb %ymm1,%ymm11,%ymm12,%ymm1
    bf:vpblendvb %ymm1,(%r10),%ymm2,%ymm1
    c5:vpblendvb %ymm1,(%r10),%ymm2,%ymm1
    cb:vpblendvb %ymm1,(%r10),%ymm2,%ymm1
    d1:vpblendvb %ymm1,(%r10),%ymm12,%ymm1
    d7:vpblendvb %ymm1,(%r10),%ymm12,%ymm1
    dd:vpblendvb %ymm11,(%r10),%ymm2,%ymm11
    e3:vpblendvb %ymm11,(%r10),%ymm2,%ymm12
    e9:vpblendvb %ymm12,(%r10),%ymm2,%ymm11
    ef:vpblendvb %ymm12,(%r10),%ymm12,%ymm11
    f5:vpblendvb %ymm10,(%r10),%ymm14,%ymm15
    fb:vpblendvb %ymm11,(%r10),%ymm14,%ymm15
   101:vpblendvb %ymm1,%ymm2,%ymm3,%ymm4
   107:vpblendvb %ymm1,%ymm2,%ymm3,%ymm14
   10d:vpblendvb %ymm1,%ymm2,%ymm3,%ymm4
   113:vpblendvb %ymm1,%ymm2,%ymm11,%ymm4
   119:vpblendvb %ymm1,%ymm2,%ymm3,%ymm4
   11f:vpblendvb %ymm1,%ymm9,%ymm3,%ymm4
   125:vpblendvb %ymm1,%ymm2,%ymm3,%ymm4
   12b:vpblendvb %ymm11,%ymm2,%ymm3,%ymm4
#################
TODO: elf/file.cpp:186

369:0
#################
TODO: elf/file.cpp:252

369:0

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



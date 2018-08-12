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
66 0f 38 14 d1 66 41 0f  38 14 d3 66 44 0f 38 14
e1 66 45 0f 38 14 e3 66  41 0f 38 14 12 66 41 0f
38 14 12 66 41 0f 38 14  12 66 45 0f 38 14 22 66
45 0f 38 14 22 66 45 0f  38 14 22 c4 e3 69 4a c9
10 c4 c3 69 4a cb 10 c4  e3 19 4a c9 10 c4 c3 19
4a cb 10 c4 c3 69 4a 0a  10 c4 c3 69 4a 0a 10 c4
c3 69 4a 0a 10 c4 c3 19  4a 0a 10 c4 c3 19 4a 0a
10 c4 63 69 4a d9 b0 c4  43 69 4a db b0 c4 63 19
4a d9 b0 c4 43 19 4a db  b0 c4 43 69 4a 1a b0 c4
43 69 4a 1a b0 c4 43 69  4a 1a b0 c4 43 19 4a 1a
b0 c4 43 19 4a 1a b0 c4  e3 6d 4a c9 10 c4 c3 6d
4a cb 10 c4 e3 1d 4a c9  10 c4 c3 1d 4a cb 10 c4
c3 6d 4a 0a 10 c4 c3 6d  4a 0a 10 c4 c3 6d 4a 0a
10 c4 c3 1d 4a 0a 10 c4  c3 1d 4a 0a 10 c4 43 6d
4a 1a b0 c4 43 6d 4a 22  b0 c4 43 6d 4a 1a c0 c4
43 1d 4a 1a c0 c4 43 0d  4a 3a a0 c4 43 0d 4a 3a
b0 c4 e3 65 4a e2 10 c4  63 65 4a f2 10 c4 e3 65
4a e2 10 c4 e3 25 4a e2  10 c4 e3 65 4a e2 10 c4
c3 65 4a e1 10 c4 e3 65  4a e2 10 c4 e3 65 4a e2
b0
     0:blendvps %xmm0,%xmm1,%xmm2
     5:blendvps %xmm0,%xmm11,%xmm2
     b:blendvps %xmm0,%xmm1,%xmm12
    11:blendvps %xmm0,%xmm11,%xmm12
    17:blendvps %xmm0,(%r10),%xmm2
    1d:blendvps %xmm0,(%r10),%xmm2
    23:blendvps %xmm0,(%r10),%xmm2
    29:blendvps %xmm0,(%r10),%xmm12
    2f:blendvps %xmm0,(%r10),%xmm12
    35:blendvps %xmm0,(%r10),%xmm12
    3b:vblendvps %xmm1,%xmm1,%xmm2,%xmm1
    41:vblendvps %xmm1,%xmm11,%xmm2,%xmm1
    47:vblendvps %xmm1,%xmm1,%xmm12,%xmm1
    4d:vblendvps %xmm1,%xmm11,%xmm12,%xmm1
    53:vblendvps %xmm1,(%r10),%xmm2,%xmm1
    59:vblendvps %xmm1,(%r10),%xmm2,%xmm1
    5f:vblendvps %xmm1,(%r10),%xmm2,%xmm1
    65:vblendvps %xmm1,(%r10),%xmm12,%xmm1
    6b:vblendvps %xmm1,(%r10),%xmm12,%xmm1
    71:vblendvps %xmm11,%xmm1,%xmm2,%xmm11
    77:vblendvps %xmm11,%xmm11,%xmm2,%xmm11
    7d:vblendvps %xmm11,%xmm1,%xmm12,%xmm11
    83:vblendvps %xmm11,%xmm11,%xmm12,%xmm11
    89:vblendvps %xmm11,(%r10),%xmm2,%xmm11
    8f:vblendvps %xmm11,(%r10),%xmm2,%xmm11
    95:vblendvps %xmm11,(%r10),%xmm2,%xmm11
    9b:vblendvps %xmm11,(%r10),%xmm12,%xmm11
    a1:vblendvps %xmm11,(%r10),%xmm12,%xmm11
    a7:vblendvps %ymm1,%ymm1,%ymm2,%ymm1
    ad:vblendvps %ymm1,%ymm11,%ymm2,%ymm1
    b3:vblendvps %ymm1,%ymm1,%ymm12,%ymm1
    b9:vblendvps %ymm1,%ymm11,%ymm12,%ymm1
    bf:vblendvps %ymm1,(%r10),%ymm2,%ymm1
    c5:vblendvps %ymm1,(%r10),%ymm2,%ymm1
    cb:vblendvps %ymm1,(%r10),%ymm2,%ymm1
    d1:vblendvps %ymm1,(%r10),%ymm12,%ymm1
    d7:vblendvps %ymm1,(%r10),%ymm12,%ymm1
    dd:vblendvps %ymm11,(%r10),%ymm2,%ymm11
    e3:vblendvps %ymm11,(%r10),%ymm2,%ymm12
    e9:vblendvps %ymm12,(%r10),%ymm2,%ymm11
    ef:vblendvps %ymm12,(%r10),%ymm12,%ymm11
    f5:vblendvps %ymm10,(%r10),%ymm14,%ymm15
    fb:vblendvps %ymm11,(%r10),%ymm14,%ymm15
   101:vblendvps %ymm1,%ymm2,%ymm3,%ymm4
   107:vblendvps %ymm1,%ymm2,%ymm3,%ymm14
   10d:vblendvps %ymm1,%ymm2,%ymm3,%ymm4
   113:vblendvps %ymm1,%ymm2,%ymm11,%ymm4
   119:vblendvps %ymm1,%ymm2,%ymm3,%ymm4
   11f:vblendvps %ymm1,%ymm9,%ymm3,%ymm4
   125:vblendvps %ymm1,%ymm2,%ymm3,%ymm4
   12b:vblendvps %ymm11,%ymm2,%ymm3,%ymm4
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



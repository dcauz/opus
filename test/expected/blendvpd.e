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
66 0f 38 15 d1 66 41 0f  38 15 d3 66 44 0f 38 15
e1 66 45 0f 38 15 e3 66  41 0f 38 15 12 66 41 0f
38 15 12 66 41 0f 38 15  12 66 45 0f 38 15 22 66
45 0f 38 15 22 66 45 0f  38 15 22 c4 e3 69 4b c9
10 c4 c3 69 4b cb 10 c4  e3 19 4b c9 10 c4 c3 19
4b cb 10 c4 c3 69 4b 0a  10 c4 c3 69 4b 0a 10 c4
c3 69 4b 0a 10 c4 c3 19  4b 0a 10 c4 c3 19 4b 0a
10 c4 63 69 4b d9 b0 c4  43 69 4b db b0 c4 63 19
4b d9 b0 c4 43 19 4b db  b0 c4 43 69 4b 1a b0 c4
43 69 4b 1a b0 c4 43 69  4b 1a b0 c4 43 19 4b 1a
b0 c4 43 19 4b 1a b0 c4  e3 6d 4b c9 10 c4 c3 6d
4b cb 10 c4 e3 1d 4b c9  10 c4 c3 1d 4b cb 10 c4
c3 6d 4b 0a 10 c4 c3 6d  4b 0a 10 c4 c3 6d 4b 0a
10 c4 c3 1d 4b 0a 10 c4  c3 1d 4b 0a 10 c4 43 6d
4b 1a b0 c4 43 6d 4b 22  b0 c4 43 6d 4b 1a c0 c4
43 1d 4b 1a c0 c4 43 0d  4b 3a a0 c4 43 0d 4b 3a
b0 c4 e3 65 4b e2 10 c4  63 65 4b f2 10 c4 e3 65
4b e2 10 c4 e3 25 4b e2  10 c4 e3 65 4b e2 10 c4
c3 65 4b e1 10 c4 e3 65  4b e2 10 c4 e3 65 4b e2
b0
     0:blendvpd %xmm0,%xmm1,%xmm2
     5:blendvpd %xmm0,%xmm11,%xmm2
     b:blendvpd %xmm0,%xmm1,%xmm12
    11:blendvpd %xmm0,%xmm11,%xmm12
    17:blendvpd %xmm0,(%r10),%xmm2
    1d:blendvpd %xmm0,(%r10),%xmm2
    23:blendvpd %xmm0,(%r10),%xmm2
    29:blendvpd %xmm0,(%r10),%xmm12
    2f:blendvpd %xmm0,(%r10),%xmm12
    35:blendvpd %xmm0,(%r10),%xmm12
    3b:vblendvpd %xmm1,%xmm1,%xmm2,%xmm1
    41:vblendvpd %xmm1,%xmm11,%xmm2,%xmm1
    47:vblendvpd %xmm1,%xmm1,%xmm12,%xmm1
    4d:vblendvpd %xmm1,%xmm11,%xmm12,%xmm1
    53:vblendvpd %xmm1,(%r10),%xmm2,%xmm1
    59:vblendvpd %xmm1,(%r10),%xmm2,%xmm1
    5f:vblendvpd %xmm1,(%r10),%xmm2,%xmm1
    65:vblendvpd %xmm1,(%r10),%xmm12,%xmm1
    6b:vblendvpd %xmm1,(%r10),%xmm12,%xmm1
    71:vblendvpd %xmm11,%xmm1,%xmm2,%xmm11
    77:vblendvpd %xmm11,%xmm11,%xmm2,%xmm11
    7d:vblendvpd %xmm11,%xmm1,%xmm12,%xmm11
    83:vblendvpd %xmm11,%xmm11,%xmm12,%xmm11
    89:vblendvpd %xmm11,(%r10),%xmm2,%xmm11
    8f:vblendvpd %xmm11,(%r10),%xmm2,%xmm11
    95:vblendvpd %xmm11,(%r10),%xmm2,%xmm11
    9b:vblendvpd %xmm11,(%r10),%xmm12,%xmm11
    a1:vblendvpd %xmm11,(%r10),%xmm12,%xmm11
    a7:vblendvpd %ymm1,%ymm1,%ymm2,%ymm1
    ad:vblendvpd %ymm1,%ymm11,%ymm2,%ymm1
    b3:vblendvpd %ymm1,%ymm1,%ymm12,%ymm1
    b9:vblendvpd %ymm1,%ymm11,%ymm12,%ymm1
    bf:vblendvpd %ymm1,(%r10),%ymm2,%ymm1
    c5:vblendvpd %ymm1,(%r10),%ymm2,%ymm1
    cb:vblendvpd %ymm1,(%r10),%ymm2,%ymm1
    d1:vblendvpd %ymm1,(%r10),%ymm12,%ymm1
    d7:vblendvpd %ymm1,(%r10),%ymm12,%ymm1
    dd:vblendvpd %ymm11,(%r10),%ymm2,%ymm11
    e3:vblendvpd %ymm11,(%r10),%ymm2,%ymm12
    e9:vblendvpd %ymm12,(%r10),%ymm2,%ymm11
    ef:vblendvpd %ymm12,(%r10),%ymm12,%ymm11
    f5:vblendvpd %ymm10,(%r10),%ymm14,%ymm15
    fb:vblendvpd %ymm11,(%r10),%ymm14,%ymm15
   101:vblendvpd %ymm1,%ymm2,%ymm3,%ymm4
   107:vblendvpd %ymm1,%ymm2,%ymm3,%ymm14
   10d:vblendvpd %ymm1,%ymm2,%ymm3,%ymm4
   113:vblendvpd %ymm1,%ymm2,%ymm11,%ymm4
   119:vblendvpd %ymm1,%ymm2,%ymm3,%ymm4
   11f:vblendvpd %ymm1,%ymm9,%ymm3,%ymm4
   125:vblendvpd %ymm1,%ymm2,%ymm3,%ymm4
   12b:vblendvpd %ymm11,%ymm2,%ymm3,%ymm4
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



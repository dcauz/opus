class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 392
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
size:     184
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   248
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
offset:   248
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
offset:   345
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
offset:   248
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
offset:   344
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 5b e1 41 0f 5b 22 0f  5b 22 c5 f8 5b e1 62 61
7c 08 5b c1 62 b1 7c 08  5b e5 62 21 7c 08 5b c5
c4 c1 78 5b 22 62 61 7c  08 5b 02 c5 fc 5b e1 62
61 7c 28 5b c1 62 b1 7c  28 5b e5 62 21 7c 28 5b
c5 c4 c1 7c 5b 22 62 61  7c 28 5b 02 62 f1 7c 09
5b e1 62 61 7c 0a 5b c1  62 b1 7c 0b 5b e5 62 21
7c 0c 5b c5 62 d1 7c 0d  5b 22 62 61 7c 0e 5b 02
62 f1 7c 2f 5b e1 62 61  7c 2e 5b c1 62 b1 7c 2d
5b e5 62 21 7c 2c 5b c5  62 d1 7c 2b 5b 22 62 61
7c 2a 5b 02 62 f1 7c 49  5b e1 62 61 7c 4a 5b c1
62 b1 7c 4b 5b e5 62 21  7c 4c 5b c5 62 d1 7c 4d
5b 22 62 61 7c 4e 5b 02
     0:cvtdq2ps %xmm1,%xmm4
     3:cvtdq2ps (%r10),%xmm4
     7:cvtdq2ps (%rdx),%xmm4
     a:vcvtdq2ps %xmm1,%xmm4
     e:vcvtdq2ps %xmm1,%xmm24
    14:vcvtdq2ps %xmm21,%xmm4
    1a:vcvtdq2ps %xmm21,%xmm24
    20:vcvtdq2ps (%r10),%xmm4
    25:vcvtdq2ps (%rdx),%xmm24
    2b:vcvtdq2ps %ymm1,%ymm4
    2f:vcvtdq2ps %ymm1,%ymm24
    35:vcvtdq2ps %ymm21,%ymm4
    3b:vcvtdq2ps %ymm21,%ymm24
    41:vcvtdq2ps (%r10),%ymm4
    46:vcvtdq2ps (%rdx),%ymm24
    4c:vcvtdq2ps %xmm1,%xmm4{%k1}
    52:vcvtdq2ps %xmm1,%xmm24{%k2}
    58:vcvtdq2ps %xmm21,%xmm4{%k3}
    5e:vcvtdq2ps %xmm21,%xmm24{%k4}
    64:vcvtdq2ps (%r10),%xmm4{%k5}
    6a:vcvtdq2ps (%rdx),%xmm24{%k6}
    70:vcvtdq2ps %ymm1,%ymm4{%k7}
    76:vcvtdq2ps %ymm1,%ymm24{%k6}
    7c:vcvtdq2ps %ymm21,%ymm4{%k5}
    82:vcvtdq2ps %ymm21,%ymm24{%k4}
    88:vcvtdq2ps (%r10),%ymm4{%k3}
    8e:vcvtdq2ps (%rdx),%ymm24{%k2}
    94:vcvtdq2ps %zmm1,%zmm4{%k1}
    9a:vcvtdq2ps %zmm1,%zmm24{%k2}
    a0:vcvtdq2ps %zmm21,%zmm4{%k3}
    a6:vcvtdq2ps %zmm21,%zmm24{%k4}
    ac:vcvtdq2ps (%r10),%zmm4{%k5}
    b2:vcvtdq2ps (%rdx),%zmm24{%k6}

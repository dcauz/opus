class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 360
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
size:     151
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   215
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
offset:   215
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
offset:   313
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
offset:   216
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
offset:   312
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
f2 0f 5a d1 f2 41 0f 5a  12 c4 c1 6b 5a 02 62 c1
ef 08 5a 22 62 c1 d7 00  5a 22 62 d1 d7 00 5a 12
c4 c1 6b 5a c3 62 c1 ef  08 5a e3 62 c1 d7 00 5a
e3 62 d1 d7 00 5a d3 62  b1 ef 08 5a c5 62 a1 ef
08 5a e6 62 a1 d7 00 5a  e3 62 b1 d7 00 5a d6 62
d1 ef 09 5a 02 62 c1 ef  0a 5a 22 62 c1 d7 03 5a
22 62 d1 d7 04 5a 12 62  d1 ef 0d 5a c3 62 c1 ef
0e 5a e3 62 c1 d7 07 5a  e3 62 d1 d7 06 5a d3 62
b1 ef 0d 5a c5 62 a1 ef  0c 5a e6 62 a1 d7 03 5a
e3 62 b1 d7 03 5a d6
     0:cvtsd2ss %xmm1,%xmm2
     4:cvtsd2ss (%r10),%xmm2
     9:vcvtsd2ss (%r10),%xmm2,%xmm0
     e:vcvtsd2ss (%r10),%xmm2,%xmm20
    14:vcvtsd2ss (%r10),%xmm21,%xmm20
    1a:vcvtsd2ss (%r10),%xmm21,%xmm2
    20:vcvtsd2ss %xmm11,%xmm2,%xmm0
    25:vcvtsd2ss %xmm11,%xmm2,%xmm20
    2b:vcvtsd2ss %xmm11,%xmm21,%xmm20
    31:vcvtsd2ss %xmm11,%xmm21,%xmm2
    37:vcvtsd2ss %xmm21,%xmm2,%xmm0
    3d:vcvtsd2ss %xmm22,%xmm2,%xmm20
    43:vcvtsd2ss %xmm19,%xmm21,%xmm20
    49:vcvtsd2ss %xmm22,%xmm21,%xmm2
    4f:vcvtsd2ss (%r10),%xmm2,%xmm0{%k1}
    55:vcvtsd2ss (%r10),%xmm2,%xmm20{%k2}
    5b:vcvtsd2ss (%r10),%xmm21,%xmm20{%k3}
    61:vcvtsd2ss (%r10),%xmm21,%xmm2{%k4}
    67:vcvtsd2ss %xmm11,%xmm2,%xmm0{%k5}
    6d:vcvtsd2ss %xmm11,%xmm2,%xmm20{%k6}
    73:vcvtsd2ss %xmm11,%xmm21,%xmm20{%k7}
    79:vcvtsd2ss %xmm11,%xmm21,%xmm2{%k6}
    7f:vcvtsd2ss %xmm21,%xmm2,%xmm0{%k5}
    85:vcvtsd2ss %xmm22,%xmm2,%xmm20{%k4}
    8b:vcvtsd2ss %xmm19,%xmm21,%xmm20{%k3}
    91:vcvtsd2ss %xmm22,%xmm21,%xmm2{%k3}
#################
TODO: elf/file.cpp:186

215:0
#################
TODO: elf/file.cpp:252

215:0

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



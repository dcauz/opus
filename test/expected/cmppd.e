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
size:     293
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   357
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
offset:   357
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
66 0f c2 22 63 66 0f c2  e2 63 c4 c1 71 c2 d2 63
c4 c1 71 c2 12 63 c4 c1  75 c2 12 63 c4 c1 75 c2
d2 63 62 f1 ed 08 c2 c1  63 62 f1 ed 08 c2 c9 63
62 f1 ed 08 c2 d1 63 62  f1 ed 08 c2 d9 63 62 f1
ed 08 c2 e1 63 62 f1 ed  08 c2 e9 63 62 f1 ed 08
c2 f1 63 62 f1 ed 08 c2  f9 63 62 f1 ed 08 c2 c0
63 62 f1 ed 08 c2 ca 63  62 f1 ed 08 c2 d3 63 62
f1 ed 08 c2 dc 63 62 f1  ed 08 c2 e5 63 62 f1 ed
08 c2 ee 63 62 f1 ed 08  c2 f7 63 62 d1 ed 08 c2
02 63 62 d1 ed 08 c2 0a  63 62 d1 ed 08 c2 12 63
62 d1 ed 08 c2 22 63 62  f1 ed 0b c2 c1 63 62 f1
ed 0d c2 c1 63 62 f1 ed  0f c2 c1 63 62 f1 ed 0a
c2 c9 63 62 f1 ed 0a c2  d1 63 62 f1 ed 0a c2 d9
63 62 f1 ed 09 c2 e1 63  62 f1 ed 0f c2 f1 63 62
d1 ed 0d c2 12 63 62 d1  ed 0e c2 0a 63 62 f1 ed
28 c2 c1 63 62 d1 ed 28  c2 3a 63 62 f1 ed 2d c2
d1 63 62 d1 ed 2e c2 1a  63 62 f1 ed 48 c2 d9 63
62 d1 ed 48 c2 22 63 62  f1 ed 4d c2 c1 63 62 d1
ed 4e c2 12 63
     0:cmppd $0x63,(%rdx),%xmm4
     5:cmppd $0x63,%xmm2,%xmm4
     a:vcmppd $0x63,%xmm10,%xmm1,%xmm2
    10:vcmppd $0x63,(%r10),%xmm1,%xmm2
    16:vcmppd $0x63,(%r10),%ymm1,%ymm2
    1c:vcmppd $0x63,%ymm10,%ymm1,%ymm2
    22:vcmppd $0x63,%xmm1,%xmm2,%k0
    29:vcmppd $0x63,%xmm1,%xmm2,%k1
    30:vcmppd $0x63,%xmm1,%xmm2,%k2
    37:vcmppd $0x63,%xmm1,%xmm2,%k3
    3e:vcmppd $0x63,%xmm1,%xmm2,%k4
    45:vcmppd $0x63,%xmm1,%xmm2,%k5
    4c:vcmppd $0x63,%xmm1,%xmm2,%k6
    53:vcmppd $0x63,%xmm1,%xmm2,%k7
    5a:vcmppd $0x63,%xmm0,%xmm2,%k0
    61:vcmppd $0x63,%xmm2,%xmm2,%k1
    68:vcmppd $0x63,%xmm3,%xmm2,%k2
    6f:vcmppd $0x63,%xmm4,%xmm2,%k3
    76:vcmppd $0x63,%xmm5,%xmm2,%k4
    7d:vcmppd $0x63,%xmm6,%xmm2,%k5
    84:vcmppd $0x63,%xmm7,%xmm2,%k6
    8b:vcmppd $0x63,(%r10),%xmm2,%k0
    92:vcmppd $0x63,(%r10),%xmm2,%k1
    99:vcmppd $0x63,(%r10),%xmm2,%k2
    a0:vcmppd $0x63,(%r10),%xmm2,%k4
    a7:vcmppd $0x63,%xmm1,%xmm2,%k0{%k3}
    ae:vcmppd $0x63,%xmm1,%xmm2,%k0{%k5}
    b5:vcmppd $0x63,%xmm1,%xmm2,%k0{%k7}
    bc:vcmppd $0x63,%xmm1,%xmm2,%k1{%k2}
    c3:vcmppd $0x63,%xmm1,%xmm2,%k2{%k2}
    ca:vcmppd $0x63,%xmm1,%xmm2,%k3{%k2}
    d1:vcmppd $0x63,%xmm1,%xmm2,%k4{%k1}
    d8:vcmppd $0x63,%xmm1,%xmm2,%k6{%k7}
    df:vcmppd $0x63,(%r10),%xmm2,%k2{%k5}
    e6:vcmppd $0x63,(%r10),%xmm2,%k1{%k6}
    ed:vcmppd $0x63,%ymm1,%ymm2,%k0
    f4:vcmppd $0x63,(%r10),%ymm2,%k7
    fb:vcmppd $0x63,%ymm1,%ymm2,%k2{%k5}
   102:vcmppd $0x63,(%r10),%ymm2,%k3{%k6}
   109:vcmppd $0x63,%zmm1,%zmm2,%k3
   110:vcmppd $0x63,(%r10),%zmm2,%k4
   117:vcmppd $0x63,%zmm1,%zmm2,%k0{%k5}
   11e:vcmppd $0x63,(%r10),%zmm2,%k2{%k6}
#################
TODO: elf/file.cpp:186

357:0
#################
TODO: elf/file.cpp:252

357:0

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



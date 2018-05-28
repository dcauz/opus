class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 720
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
size:     506
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   570
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
offset:   570
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
offset:   673
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
offset:   576
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
offset:   672
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
f3 0f c2 fa 7b f3 41 0f  c2 02 7b c4 81 52 c2 5c
22 10 77 c4 81 52 c2 5c  22 10 76 f3 0f c2 c1 00
f3 44 0f c2 fa 01 f3 44  0f c2 f3 02 f3 44 0f c2
ec 03 f3 44 0f c2 e5 04  f3 44 0f c2 de 05 f3 44
0f c2 d7 06 f3 45 0f c2  c8 07 f3 41 0f c2 01 00
f3 45 0f c2 39 01 f3 45  0f c2 31 02 f3 45 0f c2
29 03 f3 45 0f c2 21 04  f3 45 0f c2 19 05 f3 45
0f c2 11 06 f3 45 0f c2  09 07 c4 41 1a c2 ca 00
c4 41 1a c2 ca 01 c4 41  1a c2 ca 02 c4 41 1a c2
ca 03 c4 41 1a c2 ca 04  c4 41 1a c2 ca 05 c4 41
1a c2 ca 06 c4 41 1a c2  ca 07 c4 41 1a c2 ca 08
c4 41 1a c2 ca 09 c4 41  1a c2 ca 0a c4 41 1a c2
ca 0b c4 41 22 c2 ca 0c  c4 41 22 c2 ca 0d c4 41
22 c2 ca 0e c4 41 22 c2  ca 0f c4 41 22 c2 ca 10
c4 41 22 c2 ca 11 c4 41  22 c2 ca 12 c4 41 22 c2
ca 13 c4 41 22 c2 ca 14  c4 41 22 c2 ca 15 c4 41
22 c2 ca 16 c4 41 22 c2  ca 17 c4 41 22 c2 ca 18
c4 41 22 c2 ca 19 c4 41  22 c2 ca 1a c4 41 22 c2
ca 1b c4 41 22 c2 ca 1c  c4 41 22 c2 ca 1d c4 41
22 c2 ca 1e c4 41 22 c2  ca 1f c4 41 1a c2 0f 00
c4 41 1a c2 0f 01 c4 41  1a c2 0f 02 c4 41 1a c2
0f 03 c4 41 1a c2 0f 04  c4 41 1a c2 0f 05 c4 41
1a c2 0f 06 c4 41 1a c2  0f 07 c4 41 1a c2 0f 08
c4 41 1a c2 0f 09 c4 41  1a c2 0f 0a c4 41 1a c2
0f 0b c4 41 22 c2 0f 0c  c4 41 22 c2 0f 0d c4 41
22 c2 0f 0e c4 41 22 c2  0f 0f c4 41 22 c2 0f 10
c4 41 22 c2 0f 11 c4 41  22 c2 0f 12 c4 41 22 c2
0f 13 c4 41 22 c2 0f 14  c4 41 22 c2 0f 15 c4 41
22 c2 0f 16 c4 41 22 c2  0f 17 c4 41 22 c2 0f 18
c4 41 22 c2 0f 19 c4 41  22 c2 0f 1a c4 41 22 c2
0f 1b c4 41 22 c2 0f 1c  c4 41 22 c2 0f 1d c4 41
22 c2 0f 1e c4 41 22 c2  0f 1f
     0:cmpss $0x7b,%xmm2,%xmm7
     5:cmpss $0x7b,(%r10),%xmm0
     b:vcmpss $0x77,0x10(%r10,%r12,1),%xmm5,%xmm3
    13:vcmpss $0x76,0x10(%r10,%r12,1),%xmm5,%xmm3
    1b:cmpeqss %xmm1,%xmm0
    20:cmpltss %xmm2,%xmm15
    26:cmpless %xmm3,%xmm14
    2c:cmpunordss %xmm4,%xmm13
    32:cmpneqss %xmm5,%xmm12
    38:cmpnltss %xmm6,%xmm11
    3e:cmpnless %xmm7,%xmm10
    44:cmpordss %xmm8,%xmm9
    4a:cmpeqss (%r9),%xmm0
    50:cmpltss (%r9),%xmm15
    56:cmpless (%r9),%xmm14
    5c:cmpunordss (%r9),%xmm13
    62:cmpneqss (%r9),%xmm12
    68:cmpnltss (%r9),%xmm11
    6e:cmpnless (%r9),%xmm10
    74:cmpordss (%r9),%xmm9
    7a:vcmpeqss %xmm10,%xmm12,%xmm9
    80:vcmpltss %xmm10,%xmm12,%xmm9
    86:vcmpless %xmm10,%xmm12,%xmm9
    8c:vcmpunordss %xmm10,%xmm12,%xmm9
    92:vcmpneqss %xmm10,%xmm12,%xmm9
    98:vcmpnltss %xmm10,%xmm12,%xmm9
    9e:vcmpnless %xmm10,%xmm12,%xmm9
    a4:vcmpordss %xmm10,%xmm12,%xmm9
    aa:vcmpeq_uqss %xmm10,%xmm12,%xmm9
    b0:vcmpngess %xmm10,%xmm12,%xmm9
    b6:vcmpngtss %xmm10,%xmm12,%xmm9
    bc:vcmpfalsess %xmm10,%xmm12,%xmm9
    c2:vcmpneq_oqss %xmm10,%xmm11,%xmm9
    c8:vcmpgess %xmm10,%xmm11,%xmm9
    ce:vcmpgtss %xmm10,%xmm11,%xmm9
    d4:vcmptruess %xmm10,%xmm11,%xmm9
    da:vcmpeq_osss %xmm10,%xmm11,%xmm9
    e0:vcmplt_oqss %xmm10,%xmm11,%xmm9
    e6:vcmple_oqss %xmm10,%xmm11,%xmm9
    ec:vcmpunord_sss %xmm10,%xmm11,%xmm9
    f2:vcmpneq_usss %xmm10,%xmm11,%xmm9
    f8:vcmpnlt_uqss %xmm10,%xmm11,%xmm9
    fe:vcmpnle_uqss %xmm10,%xmm11,%xmm9
   104:vcmpord_sss %xmm10,%xmm11,%xmm9
   10a:vcmpeq_usss %xmm10,%xmm11,%xmm9
   110:vcmpnge_uqss %xmm10,%xmm11,%xmm9
   116:vcmpngt_uqss %xmm10,%xmm11,%xmm9
   11c:vcmpfalse_osss %xmm10,%xmm11,%xmm9
   122:vcmpneq_osss %xmm10,%xmm11,%xmm9
   128:vcmpge_oqss %xmm10,%xmm11,%xmm9
   12e:vcmpgt_oqss %xmm10,%xmm11,%xmm9
   134:vcmptrue_usss %xmm10,%xmm11,%xmm9
   13a:vcmpeqss (%r15),%xmm12,%xmm9
   140:vcmpltss (%r15),%xmm12,%xmm9
   146:vcmpless (%r15),%xmm12,%xmm9
   14c:vcmpunordss (%r15),%xmm12,%xmm9
   152:vcmpneqss (%r15),%xmm12,%xmm9
   158:vcmpnltss (%r15),%xmm12,%xmm9
   15e:vcmpnless (%r15),%xmm12,%xmm9
   164:vcmpordss (%r15),%xmm12,%xmm9
   16a:vcmpeq_uqss (%r15),%xmm12,%xmm9
   170:vcmpngess (%r15),%xmm12,%xmm9
   176:vcmpngtss (%r15),%xmm12,%xmm9
   17c:vcmpfalsess (%r15),%xmm12,%xmm9
   182:vcmpneq_oqss (%r15),%xmm11,%xmm9
   188:vcmpgess (%r15),%xmm11,%xmm9
   18e:vcmpgtss (%r15),%xmm11,%xmm9
   194:vcmptruess (%r15),%xmm11,%xmm9
   19a:vcmpeq_osss (%r15),%xmm11,%xmm9
   1a0:vcmplt_oqss (%r15),%xmm11,%xmm9
   1a6:vcmple_oqss (%r15),%xmm11,%xmm9
   1ac:vcmpunord_sss (%r15),%xmm11,%xmm9
   1b2:vcmpneq_usss (%r15),%xmm11,%xmm9
   1b8:vcmpnlt_uqss (%r15),%xmm11,%xmm9
   1be:vcmpnle_uqss (%r15),%xmm11,%xmm9
   1c4:vcmpord_sss (%r15),%xmm11,%xmm9
   1ca:vcmpeq_usss (%r15),%xmm11,%xmm9
   1d0:vcmpnge_uqss (%r15),%xmm11,%xmm9
   1d6:vcmpngt_uqss (%r15),%xmm11,%xmm9
   1dc:vcmpfalse_osss (%r15),%xmm11,%xmm9
   1e2:vcmpneq_osss (%r15),%xmm11,%xmm9
   1e8:vcmpge_oqss (%r15),%xmm11,%xmm9
   1ee:vcmpgt_oqss (%r15),%xmm11,%xmm9
   1f4:vcmptrue_usss (%r15),%xmm11,%xmm9
#################
TODO: elf/file.cpp:186

570:0
#################
TODO: elf/file.cpp:252

570:0

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



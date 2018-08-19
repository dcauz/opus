class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 744
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
size:     534
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   598
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
offset:   598
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
offset:   697
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
offset:   600
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
offset:   696
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 0f 38 20 ca 66 41 0f  38 20 0b 66 0f 38 21 ca
66 41 0f 38 21 0c 24 66  0f 38 22 ca 66 41 0f 38
22 0a 66 0f 38 23 ca 66  41 0f 38 23 0b 66 0f 38
24 ca 66 41 0f 38 24 0c  24 66 0f 38 25 ca 66 41
0f 38 25 0b c4 e2 79 20  ca c4 c2 79 20 0b c4 e2
79 21 ca c4 c2 79 21 0c  24 c4 e2 79 22 ca c4 c2
79 22 0a c4 e2 79 23 ca  c4 c2 79 23 0b c4 e2 79
24 ca c4 c2 79 24 0c 24  c4 e2 79 25 ca c4 c2 79
25 0b c4 e2 7d 20 ca c4  c2 7d 20 4d 00 c4 e2 7d
21 ca c4 c2 7d 21 0b c4  e2 7d 22 ca c4 c2 7d 22
0c 24 c4 e2 7d 23 ca c4  c2 7d 23 4d 00 c4 e2 7d
24 ca c4 c2 7d 24 0b c4  e2 7d 25 ca c4 c2 7d 25
4d 00 62 d2 7d 48 20 4d  00 62 f2 7d 48 21 ca 62
d2 7d 48 21 0b 62 f2 7d  48 22 ca 62 d2 7d 48 22
0c 24 62 d2 7d 48 23 4d  00 62 f2 7d 48 24 ca 62
d2 7d 48 24 0b 62 d2 7d  48 25 4d 00 62 f2 7d 48
20 ca 62 d2 7d 48 20 4d  00 62 d2 7d 48 21 0b 62
d2 7d 48 22 0c 24 62 f2  7d 48 23 ca 62 d2 7d 48
23 4d 00 62 d2 7d 48 24  0b 62 f2 7d 48 25 ca 62
d2 7d 48 25 4d 00 62 f2  7d 09 20 ca 62 d2 7d 09
20 0b 62 f2 7d 29 20 ca  62 d2 7d 29 20 4d 00 62
f2 7d 49 20 ca 62 d2 7d  49 20 0e 62 f2 7d 09 21
ca 62 d2 7d 09 21 0c 24  62 f2 7d 29 21 ca 62 d2
7d 29 21 0b 62 f2 7d 49  21 ca 62 d2 7d 49 21 4d
00 62 f2 7d 09 22 ca 62  d2 7d 09 22 0a 62 f2 7d
29 22 ca 62 d2 7d 29 22  0c 24 62 f2 7d 49 22 ca
62 d2 7d 49 22 0b 62 f2  7d 09 23 ca 62 d2 7d 09
23 0b 62 f2 7d 29 23 ca  62 d2 7d 29 23 4d 00 62
f2 7d 49 23 ca 62 d2 7d  49 23 0e 62 f2 7d 09 24
ca 62 d2 7d 09 24 0c 24  62 f2 7d 29 24 ca 62 d2
7d 29 24 0b 62 f2 7d 49  24 ca 62 d2 7d 49 24 4d
00 62 f2 7d 09 25 ca 62  d2 7d 09 25 0b 62 f2 7d
29 25 ca 62 d2 7d 29 25  4d 00 62 f2 7d 49 25 ca
62 d2 7d 49 25 0e
     0:pmovsxbw %xmm2,%xmm1
     5:pmovsxbw (%r11),%xmm1
     b:pmovsxbd %xmm2,%xmm1
    10:pmovsxbd (%r12),%xmm1
    17:pmovsxbq %xmm2,%xmm1
    1c:pmovsxbq (%r10),%xmm1
    22:pmovsxwd %xmm2,%xmm1
    27:pmovsxwd (%r11),%xmm1
    2d:pmovsxwq %xmm2,%xmm1
    32:pmovsxwq (%r12),%xmm1
    39:pmovsxdq %xmm2,%xmm1
    3e:pmovsxdq (%r11),%xmm1
    44:vpmovsxbw %xmm2,%xmm1
    49:vpmovsxbw (%r11),%xmm1
    4e:vpmovsxbd %xmm2,%xmm1
    53:vpmovsxbd (%r12),%xmm1
    59:vpmovsxbq %xmm2,%xmm1
    5e:vpmovsxbq (%r10),%xmm1
    63:vpmovsxwd %xmm2,%xmm1
    68:vpmovsxwd (%r11),%xmm1
    6d:vpmovsxwq %xmm2,%xmm1
    72:vpmovsxwq (%r12),%xmm1
    78:vpmovsxdq %xmm2,%xmm1
    7d:vpmovsxdq (%r11),%xmm1
    82:vpmovsxbw %xmm2,%ymm1
    87:vpmovsxbw 0x0(%r13),%ymm1
    8d:vpmovsxbd %xmm2,%ymm1
    92:vpmovsxbd (%r11),%ymm1
    97:vpmovsxbq %xmm2,%ymm1
    9c:vpmovsxbq (%r12),%ymm1
    a2:vpmovsxwd %xmm2,%ymm1
    a7:vpmovsxwd 0x0(%r13),%ymm1
    ad:vpmovsxwq %xmm2,%ymm1
    b2:vpmovsxwq (%r11),%ymm1
    b7:vpmovsxdq %xmm2,%ymm1
    bc:vpmovsxdq 0x0(%r13),%ymm1
    c2:vpmovsxbw 0x0(%r13),%zmm1
    c9:vpmovsxbd %xmm2,%zmm1
    cf:vpmovsxbd (%r11),%zmm1
    d5:vpmovsxbq %xmm2,%zmm1
    db:vpmovsxbq (%r12),%zmm1
    e2:vpmovsxwd 0x0(%r13),%zmm1
    e9:vpmovsxwq %xmm2,%zmm1
    ef:vpmovsxwq (%r11),%zmm1
    f5:vpmovsxdq 0x0(%r13),%zmm1
    fc:vpmovsxbw %ymm2,%zmm1
   102:vpmovsxbw 0x0(%r13),%zmm1
   109:vpmovsxbd (%r11),%zmm1
   10f:vpmovsxbq (%r12),%zmm1
   116:vpmovsxwd %ymm2,%zmm1
   11c:vpmovsxwd 0x0(%r13),%zmm1
   123:vpmovsxwq (%r11),%zmm1
   129:vpmovsxdq %ymm2,%zmm1
   12f:vpmovsxdq 0x0(%r13),%zmm1
   136:vpmovsxbw %xmm2,%xmm1{%k1}
   13c:vpmovsxbw (%r11),%xmm1{%k1}
   142:vpmovsxbw %xmm2,%ymm1{%k1}
   148:vpmovsxbw 0x0(%r13),%ymm1{%k1}
   14f:vpmovsxbw %ymm2,%zmm1{%k1}
   155:vpmovsxbw (%r14),%zmm1{%k1}
   15b:vpmovsxbd %xmm2,%xmm1{%k1}
   161:vpmovsxbd (%r12),%xmm1{%k1}
   168:vpmovsxbd %xmm2,%ymm1{%k1}
   16e:vpmovsxbd (%r11),%ymm1{%k1}
   174:vpmovsxbd %xmm2,%zmm1{%k1}
   17a:vpmovsxbd 0x0(%r13),%zmm1{%k1}
   181:vpmovsxbq %xmm2,%xmm1{%k1}
   187:vpmovsxbq (%r10),%xmm1{%k1}
   18d:vpmovsxbq %xmm2,%ymm1{%k1}
   193:vpmovsxbq (%r12),%ymm1{%k1}
   19a:vpmovsxbq %xmm2,%zmm1{%k1}
   1a0:vpmovsxbq (%r11),%zmm1{%k1}
   1a6:vpmovsxwd %xmm2,%xmm1{%k1}
   1ac:vpmovsxwd (%r11),%xmm1{%k1}
   1b2:vpmovsxwd %xmm2,%ymm1{%k1}
   1b8:vpmovsxwd 0x0(%r13),%ymm1{%k1}
   1bf:vpmovsxwd %ymm2,%zmm1{%k1}
   1c5:vpmovsxwd (%r14),%zmm1{%k1}
   1cb:vpmovsxwq %xmm2,%xmm1{%k1}
   1d1:vpmovsxwq (%r12),%xmm1{%k1}
   1d8:vpmovsxwq %xmm2,%ymm1{%k1}
   1de:vpmovsxwq (%r11),%ymm1{%k1}
   1e4:vpmovsxwq %xmm2,%zmm1{%k1}
   1ea:vpmovsxwq 0x0(%r13),%zmm1{%k1}
   1f1:vpmovsxdq %xmm2,%xmm1{%k1}
   1f7:vpmovsxdq (%r11),%xmm1{%k1}
   1fd:vpmovsxdq %xmm2,%ymm1{%k1}
   203:vpmovsxdq 0x0(%r13),%ymm1{%k1}
   20a:vpmovsxdq %ymm2,%zmm1{%k1}
   210:vpmovsxdq (%r14),%zmm1{%k1}
#################
TODO: elf/file.cpp:186

598:0
#################
TODO: elf/file.cpp:252

598:0

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



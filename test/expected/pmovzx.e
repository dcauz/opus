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
66 0f 38 30 ca 66 41 0f  38 30 0b 66 0f 38 31 ca
66 41 0f 38 31 0c 24 66  0f 38 32 ca 66 41 0f 38
32 0a 66 0f 38 33 ca 66  41 0f 38 33 0b 66 0f 38
34 ca 66 41 0f 38 34 0c  24 66 0f 38 35 ca 66 41
0f 38 35 0b c4 e2 79 30  ca c4 c2 79 30 0b c4 e2
79 31 ca c4 c2 79 31 0c  24 c4 e2 79 32 ca c4 c2
79 32 0a c4 e2 79 33 ca  c4 c2 79 33 0b c4 e2 79
34 ca c4 c2 79 34 0c 24  c4 e2 79 35 ca c4 c2 79
35 0b c4 e2 7d 30 ca c4  c2 7d 30 4d 00 c4 e2 7d
31 ca c4 c2 7d 31 0b c4  e2 7d 32 ca c4 c2 7d 32
0c 24 c4 e2 7d 33 ca c4  c2 7d 33 4d 00 c4 e2 7d
34 ca c4 c2 7d 34 0b c4  e2 7d 35 ca c4 c2 7d 35
4d 00 62 d2 7d 48 30 4d  00 62 f2 7d 48 31 ca 62
d2 7d 48 31 0b 62 f2 7d  48 32 ca 62 d2 7d 48 32
0c 24 62 d2 7d 48 33 4d  00 62 f2 7d 48 34 ca 62
d2 7d 48 34 0b 62 d2 7d  48 35 4d 00 62 f2 7d 48
30 ca 62 d2 7d 48 30 4d  00 62 d2 7d 48 31 0b 62
d2 7d 48 32 0c 24 62 f2  7d 48 33 ca 62 d2 7d 48
33 4d 00 62 d2 7d 48 34  0b 62 f2 7d 48 35 ca 62
d2 7d 48 35 4d 00 62 f2  7d 09 30 ca 62 d2 7d 09
30 0b 62 f2 7d 29 30 ca  62 d2 7d 29 30 4d 00 62
f2 7d 49 30 ca 62 d2 7d  49 30 0e 62 f2 7d 09 31
ca 62 d2 7d 09 31 0c 24  62 f2 7d 29 31 ca 62 d2
7d 29 31 0b 62 f2 7d 49  31 ca 62 d2 7d 49 31 4d
00 62 f2 7d 09 32 ca 62  d2 7d 09 32 0a 62 f2 7d
29 32 ca 62 d2 7d 29 32  0c 24 62 f2 7d 49 32 ca
62 d2 7d 49 32 0b 62 f2  7d 09 33 ca 62 d2 7d 09
33 0b 62 f2 7d 29 33 ca  62 d2 7d 29 33 4d 00 62
f2 7d 49 33 ca 62 d2 7d  49 33 0e 62 f2 7d 09 34
ca 62 d2 7d 09 34 0c 24  62 f2 7d 29 34 ca 62 d2
7d 29 34 0b 62 f2 7d 49  34 ca 62 d2 7d 49 34 4d
00 62 f2 7d 09 35 ca 62  d2 7d 09 35 0b 62 f2 7d
29 35 ca 62 d2 7d 29 35  4d 00 62 f2 7d 49 35 ca
62 d2 7d 49 35 0e
     0:pmovzxbw %xmm2,%xmm1
     5:pmovzxbw (%r11),%xmm1
     b:pmovzxbd %xmm2,%xmm1
    10:pmovzxbd (%r12),%xmm1
    17:pmovzxbq %xmm2,%xmm1
    1c:pmovzxbq (%r10),%xmm1
    22:pmovzxwd %xmm2,%xmm1
    27:pmovzxwd (%r11),%xmm1
    2d:pmovzxwq %xmm2,%xmm1
    32:pmovzxwq (%r12),%xmm1
    39:pmovzxdq %xmm2,%xmm1
    3e:pmovzxdq (%r11),%xmm1
    44:vpmovzxbw %xmm2,%xmm1
    49:vpmovzxbw (%r11),%xmm1
    4e:vpmovzxbd %xmm2,%xmm1
    53:vpmovzxbd (%r12),%xmm1
    59:vpmovzxbq %xmm2,%xmm1
    5e:vpmovzxbq (%r10),%xmm1
    63:vpmovzxwd %xmm2,%xmm1
    68:vpmovzxwd (%r11),%xmm1
    6d:vpmovzxwq %xmm2,%xmm1
    72:vpmovzxwq (%r12),%xmm1
    78:vpmovzxdq %xmm2,%xmm1
    7d:vpmovzxdq (%r11),%xmm1
    82:vpmovzxbw %xmm2,%ymm1
    87:vpmovzxbw 0x0(%r13),%ymm1
    8d:vpmovzxbd %xmm2,%ymm1
    92:vpmovzxbd (%r11),%ymm1
    97:vpmovzxbq %xmm2,%ymm1
    9c:vpmovzxbq (%r12),%ymm1
    a2:vpmovzxwd %xmm2,%ymm1
    a7:vpmovzxwd 0x0(%r13),%ymm1
    ad:vpmovzxwq %xmm2,%ymm1
    b2:vpmovzxwq (%r11),%ymm1
    b7:vpmovzxdq %xmm2,%ymm1
    bc:vpmovzxdq 0x0(%r13),%ymm1
    c2:vpmovzxbw 0x0(%r13),%zmm1
    c9:vpmovzxbd %xmm2,%zmm1
    cf:vpmovzxbd (%r11),%zmm1
    d5:vpmovzxbq %xmm2,%zmm1
    db:vpmovzxbq (%r12),%zmm1
    e2:vpmovzxwd 0x0(%r13),%zmm1
    e9:vpmovzxwq %xmm2,%zmm1
    ef:vpmovzxwq (%r11),%zmm1
    f5:vpmovzxdq 0x0(%r13),%zmm1
    fc:vpmovzxbw %ymm2,%zmm1
   102:vpmovzxbw 0x0(%r13),%zmm1
   109:vpmovzxbd (%r11),%zmm1
   10f:vpmovzxbq (%r12),%zmm1
   116:vpmovzxwd %ymm2,%zmm1
   11c:vpmovzxwd 0x0(%r13),%zmm1
   123:vpmovzxwq (%r11),%zmm1
   129:vpmovzxdq %ymm2,%zmm1
   12f:vpmovzxdq 0x0(%r13),%zmm1
   136:vpmovzxbw %xmm2,%xmm1{%k1}
   13c:vpmovzxbw (%r11),%xmm1{%k1}
   142:vpmovzxbw %xmm2,%ymm1{%k1}
   148:vpmovzxbw 0x0(%r13),%ymm1{%k1}
   14f:vpmovzxbw %ymm2,%zmm1{%k1}
   155:vpmovzxbw (%r14),%zmm1{%k1}
   15b:vpmovzxbd %xmm2,%xmm1{%k1}
   161:vpmovzxbd (%r12),%xmm1{%k1}
   168:vpmovzxbd %xmm2,%ymm1{%k1}
   16e:vpmovzxbd (%r11),%ymm1{%k1}
   174:vpmovzxbd %xmm2,%zmm1{%k1}
   17a:vpmovzxbd 0x0(%r13),%zmm1{%k1}
   181:vpmovzxbq %xmm2,%xmm1{%k1}
   187:vpmovzxbq (%r10),%xmm1{%k1}
   18d:vpmovzxbq %xmm2,%ymm1{%k1}
   193:vpmovzxbq (%r12),%ymm1{%k1}
   19a:vpmovzxbq %xmm2,%zmm1{%k1}
   1a0:vpmovzxbq (%r11),%zmm1{%k1}
   1a6:vpmovzxwd %xmm2,%xmm1{%k1}
   1ac:vpmovzxwd (%r11),%xmm1{%k1}
   1b2:vpmovzxwd %xmm2,%ymm1{%k1}
   1b8:vpmovzxwd 0x0(%r13),%ymm1{%k1}
   1bf:vpmovzxwd %ymm2,%zmm1{%k1}
   1c5:vpmovzxwd (%r14),%zmm1{%k1}
   1cb:vpmovzxwq %xmm2,%xmm1{%k1}
   1d1:vpmovzxwq (%r12),%xmm1{%k1}
   1d8:vpmovzxwq %xmm2,%ymm1{%k1}
   1de:vpmovzxwq (%r11),%ymm1{%k1}
   1e4:vpmovzxwq %xmm2,%zmm1{%k1}
   1ea:vpmovzxwq 0x0(%r13),%zmm1{%k1}
   1f1:vpmovzxdq %xmm2,%xmm1{%k1}
   1f7:vpmovzxdq (%r11),%xmm1{%k1}
   1fd:vpmovzxdq %xmm2,%ymm1{%k1}
   203:vpmovzxdq 0x0(%r13),%ymm1{%k1}
   20a:vpmovzxdq %ymm2,%zmm1{%k1}
   210:vpmovzxdq (%r14),%zmm1{%k1}
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



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
size:     306
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   370
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
offset:   370
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
0f 38 04 e9 0f 38 04 f9  66 0f 38 04 e9 66 0f 38
04 f9 66 41 0f 38 04 2b  66 45 0f 38 04 3b c4 e2
51 04 e1 c4 e2 01 04 e1  c4 62 01 04 f1 62 62 05
08 04 c1 c4 c2 51 04 23  c4 c2 01 04 23 c4 42 01
04 33 62 42 05 08 04 03  c4 e2 55 04 e1 c4 e2 05
04 e1 c4 62 05 04 f1 62  62 05 28 04 c1 c4 c2 55
04 23 c4 c2 05 04 23 c4  42 05 04 33 62 42 05 28
04 03 62 f2 55 48 04 e1  62 f2 05 48 04 e1 62 72
05 48 04 f1 62 62 05 48  04 c1 62 d2 55 48 04 23
62 d2 05 48 04 23 62 52  05 48 04 33 62 42 05 48
04 03 62 f2 55 0e 04 e1  62 f2 05 0e 04 e1 62 72
05 0e 04 f1 62 62 05 0e  04 c1 62 d2 55 0e 04 23
62 d2 05 0e 04 23 62 52  05 0e 04 33 62 42 05 0e
04 03 62 f2 55 2e 04 e1  62 f2 05 2e 04 e1 62 72
05 2e 04 f1 62 62 05 2e  04 c1 62 d2 55 2e 04 23
62 d2 05 2e 04 23 62 52  05 2e 04 33 62 42 05 2e
04 03 62 f2 55 4e 04 e1  62 f2 05 4e 04 e1 62 72
05 4e 04 f1 62 62 05 4e  04 c1 62 d2 55 4e 04 23
62 d2 05 4e 04 23 62 52  05 4e 04 33 62 42 05 4e
04 03
     0:pmaddubsw %mm1,%mm5
     4:pmaddubsw %mm1,%mm7
     8:pmaddubsw %xmm1,%xmm5
     d:pmaddubsw %xmm1,%xmm7
    12:pmaddubsw (%r11),%xmm5
    18:pmaddubsw (%r11),%xmm15
    1e:vpmaddubsw %xmm1,%xmm5,%xmm4
    23:vpmaddubsw %xmm1,%xmm15,%xmm4
    28:vpmaddubsw %xmm1,%xmm15,%xmm14
    2d:vpmaddubsw %xmm1,%xmm15,%xmm24
    33:vpmaddubsw (%r11),%xmm5,%xmm4
    38:vpmaddubsw (%r11),%xmm15,%xmm4
    3d:vpmaddubsw (%r11),%xmm15,%xmm14
    42:vpmaddubsw (%r11),%xmm15,%xmm24
    48:vpmaddubsw %ymm1,%ymm5,%ymm4
    4d:vpmaddubsw %ymm1,%ymm15,%ymm4
    52:vpmaddubsw %ymm1,%ymm15,%ymm14
    57:vpmaddubsw %ymm1,%ymm15,%ymm24
    5d:vpmaddubsw (%r11),%ymm5,%ymm4
    62:vpmaddubsw (%r11),%ymm15,%ymm4
    67:vpmaddubsw (%r11),%ymm15,%ymm14
    6c:vpmaddubsw (%r11),%ymm15,%ymm24
    72:vpmaddubsw %zmm1,%zmm5,%zmm4
    78:vpmaddubsw %zmm1,%zmm15,%zmm4
    7e:vpmaddubsw %zmm1,%zmm15,%zmm14
    84:vpmaddubsw %zmm1,%zmm15,%zmm24
    8a:vpmaddubsw (%r11),%zmm5,%zmm4
    90:vpmaddubsw (%r11),%zmm15,%zmm4
    96:vpmaddubsw (%r11),%zmm15,%zmm14
    9c:vpmaddubsw (%r11),%zmm15,%zmm24
    a2:vpmaddubsw %xmm1,%xmm5,%xmm4{%k6}
    a8:vpmaddubsw %xmm1,%xmm15,%xmm4{%k6}
    ae:vpmaddubsw %xmm1,%xmm15,%xmm14{%k6}
    b4:vpmaddubsw %xmm1,%xmm15,%xmm24{%k6}
    ba:vpmaddubsw (%r11),%xmm5,%xmm4{%k6}
    c0:vpmaddubsw (%r11),%xmm15,%xmm4{%k6}
    c6:vpmaddubsw (%r11),%xmm15,%xmm14{%k6}
    cc:vpmaddubsw (%r11),%xmm15,%xmm24{%k6}
    d2:vpmaddubsw %ymm1,%ymm5,%ymm4{%k6}
    d8:vpmaddubsw %ymm1,%ymm15,%ymm4{%k6}
    de:vpmaddubsw %ymm1,%ymm15,%ymm14{%k6}
    e4:vpmaddubsw %ymm1,%ymm15,%ymm24{%k6}
    ea:vpmaddubsw (%r11),%ymm5,%ymm4{%k6}
    f0:vpmaddubsw (%r11),%ymm15,%ymm4{%k6}
    f6:vpmaddubsw (%r11),%ymm15,%ymm14{%k6}
    fc:vpmaddubsw (%r11),%ymm15,%ymm24{%k6}
   102:vpmaddubsw %zmm1,%zmm5,%zmm4{%k6}
   108:vpmaddubsw %zmm1,%zmm15,%zmm4{%k6}
   10e:vpmaddubsw %zmm1,%zmm15,%zmm14{%k6}
   114:vpmaddubsw %zmm1,%zmm15,%zmm24{%k6}
   11a:vpmaddubsw (%r11),%zmm5,%zmm4{%k6}
   120:vpmaddubsw (%r11),%zmm15,%zmm4{%k6}
   126:vpmaddubsw (%r11),%zmm15,%zmm14{%k6}
   12c:vpmaddubsw (%r11),%zmm15,%zmm24{%k6}
#################
TODO: elf/file.cpp:186

370:0
#################
TODO: elf/file.cpp:252

370:0

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



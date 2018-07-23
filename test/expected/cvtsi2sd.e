class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 424
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
size:     210
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   274
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
offset:   274
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
offset:   377
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
offset:   280
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
offset:   376
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
f2 0f 2a cf 67 f2 0f 2a  17 f2 48 0f 2a df f2 48
0f 2a 27 c5 f3 2a d7 62  e1 77 08 2a e7 62 e1 67
00 2a e7 62 f1 67 00 2a  d7 c4 e1 f3 2a d7 62 e1
f7 08 2a e7 62 e1 e7 00  2a e7 62 f1 e7 00 2a d7
67 c5 f3 2a 17 67 62 e1  77 08 2a 27 67 62 e1 67
00 2a 27 67 62 f1 67 00  2a 17 c5 f3 2a 17 62 e1
77 08 2a 27 62 e1 67 00  2a 27 62 f1 67 00 2a 17
67 c5 f3 2a 17 67 62 e1  77 08 2a 27 67 62 e1 67
00 2a 27 67 62 f1 67 00  2a 17 c5 f3 2a 17 62 e1
77 08 2a 27 62 e1 67 00  2a 27 62 f1 67 00 2a 17
67 c4 e1 f3 2a 17 67 62  e1 f7 08 2a 27 67 62 e1
e7 00 2a 27 67 62 f1 e7  00 2a 17 c4 e1 f3 2a 17
62 e1 f7 08 2a 27 62 e1  e7 00 2a 27 62 f1 e7 00
2a 17
     0:cvtsi2sd %edi,%xmm1
     4:cvtsi2sdl (%edi),%xmm2
     9:cvtsi2sd %rdi,%xmm3
     e:cvtsi2sdq (%rdi),%xmm4
    13:vcvtsi2sd %edi,%xmm1,%xmm2
    17:vcvtsi2sd %edi,%xmm1,%xmm20
    1d:vcvtsi2sd %edi,%xmm19,%xmm20
    23:vcvtsi2sd %edi,%xmm19,%xmm2
    29:vcvtsi2sd %rdi,%xmm1,%xmm2
    2e:vcvtsi2sd %rdi,%xmm1,%xmm20
    34:vcvtsi2sd %rdi,%xmm19,%xmm20
    3a:vcvtsi2sd %rdi,%xmm19,%xmm2
    40:vcvtsi2sdl (%edi),%xmm1,%xmm2
    45:vcvtsi2sd (%edi),%xmm1,%xmm20
    4c:vcvtsi2sd (%edi),%xmm19,%xmm20
    53:vcvtsi2sd (%edi),%xmm19,%xmm2
    5a:vcvtsi2sdl (%rdi),%xmm1,%xmm2
    5e:vcvtsi2sd (%rdi),%xmm1,%xmm20
    64:vcvtsi2sd (%rdi),%xmm19,%xmm20
    6a:vcvtsi2sd (%rdi),%xmm19,%xmm2
    70:vcvtsi2sdl (%edi),%xmm1,%xmm2
    75:vcvtsi2sd (%edi),%xmm1,%xmm20
    7c:vcvtsi2sd (%edi),%xmm19,%xmm20
    83:vcvtsi2sd (%edi),%xmm19,%xmm2
    8a:vcvtsi2sdl (%rdi),%xmm1,%xmm2
    8e:vcvtsi2sd (%rdi),%xmm1,%xmm20
    94:vcvtsi2sd (%rdi),%xmm19,%xmm20
    9a:vcvtsi2sd (%rdi),%xmm19,%xmm2
    a0:vcvtsi2sdq (%edi),%xmm1,%xmm2
    a6:vcvtsi2sd (%edi),%xmm1,%xmm20
    ad:vcvtsi2sd (%edi),%xmm19,%xmm20
    b4:vcvtsi2sd (%edi),%xmm19,%xmm2
    bb:vcvtsi2sdq (%rdi),%xmm1,%xmm2
    c0:vcvtsi2sd (%rdi),%xmm1,%xmm20
    c6:vcvtsi2sd (%rdi),%xmm19,%xmm20
    cc:vcvtsi2sd (%rdi),%xmm19,%xmm2
#################
TODO: elf/file.cpp:186

274:0
#################
TODO: elf/file.cpp:252

274:0

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



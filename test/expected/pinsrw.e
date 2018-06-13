class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 552
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
size:     339
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   403
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
offset:   403
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
offset:   505
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
offset:   408
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
offset:   504
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 41 0f 3a 20 ca 01 66  45 0f 3a 20 d2 03 66 45
0f 3a 20 3a 05 66 45 0f  3a 20 64 92 0a 07 66 41
0f 3a 22 ca 01 66 45 0f  3a 22 3a 05 66 45 0f 3a
22 64 92 0a 07 66 41 0f  c4 ca 01 66 45 0f c4 d2
03 66 45 0f c4 3a 05 66  45 0f c4 64 92 0a 07 66
4d 0f 3a 22 d2 03 66 4d  0f 3a 22 3a 05 66 4d 0f
3a 22 64 92 0a 07 62 c3  75 08 20 c2 01 62 53 05
00 20 ca 01 c4 c3 29 20  f2 03 62 43 ad 08 20 d2
03 c4 c3 01 20 1a 05 62  43 1d 08 20 64 92 0a 07
c4 c3 71 22 d2 01 62 c3  75 08 22 f2 01 62 d3 55
00 22 d2 01 62 c3 55 00  22 f2 01 c4 c3 01 22 1a
05 62 d3 55 00 22 94 92  0a 00 00 00 07 c4 c1 71
c4 e2 01 62 41 75 08 c4  c2 01 62 d1 55 00 c4 e2
01 62 41 ad 08 c4 f2 03  c4 41 29 c4 e2 03 62 d1
dd 00 c4 d2 03 62 c1 dd  00 c4 f2 03 c4 c1 01 c4
12 05 62 c1 05 08 c4 2a  05 62 c1 6d 08 c4 74 92
05 07 62 c1 55 00 c4 74  92 05 07 62 51 55 00 c4
44 92 05 07 c4 c3 a9 22  e2 03 c4 c3 a9 22 e2 03
c4 c3 81 22 22 05 62 d3  cd 00 22 a4 92 0a 00 00
00 07 62 43 ad 08 22 c2  03 62 43 ad 08 22 c2 03
62 43 85 08 22 02 05 62  43 cd 00 22 84 92 0a 00
00 00 07
     0:pinsrb $0x1,%r10d,%xmm1
     7:pinsrb $0x3,%r10d,%xmm10
     e:pinsrb $0x5,(%r10),%xmm15
    15:pinsrb $0x7,0xa(%r10,%rdx,4),%xmm12
    1e:pinsrd $0x1,%r10d,%xmm1
    25:pinsrd $0x5,(%r10),%xmm15
    2c:pinsrd $0x7,0xa(%r10,%rdx,4),%xmm12
    35:pinsrw $0x1,%r10d,%xmm1
    3b:pinsrw $0x3,%r10d,%xmm10
    41:pinsrw $0x5,(%r10),%xmm15
    47:pinsrw $0x7,0xa(%r10,%rdx,4),%xmm12
    4f:pinsrq $0x3,%r10,%xmm10
    56:pinsrq $0x5,(%r10),%xmm15
    5d:pinsrq $0x7,0xa(%r10,%rdx,4),%xmm12
    66:vpinsrb $0x1,%r10d,%xmm1,%xmm16
    6d:vpinsrb $0x1,%r10d,%xmm31,%xmm9
    74:vpinsrb $0x3,%r10d,%xmm10,%xmm6
    7a:vpinsrb $0x3,%r10d,%xmm10,%xmm26
    81:vpinsrb $0x5,(%r10),%xmm15,%xmm3
    87:vpinsrb $0x7,0xa(%r10,%rdx,4),%xmm12,%xmm28
    90:vpinsrd $0x1,%r10d,%xmm1,%xmm2
    96:vpinsrd $0x1,%r10d,%xmm1,%xmm22
    9d:vpinsrd $0x1,%r10d,%xmm21,%xmm2
    a4:vpinsrd $0x1,%r10d,%xmm21,%xmm22
    ab:vpinsrd $0x5,(%r10),%xmm15,%xmm3
    b1:vpinsrd $0x7,0xa(%r10,%rdx,4),%xmm21,%xmm2
    bd:vpinsrw $0x1,%r10d,%xmm1,%xmm4
    c3:vpinsrw $0x1,%r10d,%xmm1,%xmm24
    ca:vpinsrw $0x1,%r10d,%xmm21,%xmm4
    d1:vpinsrw $0x3,%r10d,%xmm10,%xmm30
    d8:vpinsrw $0x3,%r10d,%xmm10,%xmm12
    de:vpinsrw $0x3,%r10d,%xmm20,%xmm2
    e5:vpinsrw $0x3,%r10d,%xmm20,%xmm22
    ec:vpinsrw $0x5,(%r10),%xmm15,%xmm2
    f2:vpinsrw $0x5,(%r10),%xmm15,%xmm21
    f9:vpinsrw $0x7,0xa(%r10,%rdx,4),%xmm2,%xmm22
   102:vpinsrw $0x7,0xa(%r10,%rdx,4),%xmm21,%xmm22
   10b:vpinsrw $0x7,0xa(%r10,%rdx,4),%xmm21,%xmm8
   114:vpinsrq $0x3,%r10,%xmm10,%xmm4
   11a:vpinsrq $0x3,%r10,%xmm10,%xmm4
   120:vpinsrq $0x5,(%r10),%xmm15,%xmm4
   126:vpinsrq $0x7,0xa(%r10,%rdx,4),%xmm22,%xmm4
   132:vpinsrq $0x3,%r10,%xmm10,%xmm24
   139:vpinsrq $0x3,%r10,%xmm10,%xmm24
   140:vpinsrq $0x5,(%r10),%xmm15,%xmm24
   147:vpinsrq $0x7,0xa(%r10,%rdx,4),%xmm22,%xmm24
#################
TODO: elf/file.cpp:186

403:0
#################
TODO: elf/file.cpp:252

403:0

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



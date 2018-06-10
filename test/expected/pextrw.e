class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 456
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
size:     245
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   309
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
offset:   309
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
offset:   409
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
offset:   312
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
offset:   408
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 41 0f 3a 14 ca 01 66  45 0f 3a 14 d2 03 66 45
0f 3a 14 3a 05 66 45 0f  3a 14 64 92 0a 07 66 41
0f 3a 16 ca 01 66 45 0f  3a 16 3a 05 66 45 0f 3a
16 64 92 0a 07 66 44 0f  c5 d1 01 66 45 0f c5 d2
03 66 45 0f 3a 15 3a 05  66 45 0f 3a 15 64 92 0a
07 66 4d 0f 3a 16 d2 03  66 4d 0f 3a 16 3a 05 66
4d 0f 3a 16 64 92 0a 07  c4 c3 79 14 ca 01 62 43
7d 08 14 fa 01 c4 43 79  14 d2 03 c4 43 79 14 d2
03 c4 43 79 14 3a 05 62  c3 7d 08 14 74 92 0a 07
c4 c3 79 16 ca 01 62 c3  7d 08 16 ea 01 c4 43 79
16 3a 05 62 c3 7d 08 16  b4 92 0a 00 00 00 07 c5
79 c5 d1 01 62 31 7d 08  c5 d5 01 c4 41 79 c5 d2
03 62 31 fd 08 c5 d4 03  c4 43 79 15 3a 05 62 c3
7d 08 15 74 92 05 07 c4  43 f9 16 d2 03 c4 43 f9
16 d2 03 c4 43 f9 16 3a  05 62 c3 fd 08 16 b4 92
0a 00 00 00 07
     0:pextrb $0x1,%xmm1,%r10d
     7:pextrb $0x3,%xmm10,%r10d
     e:pextrb $0x5,%xmm15,(%r10)
    15:pextrb $0x7,%xmm12,0xa(%r10,%rdx,4)
    1e:pextrd $0x1,%xmm1,%r10d
    25:pextrd $0x5,%xmm15,(%r10)
    2c:pextrd $0x7,%xmm12,0xa(%r10,%rdx,4)
    35:pextrw $0x1,%xmm1,%r10d
    3b:pextrw $0x3,%xmm10,%r10d
    41:pextrw $0x5,%xmm15,(%r10)
    48:pextrw $0x7,%xmm12,0xa(%r10,%rdx,4)
    51:pextrq $0x3,%xmm10,%r10
    58:pextrq $0x5,%xmm15,(%r10)
    5f:pextrq $0x7,%xmm12,0xa(%r10,%rdx,4)
    68:vpextrb $0x1,%xmm1,%r10d
    6e:vpextrb $0x1,%xmm31,%r10d
    75:vpextrb $0x3,%xmm10,%r10d
    7b:vpextrb $0x3,%xmm10,%r10d
    81:vpextrb $0x5,%xmm15,(%r10)
    87:vpextrb $0x7,%xmm22,0xa(%r10,%rdx,4)
    90:vpextrd $0x1,%xmm1,%r10d
    96:vpextrd $0x1,%xmm21,%r10d
    9d:vpextrd $0x5,%xmm15,(%r10)
    a3:vpextrd $0x7,%xmm22,0xa(%r10,%rdx,4)
    af:vpextrw $0x1,%xmm1,%r10d
    b4:vpextrw $0x1,%xmm21,%r10d
    bb:vpextrw $0x3,%xmm10,%r10d
    c1:vpextrw $0x3,%xmm20,%r10
    c8:vpextrw $0x5,%xmm15,(%r10)
    ce:vpextrw $0x7,%xmm22,0xa(%r10,%rdx,4)
    d7:vpextrq $0x3,%xmm10,%r10
    dd:vpextrq $0x3,%xmm10,%r10
    e3:vpextrq $0x5,%xmm15,(%r10)
    e9:vpextrq $0x7,%xmm22,0xa(%r10,%rdx,4)
#################
TODO: elf/file.cpp:186

309:0
#################
TODO: elf/file.cpp:252

309:0

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



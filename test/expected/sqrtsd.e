class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 288
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
size:     77
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   141
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
offset:   141
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
offset:   241
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
offset:   144
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
offset:   240
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
f2 0f 51 22 f2 0f 51 e2  c4 c1 73 51 12 62 d1 d7
00 51 12 62 41 f7 08 51  03 62 41 d7 00 51 03 c5
f3 51 d3 62 e1 f7 08 51  eb 62 f1 ff 00 51 d3 62
e1 ff 00 51 eb 62 91 f7  08 51 d6 62 81 f7 08 51
ee 62 91 ff 00 51 d6 62  81 ff 00 51 ee
     0:sqrtsd (%rdx),%xmm4
     4:sqrtsd %xmm2,%xmm4
     8:vsqrtsd (%r10),%xmm1,%xmm2
     d:vsqrtsd (%r10),%xmm21,%xmm2
    13:vsqrtsd (%r11),%xmm1,%xmm24
    19:vsqrtsd (%r11),%xmm21,%xmm24
    1f:vsqrtsd %xmm3,%xmm1,%xmm2
    23:vsqrtsd %xmm3,%xmm1,%xmm21
    29:vsqrtsd %xmm3,%xmm16,%xmm2
    2f:vsqrtsd %xmm3,%xmm16,%xmm21
    35:vsqrtsd %xmm30,%xmm1,%xmm2
    3b:vsqrtsd %xmm30,%xmm1,%xmm21
    41:vsqrtsd %xmm30,%xmm16,%xmm2
    47:vsqrtsd %xmm30,%xmm16,%xmm21
#################
TODO: elf/file.cpp:186

141:0
#################
TODO: elf/file.cpp:252

141:0

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



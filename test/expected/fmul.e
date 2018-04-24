class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 312
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
size:     102
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   166
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
offset:   166
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
offset:   265
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
offset:   168
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
offset:   264
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
de c8 de c9 de ca de cb  de cc de cd de ce de cf
d8 c8 d8 c9 d8 ca d8 cb  d8 cc d8 cd d8 ce d8 cf
d8 c8 dc c9 dc ca dc cb  dc cc dc cd dc ce dc cf
d8 0c 25 7f 7f 7f 7f 67  d8 0a d8 0a 67 41 d8 09
41 d8 4d 00 41 d8 0a d8  0b d8 0c 93 de 0c 25 12
11 00 00 de 0c 25 11 11  11 11 67 de 0a de 0a 67
41 de 08 41 de 0e
     0:fmulp %st,%st(0)
     2:fmulp %st,%st(1)
     4:fmulp %st,%st(2)
     6:fmulp %st,%st(3)
     8:fmulp %st,%st(4)
     a:fmulp %st,%st(5)
     c:fmulp %st,%st(6)
     e:fmulp %st,%st(7)
    10:fmul %st(0),%st
    12:fmul %st(1),%st
    14:fmul %st(2),%st
    16:fmul %st(3),%st
    18:fmul %st(4),%st
    1a:fmul %st(5),%st
    1c:fmul %st(6),%st
    1e:fmul %st(7),%st
    20:fmul %st(0),%st
    22:fmul %st,%st(1)
    24:fmul %st,%st(2)
    26:fmul %st,%st(3)
    28:fmul %st,%st(4)
    2a:fmul %st,%st(5)
    2c:fmul %st,%st(6)
    2e:fmul %st,%st(7)
    30:fmuls 0x7f7f7f7f
    37:fmuls (%edx)
    3a:fmuls (%rdx)
    3c:fmuls (%r9d)
    40:fmuls 0x0(%r13)
    44:fmuls (%r10)
    47:fmuls (%rbx)
    49:fmuls (%rbx,%rdx,4)
    4c:fmul 0x1112
    53:fmul 0x11111111
    5a:fmul (%edx)
    5d:fmul (%rdx)
    5f:fmul (%r8d)
    63:fmul (%r14)
#################
TODO: elf/file.cpp:186

166:0
#################
TODO: elf/file.cpp:252

166:0

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



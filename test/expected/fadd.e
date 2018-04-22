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
de c0 de c1 de c2 de c3  de c4 de c5 de c6 de c7
d8 c0 d8 c1 d8 c2 d8 c3  d8 c4 d8 c5 d8 c6 d8 c7
d8 c0 dc c1 dc c2 dc c3  dc c4 dc c5 dc c6 dc c7
d8 04 25 7f 7f 7f 7f 67  d8 02 d8 02 67 41 d8 01
41 d8 45 00 41 d8 02 d8  03 d8 04 93 de 04 25 21
11 01 00 de 04 25 11 11  11 11 67 de 02 de 02 67
41 de 00 41 de 06
     0:faddp %st,%st(0)
     2:faddp %st,%st(1)
     4:faddp %st,%st(2)
     6:faddp %st,%st(3)
     8:faddp %st,%st(4)
     a:faddp %st,%st(5)
     c:faddp %st,%st(6)
     e:faddp %st,%st(7)
    10:fadd %st(0),%st
    12:fadd %st(1),%st
    14:fadd %st(2),%st
    16:fadd %st(3),%st
    18:fadd %st(4),%st
    1a:fadd %st(5),%st
    1c:fadd %st(6),%st
    1e:fadd %st(7),%st
    20:fadd %st(0),%st
    22:fadd %st,%st(1)
    24:fadd %st,%st(2)
    26:fadd %st,%st(3)
    28:fadd %st,%st(4)
    2a:fadd %st,%st(5)
    2c:fadd %st,%st(6)
    2e:fadd %st,%st(7)
    30:fadds 0x7f7f7f7f
    37:fadds (%edx)
    3a:fadds (%rdx)
    3c:fadds (%r9d)
    40:fadds 0x0(%r13)
    44:fadds (%r10)
    47:fadds (%rbx)
    49:fadds (%rbx,%rdx,4)
    4c:fiadd 0x11121
    53:fiadd 0x11111111
    5a:fiadd (%edx)
    5d:fiadd (%rdx)
    5f:fiadd (%r8d)
    63:fiadd (%r14)
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



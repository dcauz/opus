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
de f0 de f1 de f2 de f3  de f4 de f5 de f6 de f7
d8 f0 d8 f1 d8 f2 d8 f3  d8 f4 d8 f5 d8 f6 d8 f7
d8 f0 dc f1 dc f2 dc f3  dc f4 dc f5 dc f6 dc f7
d8 34 25 7f 7f 7f 7f 67  d8 32 d8 32 67 41 d8 31
41 d8 75 00 41 d8 32 d8  33 d8 34 93 de 34 25 12
11 00 00 de 34 25 11 11  11 11 67 de 32 de 32 67
41 de 30 41 de 36
     0:fdivp %st,%st(0)
     2:fdivp %st,%st(1)
     4:fdivp %st,%st(2)
     6:fdivp %st,%st(3)
     8:fdivp %st,%st(4)
     a:fdivp %st,%st(5)
     c:fdivp %st,%st(6)
     e:fdivp %st,%st(7)
    10:fdiv %st(0),%st
    12:fdiv %st(1),%st
    14:fdiv %st(2),%st
    16:fdiv %st(3),%st
    18:fdiv %st(4),%st
    1a:fdiv %st(5),%st
    1c:fdiv %st(6),%st
    1e:fdiv %st(7),%st
    20:fdiv %st(0),%st
    22:fdiv %st,%st(1)
    24:fdiv %st,%st(2)
    26:fdiv %st,%st(3)
    28:fdiv %st,%st(4)
    2a:fdiv %st,%st(5)
    2c:fdiv %st,%st(6)
    2e:fdiv %st,%st(7)
    30:fdivs 0x7f7f7f7f
    37:fdivs (%edx)
    3a:fdivs (%rdx)
    3c:fdivs (%r9d)
    40:fdivs 0x0(%r13)
    44:fdivs (%r10)
    47:fdivs (%rbx)
    49:fdivs (%rbx,%rdx,4)
    4c:fidiv 0x1112
    53:fidiv 0x11111111
    5a:fidiv (%edx)
    5d:fidiv (%rdx)
    5f:fidiv (%r8d)
    63:fidiv (%r14)
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



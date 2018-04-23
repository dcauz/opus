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
de f8 de f9 de fa de fb  de fc de fd de fe de ff
d8 f8 d8 f9 d8 fa d8 fb  d8 fc d8 fd d8 fe d8 ff
d8 f8 dc f9 dc fa dc fb  dc fc dc fd dc fe dc ff
d8 3c 25 7f 7f 7f 7f 67  d8 3a d8 3a 67 41 d8 39
41 d8 7d 00 41 d8 3a d8  3b d8 3c 93 de 3c 25 12
11 00 00 de 3c 25 11 11  11 11 67 de 3a de 3a 67
41 de 38 41 de 3e
     0:fdivp %st,%st(8)
     2:fdivp %st,%st(9)
     4:fdivp %st,%st(10)
     6:fdivp %st,%st(11)
     8:fdivp %st,%st(12)
     a:fdivp %st,%st(13)
     c:fdivp %st,%st(14)
     e:fdivp %st,%st(15)
    10:fdivr %st(0),%st
    12:fdivr %st(1),%st
    14:fdivr %st(2),%st
    16:fdivr %st(3),%st
    18:fdivr %st(4),%st
    1a:fdivr %st(5),%st
    1c:fdivr %st(6),%st
    1e:fdivr %st(7),%st
    20:fdivr %st(0),%st
    22:fdiv %st,%st(9)
    24:fdiv %st,%st(10)
    26:fdiv %st,%st(11)
    28:fdiv %st,%st(12)
    2a:fdiv %st,%st(13)
    2c:fdiv %st,%st(14)
    2e:fdiv %st,%st(15)
    30:fdivrs 0x7f7f7f7f
    37:fdivrs (%edx)
    3a:fdivrs (%rdx)
    3c:fdivrs (%r9d)
    40:fdivrs 0x0(%r13)
    44:fdivrs (%r10)
    47:fdivrs (%rbx)
    49:fdivrs (%rbx,%rdx,4)
    4c:fidivr 0x1112
    53:fidivr 0x11111111
    5a:fidivr (%edx)
    5d:fidivr (%rdx)
    5f:fidivr (%r8d)
    63:fidivr (%r14)
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



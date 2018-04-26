class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 296
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
size:     86
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   150
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
offset:   150
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
offset:   249
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
offset:   152
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
offset:   248
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
d8 e8 d8 e9 d8 ea d8 eb  d8 ec d8 ed d8 ee d8 ef
d8 e8 dc e9 dc ea dc eb  dc ec dc ed dc ee dc ef
d8 2c 25 7f 7f 7f 7f 67  d8 2a d8 2a 67 41 d8 29
41 d8 6d 00 41 d8 2a d8  2b d8 2c 93 de 2c 25 21
11 01 00 de 2c 25 11 11  11 11 67 de 2a de 2a 67
41 de 28 41 de 2e
     0:fsubr %st(0),%st
     2:fsubr %st(1),%st
     4:fsubr %st(2),%st
     6:fsubr %st(3),%st
     8:fsubr %st(4),%st
     a:fsubr %st(5),%st
     c:fsubr %st(6),%st
     e:fsubr %st(7),%st
    10:fsubr %st(0),%st
    12:fsubr %st,%st(1)
    14:fsubr %st,%st(2)
    16:fsubr %st,%st(3)
    18:fsubr %st,%st(4)
    1a:fsubr %st,%st(5)
    1c:fsubr %st,%st(6)
    1e:fsubr %st,%st(7)
    20:fsubrs 0x7f7f7f7f
    27:fsubrs (%edx)
    2a:fsubrs (%rdx)
    2c:fsubrs (%r9d)
    30:fsubrs 0x0(%r13)
    34:fsubrs (%r10)
    37:fsubrs (%rbx)
    39:fsubrs (%rbx,%rdx,4)
    3c:fisubr 0x11121
    43:fisubr 0x11111111
    4a:fisubr (%edx)
    4d:fisubr (%rdx)
    4f:fisubr (%r8d)
    53:fisubr (%r14)
#################
TODO: elf/file.cpp:186

150:0
#################
TODO: elf/file.cpp:252

150:0

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



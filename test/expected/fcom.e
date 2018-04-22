class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 272
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
size:     62
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   126
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
offset:   126
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
offset:   225
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
offset:   128
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
offset:   224
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
d8 d1 d8 d0 d8 d1 d8 d2  d8 d3 d8 d4 d8 d5 d8 d6
d8 d7 d8 d9 d8 d8 d8 d9  d8 da d8 db d8 dc d8 dd
d8 de d8 df de d9 d8 14  25 78 56 34 12 d8 1c 25
78 56 34 12 67 d8 12 67  d8 1a d8 12 d8 1a
     0:fcom %st(1)
     2:fcom %st(0)
     4:fcom %st(1)
     6:fcom %st(2)
     8:fcom %st(3)
     a:fcom %st(4)
     c:fcom %st(5)
     e:fcom %st(6)
    10:fcom %st(7)
    12:fcomp %st(1)
    14:fcomp %st(0)
    16:fcomp %st(1)
    18:fcomp %st(2)
    1a:fcomp %st(3)
    1c:fcomp %st(4)
    1e:fcomp %st(5)
    20:fcomp %st(6)
    22:fcomp %st(7)
    24:fcompp
    26:fcoms 0x12345678
    2d:fcomps 0x12345678
    34:fcoms (%edx)
    37:fcomps (%edx)
    3a:fcoms (%rdx)
    3c:fcomps (%rdx)
#################
TODO: elf/file.cpp:186

126:0
#################
TODO: elf/file.cpp:252

126:0

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



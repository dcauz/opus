class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 240
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
size:     32
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   96
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
offset:   96
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
offset:   193
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
offset:   96
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
offset:   192
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
da c1 da c9 da d1 da d9  db c1 db c9 db d1 db d9
da c7 da cf da d7 da df  db c7 db cf db d7 db df
20
     0:fcmovb %st(1), %st(0)
     2:fcmove %st(1), %st(0)
     4:fcmovbe %st(1), %st(0)
     6:fcmovu %st(1), %st(0)
     8:fcmovnb %st(1), %st(0)
     a:fcmovne %st(1), %st(0)
     c:fcmovnbe %st(1), %st(0)
     e:fcmovnu %st(1), %st(0)
    10:fcmovb %st(7), %st(0)
    12:fcmove %st(7), %st(0)
    14:fcmovbe %st(7), %st(0)
    16:fcmovu %st(7), %st(0)
    18:fcmovnb %st(7), %st(0)
    1a:fcmovne %st(7), %st(0)
    1c:fcmovnbe %st(7), %st(0)
    1e:fcmovnu %st(7), %st(0)
#################
TODO: elf/file.cpp:186

96:0
#################
TODO: elf/file.cpp:252

96:0

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



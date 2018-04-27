class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 248
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
size:     38
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   102
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
offset:   102
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
offset:   201
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
offset:   104
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
offset:   200
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
dd e1 dd e0 dd e1 dd e2  dd e3 dd e4 dd e5 dd e6
dd e7 dd e9 dd e8 dd e9  dd ea dd eb dd ec dd ed
dd ee dd ef da e9
     0:fucom %st(1)
     2:fucom %st(0)
     4:fucom %st(1)
     6:fucom %st(2)
     8:fucom %st(3)
     a:fucom %st(4)
     c:fucom %st(5)
     e:fucom %st(6)
    10:fucom %st(7)
    12:fucomp %st(1)
    14:fucomp %st(0)
    16:fucomp %st(1)
    18:fucomp %st(2)
    1a:fucomp %st(3)
    1c:fucomp %st(4)
    1e:fucomp %st(5)
    20:fucomp %st(6)
    22:fucomp %st(7)
    24:fucompp
#################
TODO: elf/file.cpp:186

102:0
#################
TODO: elf/file.cpp:252

102:0

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



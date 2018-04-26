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
de e0 de e1 de e2 de e3  de e4 de e5 de e6 de e7
d8 e0 d8 e1 d8 e2 d8 e3  d8 e4 d8 e5 d8 e6 d8 e7
d8 e0 dc e1 dc e2 dc e3  dc e4 dc e5 dc e6 dc e7
d8 24 25 7f 7f 7f 7f 67  d8 22 d8 22 67 41 d8 21
41 d8 65 00 41 d8 22 d8  23 d8 24 93 de 24 25 21
11 01 00 de 24 25 11 11  11 11 67 de 22 de 22 67
41 de 20 41 de 26
     0:fisub ERROR
     2:fisub ERROR
     4:fisub ERROR
     6:fisub ERROR
     8:fisub ERROR
     a:fisub ERROR
     c:fisub ERROR
     e:fisub ERROR
    10:fsub %st(0)
    12:fsub %st(1)
    14:fsub %st(2)
    16:fsub %st(3)
    18:fsub %st(4)
    1a:fsub %st(5)
    1c:fsub %st(6)
    1e:fsub %st(7)
    20:fsub %st(0)
    22:fsub %st,%st(1)
    24:fsub %st,%st(2)
    26:fsub %st,%st(3)
    28:fsub %st,%st(4)
    2a:fsub %st,%st(5)
    2c:fsub %st,%st(6)
    2e:fsub %st,%st(7)
    30:fsubs 0x7f7f7f7f
    37:fsubs (%edx)
    3a:fsubs (%rdx)
    3c:fsubs (%r9d)
    40:fsubs 0x0(%r13)
    44:fsubs (%r10)
    47:fsubs (%rbx)
    49:fsubs (%rbx,%rdx,4)
    4c:fisub 0x11121
    53:fisub 0x11111111
    5a:fisub (%edx)
    5d:fisub (%rdx)
    5f:fisub (%r8d)
    63:fisub (%r14)
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



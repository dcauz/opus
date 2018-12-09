class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 256
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
size:     43
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   107
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
offset:   107
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
offset:   209
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
offset:   112
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
offset:   208
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
9b d9 3a 9b 41 d9 3a 9b  67 d9 3a 9b 67 41 d9 3a
9b d9 3c 25 89 67 45 23  d9 3a 41 d9 3a 67 d9 3a
67 41 d9 3a d9 3c 25 89  67 45 23
     0:fwait
     1:fnstcw (%rdx)
     3:fwait
     4:fnstcw (%r10)
     7:fwait
     8:fnstcw (%edx)
     b:fwait
     c:fnstcw (%r10d)
    10:fwait
    11:fnstcw 0x23456789
    18:fnstcw (%rdx)
    1a:fnstcw (%r10)
    1d:fnstcw (%edx)
    20:fnstcw (%r10d)
    24:fnstcw 0x23456789
#################
TODO: elf/file.cpp:186

107:0
#################
TODO: elf/file.cpp:252

107:0

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



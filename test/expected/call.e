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
size:     97
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   161
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
offset:   161
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
ff d0 ff 10 ff 50 10 ff  90 00 01 00 00 42 ff 14
50 67 42 ff 14 c8 42 ff  54 50 10 67 42 ff 94 c8
00 01 00 00 41 ff 12 41  ff 53 10 41 ff 94 24 00
01 00 00 43 ff 14 52 41  ff 14 52 67 42 ff 14 c8
67 43 ff 14 c8 42 ff 54  50 10 67 42 ff 94 c8 00
01 00 00 43 ff 54 54 10  67 43 ff 94 c8 00 01 00
00
     0:callq *%rax
     2:callq *(%rax)
     4:callq *0x10(%rax)
     7:callq *0x100(%rax)
     d:callq *(%rax,%r10,2)
    11:callq *(%eax,%r9d,8)
    16:callq *0x10(%rax,%r10,2)
    1b:callq *0x100(%eax,%r9d,8)
    24:callq *(%r10)
    27:callq *0x10(%r11)
    2b:callq *0x100(%r12)
    33:callq *(%r10,%r10,2)
    37:callq *(%r10,%rdx,2)
    3b:callq *(%eax,%r9d,8)
    40:callq *(%r8d,%r9d,8)
    45:callq *0x10(%rax,%r10,2)
    4a:callq *0x100(%eax,%r9d,8)
    53:callq *0x10(%r12,%r10,2)
    58:callq *0x100(%r8d,%r9d,8)
#################
TODO: elf/file.cpp:186

161:0
#################
TODO: elf/file.cpp:252

161:0

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



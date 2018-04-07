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
size:     59
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   123
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
offset:   123
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
5d 66 5b 66 5e 66 41 59  66 41 5d 5b 5e 41 59 41
5d 8f 03 8f 46 20 41 8f  41 22 41 8f 45 21 42 8f
04 0b 8f 44 1e 20 42 8f  84 2e 11 20 00 00 41 8f
84 19 56 34 12 20 43 8f  44 a9 22
     0:pop %rbp
     1:pop %bx
     3:pop %si
     5:pop %r9w
     8:pop %r13w
     b:pop %rbx
     c:pop %rsi
     d:pop %r9
     f:pop %r13
    11:popq (%rbx)
    13:popq 0x20(%rsi)
    16:popq 0x22(%r9)
    1a:popq 0x21(%r13)
    1e:popq (%rbx,%r9,1)
    22:popq 0x20(%rsi,%rbx,1)
    26:popq 0x2011(%rsi,%r13,1)
    2e:popq 0x20123456(%r9,%rbx,1)
    36:popq 0x22(%r9,%r13,4)
#################
TODO: elf/file.cpp:186

123:0
#################
TODO: elf/file.cpp:252

123:0

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



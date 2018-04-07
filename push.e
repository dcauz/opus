class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 288
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
size:     80
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   144
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
offset:   144
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
offset:   241
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
offset:   144
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
offset:   240
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
55 66 53 66 56 66 41 51  66 41 55 53 56 41 51 41
55 ff 33 ff 76 20 41 ff  71 22 41 ff 75 21 42 ff
34 0b ff 74 1e 20 42 ff  b4 2e 11 20 00 00 41 ff
b4 19 56 34 12 20 43 ff  74 a9 22 ff 34 25 01 00
00 00 ff 34 25 e8 03 00  00 ff 34 25 40 42 0f 00
00
     0:push %rbp
     1:push %bx
     3:push %si
     5:push %r9w
     8:push %r13w
     b:push %rbx
     c:push %rsi
     d:push %r9
     f:push %r13
    11:pushq (%rbx)
    13:pushq 0x20(%rsi)
    16:pushq 0x22(%r9)
    1a:pushq 0x21(%r13)
    1e:pushq (%rbx,%r9,1)
    22:pushq 0x20(%rsi,%rbx,1)
    26:pushq 0x2011(%rsi,%r13,1)
    2e:pushq 0x20123456(%r9,%rbx,1)
    36:pushq 0x22(%r9,%r13,4)
    3b:pushq 0x1
    42:pushq 0x3e8
    49:pushq 0xf4240
#################
TODO: elf/file.cpp:186

144:0
#################
TODO: elf/file.cpp:252

144:0

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



class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 408
proc spec flags:       0
elf hdr size (bytes):  64
prog hdr tbl ent size: 0
prog hdr tbl ent cnt:  0
sect hdr tbl ent size: 64
sect hdr tbl ent cnt:  8
sect hdr str tbl ndx   5
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
size:     88
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .rela.text
type:     Relocation entries with addends
flags:    Contains SHT index
addr:     0
offset:   256
size:     96
link:     6
info:     1
alignment:8
entrySize:24

SECTION: 3
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   152
size:     0
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 4
name:     .bss
type:     Program space with no data (bss)
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   152
size:     0
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 5
name:     .shstrtab
type:     String table
flags:    
addr:     0
offset:   352
size:     49
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 6
name:     .symtab
type:     Symbol table
flags:    
addr:     0
offset:   152
size:     96
link:     7
info:     4
alignment:8
entrySize:24

SECTION: 7
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
e9 00 00 00 00 e9 00 00  00 00 e9 00 00 00 00 e9
00 00 00 00 66 ff e3 66  ff e1 66 ff e7 66 ff e6
66 ff e2 66 41 ff e2 ff  e2 41 ff e2 67 ff 22 67
41 ff 22 ff 22 41 ff 22  41 ff 62 10 41 ff a2 00
01 00 00 42 ff 24 92 43  ff 24 92 43 ff 64 52 10
43 ff a4 d2 00 01 00 00
     0:jmpq 0x0
     5:jmpq 0x0
     a:jmpq 0x0
     f:jmpq 0x0
    14:jmp *%bx
    17:jmp *%cx
    1a:jmp *%di
    1d:jmp *%si
    20:jmp *%dx
    23:jmp *%r10w
    27:jmp *%rdx
    29:jmp *%r10
    2c:jmp *(%edx)
    2f:jmp *(%r10d)
    33:jmp *(%rdx)
    35:jmp *(%r10)
    38:jmp *0x10(%r10)
    3c:jmp *0x100(%r10)
    43:jmp *(%rdx,%r10,4)
    47:jmp *(%r10,%r10,4)
    4b:jmp *0x10(%r10,%r10,2)
    50:jmp *0x100(%r10,%r10,8)
#################
TODO: elf/file.cpp:224

256:96
01 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
0c 00 00 00 00 00 00 00  06 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  ec 00 00 00 00 00 00 00
0b 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
fc 00 00 00 00 00 00 00  10 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  fc 0e 00 00 00 00 00 00
60
#################
TODO: elf/file.cpp:186

152:0
#################
TODO: elf/file.cpp:252

152:0

.symtab
.strtab
.shstrtab
.rela.text
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
section:3
value:0
size:0

name:
bind:local
type:assoc-with-section
visibility:default
section:4
value:0
size:0



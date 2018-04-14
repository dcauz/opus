class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 264
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
size:     52
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   116
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
offset:   116
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
offset:   217
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
offset:   120
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
offset:   216
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f c8 0f c9 0f ca 0f cb  0f cc 0f cd 0f ce 0f cf
41 0f ca 41 0f cd 48 0f  c8 48 0f c9 48 0f ca 48
0f cb 48 0f cc 48 0f cd  48 0f ce 48 0f cf 49 0f
cb 49 0f ce
     0:bswap %eax
     2:bswap %ecx
     4:bswap %edx
     6:bswap %ebx
     8:bswap %esp
     a:bswap %ebp
     c:bswap %esi
     e:bswap %edi
    10:bswap %r10d
    13:bswap %r13d
    16:bswap %rax
    19:bswap %rcx
    1c:bswap %rdx
    1f:bswap %rbx
    22:bswap %rsp
    25:bswap %rbp
    28:bswap %rsi
    2b:bswap %rdi
    2e:bswap %r11
    31:bswap %r14
#################
TODO: elf/file.cpp:186

116:0
#################
TODO: elf/file.cpp:252

116:0

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



class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 296
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
size:     83
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   147
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
offset:   147
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
offset:   249
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
offset:   152
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
offset:   248
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 22 c2 0f 22 ca 44 0f  22 c2 44 0f 22 d2 41 0f
22 c2 41 0f 22 cb 45 0f  22 d4 0f 20 ca 0f 20 d2
0f 20 da 0f 20 e2 0f 20  ea 0f 20 f2 0f 20 fa 44
0f 20 c2 44 0f 20 ca 44  0f 20 d2 44 0f 20 da 44
0f 20 e2 44 0f 20 ea 44  0f 20 f2 44 0f 20 fa 45
0f 20 f8
     0:mov %rdx,%cr0
     3:mov %rdx,%cr1
     6:mov %rdx,%cr8
     a:mov %rdx,%cr10
     e:mov %r10,%cr0
    12:mov %r11,%cr1
    16:mov %r12,%cr10
    1a:mov %cr1,%rdx
    1d:mov %cr2,%rdx
    20:mov %cr3,%rdx
    23:mov %cr4,%rdx
    26:mov %cr5,%rdx
    29:mov %cr6,%rdx
    2c:mov %cr7,%rdx
    2f:mov %cr8,%rdx
    33:mov %cr9,%rdx
    37:mov %cr10,%rdx
    3b:mov %cr11,%rdx
    3f:mov %cr12,%rdx
    43:mov %cr13,%rdx
    47:mov %cr14,%rdx
    4b:mov %cr15,%rdx
    4f:mov %cr15,%r8
#################
TODO: elf/file.cpp:186

147:0
#################
TODO: elf/file.cpp:252

147:0

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



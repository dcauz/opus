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
size:     79
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   143
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
offset:   143
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
0f 23 c2 0f 23 ca 44 0f  23 d2 41 0f 23 c2 41 0f
23 cb 45 0f 23 d4 0f 21  ca 0f 21 d2 0f 21 da 0f
21 e2 0f 21 ea 0f 21 f2  0f 21 fa 44 0f 21 c2 44
0f 21 ca 44 0f 21 d2 44  0f 21 da 44 0f 21 e2 44
0f 21 ea 44 0f 21 f2 44  0f 21 fa 45 0f 21 f8
     0:mov %rdx,%db0
     3:mov %rdx,%db1
     6:mov %rdx,%db10
     a:mov %r10,%db0
     e:mov %r11,%db1
    12:mov %r12,%db10
    16:mov %db1,%rdx
    19:mov %db2,%rdx
    1c:mov %db3,%rdx
    1f:mov %db4,%rdx
    22:mov %db5,%rdx
    25:mov %db6,%rdx
    28:mov %db7,%rdx
    2b:mov %db8,%rdx
    2f:mov %db9,%rdx
    33:mov %db10,%rdx
    37:mov %db11,%rdx
    3b:mov %db12,%rdx
    3f:mov %db13,%rdx
    43:mov %db14,%rdx
    47:mov %db15,%rdx
    4b:mov %db15,%r8
#################
TODO: elf/file.cpp:186

143:0
#################
TODO: elf/file.cpp:252

143:0

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



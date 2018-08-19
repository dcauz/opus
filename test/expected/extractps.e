class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 280
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
size:     66
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   130
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
offset:   130
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
offset:   233
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
offset:   136
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
offset:   232
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
66 41 0f 3a 17 ca 01 66  45 0f 3a 17 da 0a 66 41
0f 3a 17 0a 01 66 45 0f  3a 17 1a 0a c4 c3 79 17
ca 01 c4 43 79 17 da 0a  62 c3 7d 08 17 ea 64 c4
c3 79 17 0a 01 c4 43 79  17 1a 0a 62 c3 7d 08 17
2a 64
     0:extractps $0x1,%xmm1,%r10d
     7:extractps $0xa,%xmm11,%r10d
     e:extractps $0x1,%xmm1,(%r10)
    15:extractps $0xa,%xmm11,(%r10)
    1c:vextractps $0x1,%xmm1,%r10d
    22:vextractps $0xa,%xmm11,%r10d
    28:vextractps $0x64,%xmm21,%r10d
    2f:vextractps $0x1,%xmm1,(%r10)
    35:vextractps $0xa,%xmm11,(%r10)
    3b:vextractps $0x64,%xmm21,(%r10)
#################
TODO: elf/file.cpp:186

130:0
#################
TODO: elf/file.cpp:252

130:0

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



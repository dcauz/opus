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
size:     56
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   120
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
offset:   120
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
f3 41 0f 2a d3 f3 49 0f  2a d3 c4 c1 12 2a d9 c4
c1 92 2a d9 67 c4 c1 12  2a 19 c4 c1 12 2a 19 62
d1 46 00 2a d9 62 d1 c6  00 2a d9 67 62 d1 46 00
2a 19 62 d1 46 00 2a 19
     0:cvtsi2ss %r11d,%xmm2
     5:cvtsi2ss %r11,%xmm2
     a:vcvtsi2ss %r9d,%xmm13,%xmm3
     f:vcvtsi2ss %r9,%xmm13,%xmm3
    14:vcvtsi2ss (%r9d),%xmm13,%xmm3
    1a:vcvtsi2ss (%r9),%xmm13,%xmm3
    1f:vcvtsi2ss %r9d,%xmm23,%xmm3
    25:vcvtsi2ss %r9,%xmm23,%xmm3
    2b:vcvtsi2ss (%r9d),%xmm23,%xmm3
    32:vcvtsi2ss (%r9),%xmm23,%xmm3
#################
TODO: elf/file.cpp:186

120:0
#################
TODO: elf/file.cpp:252

120:0

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



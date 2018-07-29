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
size:     55
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   119
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
offset:   119
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
66 0f 2b 0a 66 44 0f 2b  02 c5 f9 2b 0a c5 79 2b
02 62 e1 fd 08 2b 02 c5  fd 2b 0a c5 7d 2b 02 62
e1 fd 28 2b 02 62 f1 fd  48 2b 0a 62 71 fd 48 2b
02 62 e1 fd 48 2b 02
     0:movntpd %xmm1,(%rdx)
     4:movntpd %xmm8,(%rdx)
     9:vmovntpd %xmm1,(%rdx)
     d:vmovntpd %xmm8,(%rdx)
    11:vmovntpd %xmm16,(%rdx)
    17:vmovntpd %ymm1,(%rdx)
    1b:vmovntpd %ymm8,(%rdx)
    1f:vmovntpd %ymm16,(%rdx)
    25:vmovntpd %zmm1,(%rdx)
    2b:vmovntpd %zmm8,(%rdx)
    31:vmovntpd %zmm16,(%rdx)
#################
TODO: elf/file.cpp:186

119:0
#################
TODO: elf/file.cpp:252

119:0

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



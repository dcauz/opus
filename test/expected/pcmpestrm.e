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
size:     77
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   141
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
offset:   141
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
66 0f 3a 60 d1 01 66 44  0f 3a 60 e1 0b 66 44 0f
3a 60 e1 6f 66 41 0f 3a  60 12 01 66 45 0f 3a 60
22 0b 66 45 0f 3a 60 22  6f c4 e3 79 60 d1 01 c4
63 79 60 e1 0b c4 63 79  60 e1 6f c4 c3 79 60 12
01 c4 43 79 60 22 0b c4  43 79 60 22 6f
     0:pcmpestrm $0x1,%xmm1,%xmm2
     6:pcmpestrm $0xb,%xmm1,%xmm12
     d:pcmpestrm $0x6f,%xmm1,%xmm12
    14:pcmpestrm $0x1,(%r10),%xmm2
    1b:pcmpestrm $0xb,(%r10),%xmm12
    22:pcmpestrm $0x6f,(%r10),%xmm12
    29:vpcmpestrm $0x1,%xmm1,%xmm2
    2f:vpcmpestrm $0xb,%xmm1,%xmm12
    35:vpcmpestrm $0x6f,%xmm1,%xmm12
    3b:vpcmpestrm $0x1,(%r10),%xmm2
    41:vpcmpestrm $0xb,(%r10),%xmm12
    47:vpcmpestrm $0x6f,(%r10),%xmm12
#################
TODO: elf/file.cpp:186

141:0
#################
TODO: elf/file.cpp:252

141:0

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



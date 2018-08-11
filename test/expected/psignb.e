class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 328
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
size:     120
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   184
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
offset:   184
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
offset:   281
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
offset:   184
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
offset:   280
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
41 0f 38 08 0a 0f 38 08  cb 66 41 0f 38 08 0a 66
0f 38 08 cb 41 0f 38 09  0a 0f 38 09 cb 66 41 0f
38 09 0a 66 0f 38 09 cb  41 0f 38 0a 0a 0f 38 0a
cb 66 41 0f 38 0a 0a 66  0f 38 0a cb c4 c2 71 08
3a c4 e2 01 08 fb c4 c2  71 0a 3a c4 e2 01 0a fb
c4 c2 71 09 3a c4 e2 01  09 fb c4 c2 75 08 3a c4
e2 05 08 fb c4 c2 75 0a  3a c4 e2 05 0a fb c4 c2
75 09 3a c4 e2 05 09 fb
     0:psignb (%r10),%mm1
     5:psignb %mm3,%mm1
     9:psignb (%r10),%xmm1
     f:psignb %xmm3,%xmm1
    14:psignw (%r10),%mm1
    19:psignw %mm3,%mm1
    1d:psignw (%r10),%xmm1
    23:psignw %xmm3,%xmm1
    28:psignd (%r10),%mm1
    2d:psignd %mm3,%mm1
    31:psignd (%r10),%xmm1
    37:psignd %xmm3,%xmm1
    3c:vpsignb (%r10),%xmm1,%xmm7
    41:vpsignb %xmm3,%xmm15,%xmm7
    46:vpsignd (%r10),%xmm1,%xmm7
    4b:vpsignd %xmm3,%xmm15,%xmm7
    50:vpsignw (%r10),%xmm1,%xmm7
    55:vpsignw %xmm3,%xmm15,%xmm7
    5a:vpsignb (%r10),%ymm1,%ymm7
    5f:vpsignb %ymm3,%ymm15,%ymm7
    64:vpsignd (%r10),%ymm1,%ymm7
    69:vpsignd %ymm3,%ymm15,%ymm7
    6e:vpsignw (%r10),%ymm1,%ymm7
    73:vpsignw %ymm3,%ymm15,%ymm7
#################
TODO: elf/file.cpp:186

184:0
#################
TODO: elf/file.cpp:252

184:0

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



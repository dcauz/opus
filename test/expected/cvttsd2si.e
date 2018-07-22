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
f2 0f 2c d0 f2 41 0f 2c  12 f2 4c 0f 2c d8 f2 4d
0f 2c 22 f2 48 0f 2c d0  f2 49 0f 2c 12 c4 c1 7b
2c d2 62 b1 7f 08 2c d4  c4 c1 7b 2c 12 c4 41 fb
2c da 62 31 ff 08 2c dc  c4 41 fb 2c 22 c4 c1 fb
2c d2 62 b1 ff 08 2c d4  c4 c1 fb 2c 12
     0:cvttsd2si %xmm0,%edx
     4:cvttsd2si (%r10),%edx
     9:cvttsd2si %xmm0,%r11
     e:cvttsd2si (%r10),%r12
    13:cvttsd2si %xmm0,%rdx
    18:cvttsd2si (%r10),%rdx
    1d:vcvttsd2si %xmm10,%edx
    22:vcvttsd2si %xmm20,%edx
    28:vcvttsd2si (%r10),%edx
    2d:vcvttsd2si %xmm10,%r11
    32:vcvttsd2si %xmm20,%r11
    38:vcvttsd2si (%r10),%r12
    3d:vcvttsd2si %xmm10,%rdx
    42:vcvttsd2si %xmm20,%rdx
    48:vcvttsd2si (%r10),%rdx
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



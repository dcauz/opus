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
size:     75
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   139
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
offset:   139
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
f3 4c 0f 2c d0 f3 4d 0f  2c 10 67 f3 4d 0f 2c 10
f3 44 0f 2c d0 f3 45 0f  2c 10 67 f3 45 0f 2c 10
c4 61 fa 2c d0 c4 41 fa  2c 10 67 c4 41 fa 2c 10
c5 7a 2c d0 c4 41 7a 2c  10 67 c4 41 7a 2c 10 62
31 fe 08 2c d4 62 31 7e  08 2c d4
     0:cvttss2si %xmm0,%r10
     5:cvttss2si (%r8),%r10
     a:cvttss2si (%r8d),%r10
    10:cvttss2si %xmm0,%r10d
    15:cvttss2si (%r8),%r10d
    1a:cvttss2si (%r8d),%r10d
    20:vcvttss2si %xmm0,%r10
    25:vcvttss2si (%r8),%r10
    2a:vcvttss2si (%r8d),%r10
    30:vcvttss2si %xmm0,%r10d
    34:vcvttss2si (%r8),%r10d
    39:vcvttss2si (%r8d),%r10d
    3f:vcvttss2si %xmm20,%r10
    45:vcvttss2si %xmm20,%r10d
#################
TODO: elf/file.cpp:186

139:0
#################
TODO: elf/file.cpp:252

139:0

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



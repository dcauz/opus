class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 456
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
size:     248
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   312
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
offset:   312
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
offset:   409
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
offset:   312
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
offset:   408
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
67 0f 01 00 67 0f 01 02  0f 01 02 67 0f 01 0a 0f
01 0a 67 0f 01 42 32 0f  01 42 32 67 0f 01 4a 32
0f 01 4a 32 67 0f 01 82  98 32 00 00 0f 01 82 98
32 00 00 67 0f 01 8a 98  32 00 00 0f 01 8a 98 32
00 00 67 0f 01 44 32 38  0f 01 84 72 a5 37 00 00
67 0f 01 8c b2 98 32 00  00 0f 01 4c f2 38 0f 01
04 25 38 00 00 00 0f 01  04 25 a5 37 00 00 0f 01
0c 25 98 32 00 00 0f 01  0c 25 38 00 00 00 67 0f
01 02 0f 01 02 67 0f 01  0a 0f 01 0a 67 0f 01 42
32 0f 01 42 32 67 0f 01  4a 32 0f 01 4a 32 67 0f
01 82 98 32 00 00 0f 01  82 98 32 00 00 67 0f 01
8a 98 32 00 00 0f 01 8a  98 32 00 00 67 0f 01 44
32 38 0f 01 84 72 a5 37  00 00 67 0f 01 8c b2 98
32 00 00 0f 01 4c f2 38  0f 01 04 25 38 00 00 00
0f 01 04 25 a5 37 00 00  0f 01 0c 25 98 32 00 00
0f 01 0c 25 38 00 00 00
     0:sgdt (%eax)
     4:sgdt (%edx)
     8:sgdt (%rdx)
     b:sidt (%edx)
     f:sidt (%rdx)
    12:sgdt 0x32(%edx)
    17:sgdt 0x32(%rdx)
    1b:sidt 0x32(%edx)
    20:sidt 0x32(%rdx)
    24:sgdt 0x3298(%edx)
    2c:sgdt 0x3298(%rdx)
    33:sidt 0x3298(%edx)
    3b:sidt 0x3298(%rdx)
    42:sgdt 0x38(%edx,%esi,1)
    48:sgdt 0x37a5(%rdx,%rsi,2)
    50:sidt 0x3298(%edx,%esi,4)
    59:sidt 0x38(%rdx,%rsi,8)
    5e:sgdt 0x38
    66:sgdt 0x37a5
    6e:sidt 0x3298
    76:sidt 0x38
    7e:sgdt (%edx)
    82:sgdt (%rdx)
    85:sidt (%edx)
    89:sidt (%rdx)
    8c:sgdt 0x32(%edx)
    91:sgdt 0x32(%rdx)
    95:sidt 0x32(%edx)
    9a:sidt 0x32(%rdx)
    9e:sgdt 0x3298(%edx)
    a6:sgdt 0x3298(%rdx)
    ad:sidt 0x3298(%edx)
    b5:sidt 0x3298(%rdx)
    bc:sgdt 0x38(%edx,%esi,1)
    c2:sgdt 0x37a5(%rdx,%rsi,2)
    ca:sidt 0x3298(%edx,%esi,4)
    d3:sidt 0x38(%rdx,%rsi,8)
    d8:sgdt 0x38
    e0:sgdt 0x37a5
    e8:sidt 0x3298
    f0:sidt 0x38
#################
TODO: elf/file.cpp:186

312:0
#################
TODO: elf/file.cpp:252

312:0

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



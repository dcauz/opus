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
67 0f 01 10 67 0f 01 12  0f 01 12 67 0f 01 1a 0f
01 1a 67 0f 01 52 32 0f  01 52 32 67 0f 01 5a 32
0f 01 5a 32 67 0f 01 92  98 32 00 00 0f 01 92 98
32 00 00 67 0f 01 9a 98  32 00 00 0f 01 9a 98 32
00 00 67 0f 01 54 32 38  0f 01 94 72 a5 37 00 00
67 0f 01 9c b2 98 32 00  00 0f 01 5c f2 38 0f 01
14 25 38 00 00 00 0f 01  14 25 a5 37 00 00 0f 01
1c 25 98 32 00 00 0f 01  1c 25 38 00 00 00 67 0f
01 12 0f 01 12 67 0f 01  1a 0f 01 1a 67 0f 01 52
32 0f 01 52 32 67 0f 01  5a 32 0f 01 5a 32 67 0f
01 92 98 32 00 00 0f 01  92 98 32 00 00 67 0f 01
9a 98 32 00 00 0f 01 9a  98 32 00 00 67 0f 01 54
32 38 0f 01 94 72 a5 37  00 00 67 0f 01 9c b2 98
32 00 00 0f 01 5c f2 38  0f 01 14 25 38 00 00 00
0f 01 14 25 a5 37 00 00  0f 01 1c 25 98 32 00 00
0f 01 1c 25 38 00 00 00
     0:lgdt (%eax)
     4:lgdt (%edx)
     8:lgdt (%rdx)
     b:lidt (%edx)
     f:lidt (%rdx)
    12:lgdt 0x32(%edx)
    17:lgdt 0x32(%rdx)
    1b:lidt 0x32(%edx)
    20:lidt 0x32(%rdx)
    24:lgdt 0x3298(%edx)
    2c:lgdt 0x3298(%rdx)
    33:lidt 0x3298(%edx)
    3b:lidt 0x3298(%rdx)
    42:lgdt 0x38(%edx,%esi,1)
    48:lgdt 0x37a5(%rdx,%rsi,2)
    50:lidt 0x3298(%edx,%esi,4)
    59:lidt 0x38(%rdx,%rsi,8)
    5e:lgdt 0x38
    66:lgdt 0x37a5
    6e:lidt 0x3298
    76:lidt 0x38
    7e:lgdt (%edx)
    82:lgdt (%rdx)
    85:lidt (%edx)
    89:lidt (%rdx)
    8c:lgdt 0x32(%edx)
    91:lgdt 0x32(%rdx)
    95:lidt 0x32(%edx)
    9a:lidt 0x32(%rdx)
    9e:lgdt 0x3298(%edx)
    a6:lgdt 0x3298(%rdx)
    ad:lidt 0x3298(%edx)
    b5:lidt 0x3298(%rdx)
    bc:lgdt 0x38(%edx,%esi,1)
    c2:lgdt 0x37a5(%rdx,%rsi,2)
    ca:lidt 0x3298(%edx,%esi,4)
    d3:lidt 0x38(%rdx,%rsi,8)
    d8:lgdt 0x38
    e0:lgdt 0x37a5
    e8:lidt 0x3298
    f0:lidt 0x38
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



class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 728
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
size:     513
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   577
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
offset:   577
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
offset:   681
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
offset:   584
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
offset:   680
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
48 0f 00 cc 66 0f 00 ce  66 0f 00 cb 0f 00 cb 0f
00 ce 49 0f 00 cd 41 0f  00 cd 66 41 0f 00 cd 49
0f 00 c9 41 0f 00 c9 66  41 0f 00 c9 48 0f 00 cb
48 0f 00 ce 67 0f 00 4b  14 67 0f 00 4c 33 14 67
0f 00 4c b3 14 67 42 0f  00 4c ab 14 67 42 0f 00
4c 8b 14 67 0f 00 4e 14  41 0f 00 4d 14 67 41 0f
00 4d 14 41 0f 00 49 14  67 41 0f 00 49 14 67 43
0f 00 4c a9 14 43 0f 00  4c a9 14 0f 00 4b 14 42
0f 00 4c ab 14 42 0f 00  4c 8b 14 0f 00 4c b3 14
0f 00 4c 33 14 0f 00 4e  14 67 0f 00 8c 73 14 22
00 00 0f 00 8c 73 14 22  00 00 67 0f 00 8b 14 28
00 00 67 0f 00 8c b3 14  22 43 00 67 42 0f 00 8c
ab 14 22 43 00 67 42 0f  00 8c 8b 14 22 43 00 67
43 0f 00 8c a9 14 22 43  00 43 0f 00 8c a9 14 22
43 00 42 0f 00 8c ab 14  22 43 00 42 0f 00 8c 8b
14 22 43 00 0f 00 8c b3  14 22 43 00 67 42 0f 00
8c ab 14 22 43 69 67 42  0f 00 8c 8b 14 22 43 69
67 0f 00 8c 9e 14 22 43  69 67 0f 00 8c de 14 22
43 69 67 43 0f 00 8c a9  14 22 43 69 43 0f 00 8c
a9 14 22 43 69 42 0f 00  8c ab 14 22 43 69 42 0f
00 8c 8b 14 22 43 69 0f  00 8c 9e 14 22 43 69 0f
00 8c de 14 22 43 69 67  0f 00 8b 14 28 79 00 67
0f 00 8b 14 28 79 7b 67  0f 00 0b 67 42 0f 00 0c
ab 67 42 0f 00 0c ab 67  42 0f 00 0c ab 67 42 0f
00 0c ab 67 42 0f 00 0c  8b 67 42 0f 00 0c 8b 67
42 0f 00 0c 8b 67 42 0f  00 0c 8b 67 0f 00 0c 1e
67 0f 00 0c 9e 67 0f 00  0c 9e 67 0f 00 0c 9e 67
43 0f 00 0c a9 43 0f 00  0c a9 43 0f 00 0c a9 41
0f 00 0c 99 41 0f 00 0c  99 42 0f 00 0c ab 42 0f
00 0c ab 42 0f 00 0c ab  42 0f 00 0c ab 42 0f 00
0c 8b 42 0f 00 0c 8b 42  0f 00 0c 8b 42 0f 00 0c
8b 0f 00 0c 1e 0f 00 0c  9e 0f 00 0c 9e 0f 00 0c
9e
     0:str %rsp
     4:str %dh
     8:str %bl
     c:str %bl
     f:str %dh
    12:str %rbp
    16:str %bpl
    1a:str %bpl
    1f:str %rcx
    23:str %cl
    27:str %cl
    2c:str %rbx
    30:str %rsi
    34:str 0x14(%ebx)
    39:str 0x14(%ebx,%esi,1)
    3f:str 0x14(%ebx,%esi,4)
    45:str 0x14(%ebx,%r13d,4)
    4c:str 0x14(%ebx,%r9d,4)
    53:str 0x14(%esi)
    58:str 0x14(%r13)
    5d:str 0x14(%r13d)
    63:str 0x14(%r9)
    68:str 0x14(%r9d)
    6e:str 0x14(%r9d,%r13d,4)
    75:str 0x14(%r9,%r13,4)
    7b:str 0x14(%rbx)
    7f:str 0x14(%rbx,%r13,4)
    85:str 0x14(%rbx,%r9,4)
    8b:str 0x14(%rbx,%rsi,4)
    90:str 0x14(%rbx,%rsi,1)
    95:str 0x14(%rsi)
    99:str 0x2214(%ebx,%esi,2)
    a2:str 0x2214(%rbx,%rsi,2)
    aa:str 0x2814(%ebx)
    b2:str 0x432214(%ebx,%esi,4)
    bb:str 0x432214(%ebx,%r13d,4)
    c5:str 0x432214(%ebx,%r9d,4)
    cf:str 0x432214(%r9d,%r13d,4)
    d9:str 0x432214(%r9,%r13,4)
    e2:str 0x432214(%rbx,%r13,4)
    eb:str 0x432214(%rbx,%r9,4)
    f4:str 0x432214(%rbx,%rsi,4)
    fc:str 0x69432214(%ebx,%r13d,4)
   106:str 0x69432214(%ebx,%r9d,4)
   110:str 0x69432214(%esi,%ebx,4)
   119:str 0x69432214(%esi,%ebx,8)
   122:str 0x69432214(%r9d,%r13d,4)
   12c:str 0x69432214(%r9,%r13,4)
   135:str 0x69432214(%rbx,%r13,4)
   13e:str 0x69432214(%rbx,%r9,4)
   147:str 0x69432214(%rsi,%rbx,4)
   14f:str 0x69432214(%rsi,%rbx,8)
   157:str 0x792814(%ebx)
   15f:str 0x7b792814(%ebx)
   167:str (%ebx)
   16b:str (%ebx,%r13d,4)
   171:str (%ebx,%r13d,4)
   177:str (%ebx,%r13d,4)
   17d:str (%ebx,%r13d,4)
   183:str (%ebx,%r9d,4)
   189:str (%ebx,%r9d,4)
   18f:str (%ebx,%r9d,4)
   195:str (%ebx,%r9d,4)
   19b:str (%esi,%ebx,1)
   1a0:str (%esi,%ebx,4)
   1a5:str (%esi,%ebx,4)
   1aa:str (%esi,%ebx,4)
   1af:str (%r9d,%r13d,4)
   1b5:str (%r9,%r13,4)
   1ba:str (%r9,%r13,4)
   1bf:str (%r9,%rbx,4)
   1c4:str (%r9,%rbx,4)
   1c9:str (%rbx,%r13,4)
   1ce:str (%rbx,%r13,4)
   1d3:str (%rbx,%r13,4)
   1d8:str (%rbx,%r13,4)
   1dd:str (%rbx,%r9,4)
   1e2:str (%rbx,%r9,4)
   1e7:str (%rbx,%r9,4)
   1ec:str (%rbx,%r9,4)
   1f1:str (%rsi,%rbx,1)
   1f5:str (%rsi,%rbx,4)
   1f9:str (%rsi,%rbx,4)
   1fd:str (%rsi,%rbx,4)
#################
TODO: elf/file.cpp:186

577:0
#################
TODO: elf/file.cpp:252

577:0

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



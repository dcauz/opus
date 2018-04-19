class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 592
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
size:     381
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   445
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
offset:   445
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
offset:   545
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
offset:   448
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
offset:   544
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
67 0f 00 53 14 67 0f 00  54 33 14 67 0f 00 54 b3
14 67 42 0f 00 54 ab 14  67 42 0f 00 54 8b 14 67
0f 00 56 14 41 0f 00 55  14 67 41 0f 00 55 14 41
0f 00 51 14 67 41 0f 00  51 14 67 43 0f 00 54 a9
14 43 0f 00 54 a9 14 0f  00 53 14 42 0f 00 54 ab
14 42 0f 00 54 8b 14 0f  00 54 33 14 0f 00 54 b3
14 0f 00 56 14 67 0f 00  94 73 14 22 00 00 0f 00
94 73 14 22 00 00 67 0f  00 93 14 28 00 00 67 0f
00 94 b3 14 22 43 00 67  42 0f 00 94 ab 14 22 43
00 67 42 0f 00 94 8b 14  22 43 00 67 43 0f 00 94
a9 14 22 43 00 43 0f 00  94 a9 14 22 43 00 42 0f
00 94 ab 14 22 43 00 42  0f 00 94 8b 14 22 43 00
0f 00 94 b3 14 22 43 00  67 42 0f 00 94 ab 14 22
43 69 67 42 0f 00 94 8b  14 22 43 69 67 0f 00 94
9e 14 22 43 69 67 0f 00  94 de 14 22 43 69 67 43
0f 00 94 a9 14 22 43 69  43 0f 00 94 a9 14 22 43
69 42 0f 00 94 ab 14 22  43 69 42 0f 00 94 8b 14
22 43 69 0f 00 94 9e 14  22 43 69 0f 00 94 de 14
22 43 69 67 0f 00 93 14  28 79 00 67 0f 00 93 14
28 79 7b 0f 00 d3 67 0f  00 13 67 42 0f 00 14 ab
67 42 0f 00 14 8b 67 0f  00 14 1e 67 0f 00 14 9e
41 0f 00 d5 67 43 0f 00  14 a9 43 0f 00 14 a9 41
0f 00 14 99 41 0f 00 d1  42 0f 00 14 ab 42 0f 00
14 8b 0f 00 14 1e 0f 00  14 9e 0f 00 d6
     0:lldt 0x14(%ebx)
     5:lldt 0x14(%ebx,%esi,1)
     b:lldt 0x14(%ebx,%esi,4)
    11:lldt 0x14(%ebx,%r13d,4)
    18:lldt 0x14(%ebx,%r9d,4)
    1f:lldt 0x14(%esi)
    24:lldt 0x14(%r13)
    29:lldt 0x14(%r13d)
    2f:lldt 0x14(%r9)
    34:lldt 0x14(%r9d)
    3a:lldt 0x14(%r9d,%r13d,4)
    41:lldt 0x14(%r9,%r13,4)
    47:lldt 0x14(%rbx)
    4b:lldt 0x14(%rbx,%r13,4)
    51:lldt 0x14(%rbx,%r9,4)
    57:lldt 0x14(%rbx,%rsi,1)
    5c:lldt 0x14(%rbx,%rsi,4)
    61:lldt 0x14(%rsi)
    65:lldt 0x2214(%ebx,%esi,2)
    6e:lldt 0x2214(%rbx,%rsi,2)
    76:lldt 0x2814(%ebx)
    7e:lldt 0x432214(%ebx,%esi,4)
    87:lldt 0x432214(%ebx,%r13d,4)
    91:lldt 0x432214(%ebx,%r9d,4)
    9b:lldt 0x432214(%r9d,%r13d,4)
    a5:lldt 0x432214(%r9,%r13,4)
    ae:lldt 0x432214(%rbx,%r13,4)
    b7:lldt 0x432214(%rbx,%r9,4)
    c0:lldt 0x432214(%rbx,%rsi,4)
    c8:lldt 0x69432214(%ebx,%r13d,4)
    d2:lldt 0x69432214(%ebx,%r9d,4)
    dc:lldt 0x69432214(%esi,%ebx,4)
    e5:lldt 0x69432214(%esi,%ebx,8)
    ee:lldt 0x69432214(%r9d,%r13d,4)
    f8:lldt 0x69432214(%r9,%r13,4)
   101:lldt 0x69432214(%rbx,%r13,4)
   10a:lldt 0x69432214(%rbx,%r9,4)
   113:lldt 0x69432214(%rsi,%rbx,4)
   11b:lldt 0x69432214(%rsi,%rbx,8)
   123:lldt 0x792814(%ebx)
   12b:lldt 0x7b792814(%ebx)
   133:lldt %bx
   136:lldt (%ebx)
   13a:lldt (%ebx,%r13d,4)
   140:lldt (%ebx,%r9d,4)
   146:lldt (%esi,%ebx,1)
   14b:lldt (%esi,%ebx,4)
   150:lldt %r13w
   154:lldt (%r9d,%r13d,4)
   15a:lldt (%r9,%r13,4)
   15f:lldt (%r9,%rbx,4)
   164:lldt %r9w
   168:lldt (%rbx,%r13,4)
   16d:lldt (%rbx,%r9,4)
   172:lldt (%rsi,%rbx,1)
   176:lldt (%rsi,%rbx,4)
   17a:lldt %si
#################
TODO: elf/file.cpp:186

445:0
#################
TODO: elf/file.cpp:252

445:0

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



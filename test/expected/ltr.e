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
67 0f 00 5b 14 67 0f 00  5c 33 14 67 0f 00 5c b3
14 67 42 0f 00 5c ab 14  67 42 0f 00 5c 8b 14 67
0f 00 5e 14 41 0f 00 5d  14 67 41 0f 00 5d 14 41
0f 00 59 14 67 41 0f 00  59 14 67 43 0f 00 5c a9
14 43 0f 00 5c a9 14 0f  00 5b 14 42 0f 00 5c ab
14 42 0f 00 5c 8b 14 0f  00 5c 33 14 0f 00 5c b3
14 0f 00 5e 14 67 0f 00  9c 73 14 22 00 00 0f 00
9c 73 14 22 00 00 67 0f  00 9b 14 28 00 00 67 0f
00 9c b3 14 22 43 00 67  42 0f 00 9c ab 14 22 43
00 67 42 0f 00 9c 8b 14  22 43 00 67 43 0f 00 9c
a9 14 22 43 00 43 0f 00  9c a9 14 22 43 00 42 0f
00 9c ab 14 22 43 00 42  0f 00 9c 8b 14 22 43 00
0f 00 9c b3 14 22 43 00  67 42 0f 00 9c ab 14 22
43 69 67 42 0f 00 9c 8b  14 22 43 69 67 0f 00 9c
9e 14 22 43 69 67 0f 00  9c de 14 22 43 69 67 43
0f 00 9c a9 14 22 43 69  43 0f 00 9c a9 14 22 43
69 42 0f 00 9c ab 14 22  43 69 42 0f 00 9c 8b 14
22 43 69 0f 00 9c 9e 14  22 43 69 0f 00 9c de 14
22 43 69 67 0f 00 9b 14  28 79 00 67 0f 00 9b 14
28 79 7b 0f 00 db 67 0f  00 1b 67 42 0f 00 1c ab
67 42 0f 00 1c 8b 67 0f  00 1c 1e 67 0f 00 1c 9e
41 0f 00 dd 67 43 0f 00  1c a9 43 0f 00 1c a9 41
0f 00 1c 99 41 0f 00 d9  42 0f 00 1c ab 42 0f 00
1c 8b 0f 00 1c 1e 0f 00  1c 9e 0f 00 de
     0:ltr 0x14(%ebx)
     5:ltr 0x14(%ebx,%esi,1)
     b:ltr 0x14(%ebx,%esi,4)
    11:ltr 0x14(%ebx,%r13d,4)
    18:ltr 0x14(%ebx,%r9d,4)
    1f:ltr 0x14(%esi)
    24:ltr 0x14(%r13)
    29:ltr 0x14(%r13d)
    2f:ltr 0x14(%r9)
    34:ltr 0x14(%r9d)
    3a:ltr 0x14(%r9d,%r13d,4)
    41:ltr 0x14(%r9,%r13,4)
    47:ltr 0x14(%rbx)
    4b:ltr 0x14(%rbx,%r13,4)
    51:ltr 0x14(%rbx,%r9,4)
    57:ltr 0x14(%rbx,%rsi,1)
    5c:ltr 0x14(%rbx,%rsi,4)
    61:ltr 0x14(%rsi)
    65:ltr 0x2214(%ebx,%esi,2)
    6e:ltr 0x2214(%rbx,%rsi,2)
    76:ltr 0x2814(%ebx)
    7e:ltr 0x432214(%ebx,%esi,4)
    87:ltr 0x432214(%ebx,%r13d,4)
    91:ltr 0x432214(%ebx,%r9d,4)
    9b:ltr 0x432214(%r9d,%r13d,4)
    a5:ltr 0x432214(%r9,%r13,4)
    ae:ltr 0x432214(%rbx,%r13,4)
    b7:ltr 0x432214(%rbx,%r9,4)
    c0:ltr 0x432214(%rbx,%rsi,4)
    c8:ltr 0x69432214(%ebx,%r13d,4)
    d2:ltr 0x69432214(%ebx,%r9d,4)
    dc:ltr 0x69432214(%esi,%ebx,4)
    e5:ltr 0x69432214(%esi,%ebx,8)
    ee:ltr 0x69432214(%r9d,%r13d,4)
    f8:ltr 0x69432214(%r9,%r13,4)
   101:ltr 0x69432214(%rbx,%r13,4)
   10a:ltr 0x69432214(%rbx,%r9,4)
   113:ltr 0x69432214(%rsi,%rbx,4)
   11b:ltr 0x69432214(%rsi,%rbx,8)
   123:ltr 0x792814(%ebx)
   12b:ltr 0x7b792814(%ebx)
   133:ltr %bx
   136:ltr (%ebx)
   13a:ltr (%ebx,%r13d,4)
   140:ltr (%ebx,%r9d,4)
   146:ltr (%esi,%ebx,1)
   14b:ltr (%esi,%ebx,4)
   150:ltr %r13w
   154:ltr (%r9d,%r13d,4)
   15a:ltr (%r9,%r13,4)
   15f:ltr (%r9,%rbx,4)
   164:ltr %r9w
   168:ltr (%rbx,%r13,4)
   16d:ltr (%rbx,%r9,4)
   172:ltr (%rsi,%rbx,1)
   176:ltr (%rsi,%rbx,4)
   17a:ltr %si
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



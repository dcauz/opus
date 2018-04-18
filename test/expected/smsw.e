class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 600
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
size:     385
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   449
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
offset:   449
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
offset:   553
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
offset:   456
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
offset:   552
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
67 0f 01 63 14 67 0f 01  64 33 14 67 0f 01 64 b3
14 67 42 0f 01 64 ab 14  67 42 0f 01 64 8b 14 67
0f 01 66 14 41 0f 01 65  14 67 41 0f 01 65 14 41
0f 01 61 14 67 41 0f 01  61 14 67 43 0f 01 64 a9
14 43 0f 01 64 a9 14 0f  01 63 14 42 0f 01 64 ab
14 42 0f 01 64 8b 14 0f  01 64 33 14 0f 01 64 b3
14 0f 01 66 14 67 0f 01  a4 73 14 22 00 00 0f 01
a4 73 14 22 00 00 67 0f  01 a3 14 28 00 00 67 0f
01 a4 b3 14 22 43 00 67  42 0f 01 a4 ab 14 22 43
00 67 42 0f 01 a4 8b 14  22 43 00 67 43 0f 01 a4
a9 14 22 43 00 43 0f 01  a4 a9 14 22 43 00 42 0f
01 a4 ab 14 22 43 00 42  0f 01 a4 8b 14 22 43 00
0f 01 a4 b3 14 22 43 00  67 42 0f 01 a4 ab 14 22
43 69 67 42 0f 01 a4 8b  14 22 43 69 67 0f 01 a4
9e 14 22 43 69 67 0f 01  a4 de 14 22 43 69 67 43
0f 01 a4 a9 14 22 43 69  43 0f 01 a4 a9 14 22 43
69 42 0f 01 a4 ab 14 22  43 69 42 0f 01 a4 8b 14
22 43 69 0f 01 a4 9e 14  22 43 69 0f 01 a4 de 14
22 43 69 67 0f 01 a3 14  28 79 00 67 0f 01 a3 14
28 79 7b 66 0f 01 e3 67  0f 01 23 67 42 0f 01 24
ab 67 42 0f 01 24 8b 67  0f 01 24 1e 67 0f 01 24
9e 66 41 0f 01 e5 67 43  0f 01 24 a9 43 0f 01 24
a9 41 0f 01 24 99 66 41  0f 01 e1 42 0f 01 24 ab
42 0f 01 24 8b 0f 01 24  1e 0f 01 24 9e 66 0f 01
e6
     0:smsw 0x14(%ebx)
     5:smsw 0x14(%ebx,%esi,1)
     b:smsw 0x14(%ebx,%esi,4)
    11:smsw 0x14(%ebx,%r13d,4)
    18:smsw 0x14(%ebx,%r9d,4)
    1f:smsw 0x14(%esi)
    24:smsw 0x14(%r13)
    29:smsw 0x14(%r13d)
    2f:smsw 0x14(%r9)
    34:smsw 0x14(%r9d)
    3a:smsw 0x14(%r9d,%r13d,4)
    41:smsw 0x14(%r9,%r13,4)
    47:smsw 0x14(%rbx)
    4b:smsw 0x14(%rbx,%r13,4)
    51:smsw 0x14(%rbx,%r9,4)
    57:smsw 0x14(%rbx,%rsi,1)
    5c:smsw 0x14(%rbx,%rsi,4)
    61:smsw 0x14(%rsi)
    65:smsw 0x2214(%ebx,%esi,2)
    6e:smsw 0x2214(%rbx,%rsi,2)
    76:smsw 0x2814(%ebx)
    7e:smsw 0x432214(%ebx,%esi,4)
    87:smsw 0x432214(%ebx,%r13d,4)
    91:smsw 0x432214(%ebx,%r9d,4)
    9b:smsw 0x432214(%r9d,%r13d,4)
    a5:smsw 0x432214(%r9,%r13,4)
    ae:smsw 0x432214(%rbx,%r13,4)
    b7:smsw 0x432214(%rbx,%r9,4)
    c0:smsw 0x432214(%rbx,%rsi,4)
    c8:smsw 0x69432214(%ebx,%r13d,4)
    d2:smsw 0x69432214(%ebx,%r9d,4)
    dc:smsw 0x69432214(%esi,%ebx,4)
    e5:smsw 0x69432214(%esi,%ebx,8)
    ee:smsw 0x69432214(%r9d,%r13d,4)
    f8:smsw 0x69432214(%r9,%r13,4)
   101:smsw 0x69432214(%rbx,%r13,4)
   10a:smsw 0x69432214(%rbx,%r9,4)
   113:smsw 0x69432214(%rsi,%rbx,4)
   11b:smsw 0x69432214(%rsi,%rbx,8)
   123:smsw 0x792814(%ebx)
   12b:smsw 0x7b792814(%ebx)
   133:smsw %bx
   137:smsw (%ebx)
   13b:smsw (%ebx,%r13d,4)
   141:smsw (%ebx,%r9d,4)
   147:smsw (%esi,%ebx,1)
   14c:smsw (%esi,%ebx,4)
   151:smsw %r13w
   156:smsw (%r9d,%r13d,4)
   15c:smsw (%r9,%r13,4)
   161:smsw (%r9,%rbx,4)
   166:smsw %r9w
   16b:smsw (%rbx,%r13,4)
   170:smsw (%rbx,%r9,4)
   175:smsw (%rsi,%rbx,1)
   179:smsw (%rsi,%rbx,4)
   17d:smsw %si
#################
TODO: elf/file.cpp:186

449:0
#################
TODO: elf/file.cpp:252

449:0

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



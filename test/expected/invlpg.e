class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 576
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
size:     367
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   431
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
offset:   431
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
offset:   529
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
offset:   432
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
offset:   528
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
67 0f 01 7b 14 67 0f 01  7c 33 14 67 0f 01 7c b3
14 67 42 0f 01 7c ab 14  67 42 0f 01 7c 8b 14 67
0f 01 7e 14 41 0f 01 7d  14 67 41 0f 01 7d 14 41
0f 01 79 14 67 41 0f 01  79 14 67 43 0f 01 7c a9
14 43 0f 01 7c a9 14 0f  01 7b 14 42 0f 01 7c ab
14 42 0f 01 7c 8b 14 0f  01 7c 33 14 0f 01 7c b3
14 0f 01 7e 14 67 0f 01  bc 73 14 22 00 00 0f 01
bc 73 14 22 00 00 67 0f  01 bb 14 28 00 00 67 0f
01 bc b3 14 22 43 00 67  42 0f 01 bc ab 14 22 43
00 67 42 0f 01 bc 8b 14  22 43 00 67 43 0f 01 bc
a9 14 22 43 00 43 0f 01  bc a9 14 22 43 00 42 0f
01 bc ab 14 22 43 00 42  0f 01 bc 8b 14 22 43 00
0f 01 bc b3 14 22 43 00  67 42 0f 01 bc ab 14 22
43 69 67 42 0f 01 bc 8b  14 22 43 69 67 0f 01 bc
9e 14 22 43 69 67 0f 01  bc de 14 22 43 69 67 43
0f 01 bc a9 14 22 43 69  43 0f 01 bc a9 14 22 43
69 42 0f 01 bc ab 14 22  43 69 42 0f 01 bc 8b 14
22 43 69 0f 01 bc 9e 14  22 43 69 0f 01 bc de 14
22 43 69 67 0f 01 bb 14  28 79 00 67 0f 01 bb 14
28 79 7b 67 0f 01 3b 67  42 0f 01 3c ab 67 42 0f
01 3c 8b 67 0f 01 3c 1e  67 0f 01 3c 9e 67 43 0f
01 3c a9 43 0f 01 3c a9  41 0f 01 3c 99 42 0f 01
3c ab 42 0f 01 3c 8b 0f  01 3c 1e 0f 01 3c 9e
     0:invlpg 0x14(%ebx)
     5:invlpg 0x14(%ebx,%esi,1)
     b:invlpg 0x14(%ebx,%esi,4)
    11:invlpg 0x14(%ebx,%r13d,4)
    18:invlpg 0x14(%ebx,%r9d,4)
    1f:invlpg 0x14(%esi)
    24:invlpg 0x14(%r13)
    29:invlpg 0x14(%r13d)
    2f:invlpg 0x14(%r9)
    34:invlpg 0x14(%r9d)
    3a:invlpg 0x14(%r9d,%r13d,4)
    41:invlpg 0x14(%r9,%r13,4)
    47:invlpg 0x14(%rbx)
    4b:invlpg 0x14(%rbx,%r13,4)
    51:invlpg 0x14(%rbx,%r9,4)
    57:invlpg 0x14(%rbx,%rsi,1)
    5c:invlpg 0x14(%rbx,%rsi,4)
    61:invlpg 0x14(%rsi)
    65:invlpg 0x2214(%ebx,%esi,2)
    6e:invlpg 0x2214(%rbx,%rsi,2)
    76:invlpg 0x2814(%ebx)
    7e:invlpg 0x432214(%ebx,%esi,4)
    87:invlpg 0x432214(%ebx,%r13d,4)
    91:invlpg 0x432214(%ebx,%r9d,4)
    9b:invlpg 0x432214(%r9d,%r13d,4)
    a5:invlpg 0x432214(%r9,%r13,4)
    ae:invlpg 0x432214(%rbx,%r13,4)
    b7:invlpg 0x432214(%rbx,%r9,4)
    c0:invlpg 0x432214(%rbx,%rsi,4)
    c8:invlpg 0x69432214(%ebx,%r13d,4)
    d2:invlpg 0x69432214(%ebx,%r9d,4)
    dc:invlpg 0x69432214(%esi,%ebx,4)
    e5:invlpg 0x69432214(%esi,%ebx,8)
    ee:invlpg 0x69432214(%r9d,%r13d,4)
    f8:invlpg 0x69432214(%r9,%r13,4)
   101:invlpg 0x69432214(%rbx,%r13,4)
   10a:invlpg 0x69432214(%rbx,%r9,4)
   113:invlpg 0x69432214(%rsi,%rbx,4)
   11b:invlpg 0x69432214(%rsi,%rbx,8)
   123:invlpg 0x792814(%ebx)
   12b:invlpg 0x7b792814(%ebx)
   133:invlpg (%ebx)
   137:invlpg (%ebx,%r13d,4)
   13d:invlpg (%ebx,%r9d,4)
   143:invlpg (%esi,%ebx,1)
   148:invlpg (%esi,%ebx,4)
   14d:invlpg (%r9d,%r13d,4)
   153:invlpg (%r9,%r13,4)
   158:invlpg (%r9,%rbx,4)
   15d:invlpg (%rbx,%r13,4)
   162:invlpg (%rbx,%r9,4)
   167:invlpg (%rsi,%rbx,1)
   16b:invlpg (%rsi,%rbx,4)
#################
TODO: elf/file.cpp:186

431:0
#################
TODO: elf/file.cpp:252

431:0

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



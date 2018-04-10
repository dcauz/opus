class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 744
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
size:     531
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   595
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
offset:   595
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
offset:   697
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
offset:   600
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
offset:   696
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
49 0f a5 da 4d 0f a5 d3  4c 0f a5 d2 41 0f a5 da
45 0f a5 d3 44 0f a5 d2  66 41 0f a5 da 66 45 0f
a5 d3 66 44 0f a5 d2 49  0f a4 da 0a 4d 0f a4 d3
0a 4c 0f a4 d2 0a 41 0f  a4 da 0a 45 0f a4 d3 0a
44 0f a4 d2 0a 66 41 0f  a4 da 0a 66 45 0f a4 d3
0a 66 44 0f a4 d2 0a 49  0f a5 1a 4d 0f a5 13 4c
0f a5 12 67 41 0f a5 1a  67 45 0f a5 13 67 44 0f
a5 12 49 0f a4 1a 0a 4d  0f a4 13 0a 4c 0f a4 12
0a 67 41 0f a4 1a 0a 67  45 0f a4 13 0a 67 44 0f
a4 12 0a 49 0f a5 5a 0c  4d 0f a5 53 0c 4c 0f a5
52 0c 67 41 0f a5 5a 0c  67 45 0f a5 53 0c 67 44
0f a5 52 0c 49 0f a4 5a  0c 0a 4d 0f a4 53 0c 0a
4c 0f a4 52 0c 0a 67 41  0f a4 5a 0c 0a 67 45 0f
a4 53 0c 0a 67 44 0f a4  52 0c 0a 4b 0f a5 1c 0a
4f 0f a5 14 4b 4e 0f a5  14 8a 67 43 0f a5 1c 2a
67 47 0f a5 14 6b 67 46  0f a5 14 aa 4b 0f a4 1c
0a 0a 4f 0f a4 14 4b 0a  4e 0f a4 14 8a 0a 67 43
0f a4 1c 2a 0a 67 47 0f  a4 14 6b 0a 67 46 0f a4
14 aa 0a 4b 0f a5 5c 0a  0c 4f 0f a5 54 4b 0c 4e
0f a5 54 8a 0c 67 43 0f  a5 5c 2a 0c 67 47 0f a5
54 6b 0c 67 46 0f a5 54  aa 0c 4b 0f a4 5c 0a 0c
0a 4f 0f a4 54 4b 0c 0a  4e 0f a4 54 8a 0c 0a 67
43 0f a4 5c 2a 0c 0a 67  47 0f a4 54 6b 0c 0a 67
46 0f a4 54 aa 0c 0a 49  0f a5 1c da 4d 0f a5 14
5b 4c 0f a5 14 9a 67 41  0f a5 1c f2 67 45 0f a5
14 73 67 44 0f a5 14 b2  49 0f a4 1c da 0a 4d 0f
a4 14 5b 0a 4c 0f a4 14  b2 0a 67 41 0f a4 1c f2
0a 67 45 0f a4 14 73 0a  67 44 0f a4 14 ba 0a 49
0f a5 5c f2 0c 4d 0f a5  54 73 0c 4c 0f a5 54 b2
0c 67 41 0f a5 5c f2 0c  67 45 0f a5 54 73 0c 67
44 0f a5 54 b2 0c 49 0f  a4 5c da 0c 0a 4d 0f a4
54 5b 0c 0a 4c 0f a4 54  9a 0c 0a 67 41 0f a4 5c
da 0c 0a 67 45 0f a4 54  5b 0c 0a 67 44 0f a4 54
9a 0c 0a
     0:shld %cl,%rbx,%r10
     4:shld %cl,%r10,%r11
     8:shld %cl,%r10,%rdx
     c:shld %cl,%ebx,%r10d
    10:shld %cl,%r10d,%r11d
    14:shld %cl,%r10d,%edx
    18:shld %cl,%bx,%r10w
    1d:shld %cl,%r10w,%r11w
    22:shld %cl,%r10w,%dx
    27:shld $0xa,%rbx,%r10
    2c:shld $0xa,%r10,%r11
    31:shld $0xa,%r10,%rdx
    36:shld $0xa,%ebx,%r10d
    3b:shld $0xa,%r10d,%r11d
    40:shld $0xa,%r10d,%edx
    45:shld $0xa,%bx,%r10w
    4b:shld $0xa,%r10w,%r11w
    51:shld $0xa,%r10w,%dx
    57:shld %cl,%rbx,(%r10)
    5b:shld %cl,%r10,(%r11)
    5f:shld %cl,%r10,(%rdx)
    63:shld %cl,%ebx,(%r10d)
    68:shld %cl,%r10d,(%r11d)
    6d:shld %cl,%r10d,(%edx)
    72:shld $0xa,%rbx,(%r10)
    77:shld $0xa,%r10,(%r11)
    7c:shld $0xa,%r10,(%rdx)
    81:shld $0xa,%ebx,(%r10d)
    87:shld $0xa,%r10d,(%r11d)
    8d:shld $0xa,%r10d,(%edx)
    93:shld %cl,%rbx,0xc(%r10)
    98:shld %cl,%r10,0xc(%r11)
    9d:shld %cl,%r10,0xc(%rdx)
    a2:shld %cl,%ebx,0xc(%r10d)
    a8:shld %cl,%r10d,0xc(%r11d)
    ae:shld %cl,%r10d,0xc(%edx)
    b4:shld $0xa,%rbx,0xc(%r10)
    ba:shld $0xa,%r10,0xc(%r11)
    c0:shld $0xa,%r10,0xc(%rdx)
    c6:shld $0xa,%ebx,0xc(%r10d)
    cd:shld $0xa,%r10d,0xc(%r11d)
    d4:shld $0xa,%r10d,0xc(%edx)
    db:shld %cl,%rbx,(%r10,%r9,1)
    e0:shld %cl,%r10,(%r11,%r9,2)
    e5:shld %cl,%r10,(%rdx,%r9,4)
    ea:shld %cl,%ebx,(%r10d,%r13d,1)
    f0:shld %cl,%r10d,(%r11d,%r13d,2)
    f6:shld %cl,%r10d,(%edx,%r13d,4)
    fc:shld $0xa,%rbx,(%r10,%r9,1)
   102:shld $0xa,%r10,(%r11,%r9,2)
   108:shld $0xa,%r10,(%rdx,%r9,4)
   10e:shld $0xa,%ebx,(%r10d,%r13d,1)
   115:shld $0xa,%r10d,(%r11d,%r13d,2)
   11c:shld $0xa,%r10d,(%edx,%r13d,4)
   123:shld %cl,%rbx,0xc(%r10,%r9,1)
   129:shld %cl,%r10,0xc(%r11,%r9,2)
   12f:shld %cl,%r10,0xc(%rdx,%r9,4)
   135:shld %cl,%ebx,0xc(%r10d,%r13d,1)
   13c:shld %cl,%r10d,0xc(%r11d,%r13d,2)
   143:shld %cl,%r10d,0xc(%edx,%r13d,4)
   14a:shld $0xa,%rbx,0xc(%r10,%r9,1)
   151:shld $0xa,%r10,0xc(%r11,%r9,2)
   158:shld $0xa,%r10,0xc(%rdx,%r9,4)
   15f:shld $0xa,%ebx,0xc(%r10d,%r13d,1)
   167:shld $0xa,%r10d,0xc(%r11d,%r13d,2)
   16f:shld $0xa,%r10d,0xc(%edx,%r13d,4)
   177:shld %cl,%rbx,(%r10,%rbx,8)
   17c:shld %cl,%r10,(%r11,%rbx,2)
   181:shld %cl,%r10,(%rdx,%rbx,4)
   186:shld %cl,%ebx,(%r10d,%esi,8)
   18c:shld %cl,%r10d,(%r11d,%esi,2)
   192:shld %cl,%r10d,(%edx,%esi,4)
   198:shld $0xa,%rbx,(%r10,%rbx,8)
   19e:shld $0xa,%r10,(%r11,%rbx,2)
   1a4:shld $0xa,%r10,(%rdx,%rsi,4)
   1aa:shld $0xa,%ebx,(%r10d,%esi,8)
   1b1:shld $0xa,%r10d,(%r11d,%esi,2)
   1b8:shld $0xa,%r10d,(%edx,%edi,4)
   1bf:shld %cl,%rbx,0xc(%r10,%rsi,8)
   1c5:shld %cl,%r10,0xc(%r11,%rsi,2)
   1cb:shld %cl,%r10,0xc(%rdx,%rsi,4)
   1d1:shld %cl,%ebx,0xc(%r10d,%esi,8)
   1d8:shld %cl,%r10d,0xc(%r11d,%esi,2)
   1df:shld %cl,%r10d,0xc(%edx,%esi,4)
   1e6:shld $0xa,%rbx,0xc(%r10,%rbx,8)
   1ed:shld $0xa,%r10,0xc(%r11,%rbx,2)
   1f4:shld $0xa,%r10,0xc(%rdx,%rbx,4)
   1fb:shld $0xa,%ebx,0xc(%r10d,%ebx,8)
   203:shld $0xa,%r10d,0xc(%r11d,%ebx,2)
   20b:shld $0xa,%r10d,0xc(%edx,%ebx,4)
#################
TODO: elf/file.cpp:186

595:0
#################
TODO: elf/file.cpp:252

595:0

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



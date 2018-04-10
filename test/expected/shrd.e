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
49 0f ad da 4d 0f ad d3  4c 0f ad d2 41 0f ad da
45 0f ad d3 44 0f ad d2  66 41 0f ad da 66 45 0f
ad d3 66 44 0f ad d2 49  0f ac da 0a 4d 0f ac d3
0a 4c 0f ac d2 0a 41 0f  ac da 0a 45 0f ac d3 0a
44 0f ac d2 0a 66 41 0f  ac da 0a 66 45 0f ac d3
0a 66 44 0f ac d2 0a 49  0f ad 1a 4d 0f ad 13 4c
0f ad 12 67 41 0f ad 1a  67 45 0f ad 13 67 44 0f
ad 12 49 0f ac 1a 0a 4d  0f ac 13 0a 4c 0f ac 12
0a 67 41 0f ac 1a 0a 67  45 0f ac 13 0a 67 44 0f
ac 12 0a 49 0f ad 5a 0c  4d 0f ad 53 0c 4c 0f ad
52 0c 67 41 0f ad 5a 0c  67 45 0f ad 53 0c 67 44
0f ad 52 0c 49 0f ac 5a  0c 0a 4d 0f ac 53 0c 0a
4c 0f ac 52 0c 0a 67 41  0f ac 5a 0c 0a 67 45 0f
ac 53 0c 0a 67 44 0f ac  52 0c 0a 4b 0f ad 1c 0a
4f 0f ad 14 4b 4e 0f ad  14 8a 67 43 0f ad 1c 2a
67 47 0f ad 14 6b 67 46  0f ad 14 aa 4b 0f ac 1c
0a 0a 4f 0f ac 14 4b 0a  4e 0f ac 14 8a 0a 67 43
0f ac 1c 2a 0a 67 47 0f  ac 14 6b 0a 67 46 0f ac
14 aa 0a 4b 0f ad 5c 0a  0c 4f 0f ad 54 4b 0c 4e
0f ad 54 8a 0c 67 43 0f  ad 5c 2a 0c 67 47 0f ad
54 6b 0c 67 46 0f ad 54  aa 0c 4b 0f ac 5c 0a 0c
0a 4f 0f ac 54 4b 0c 0a  4e 0f ac 54 8a 0c 0a 67
43 0f ac 5c 2a 0c 0a 67  47 0f ac 54 6b 0c 0a 67
46 0f ac 54 aa 0c 0a 49  0f ad 1c da 4d 0f ad 14
5b 4c 0f ad 14 9a 67 41  0f ad 1c f2 67 45 0f ad
14 73 67 44 0f ad 14 b2  49 0f ac 1c da 0a 4d 0f
ac 14 5b 0a 4c 0f ac 14  b2 0a 67 41 0f ac 1c f2
0a 67 45 0f ac 14 73 0a  67 44 0f ac 14 ba 0a 49
0f ad 5c f2 0c 4d 0f ad  54 73 0c 4c 0f ad 54 b2
0c 67 41 0f ad 5c f2 0c  67 45 0f ad 54 73 0c 67
44 0f ad 54 b2 0c 49 0f  ac 5c da 0c 0a 4d 0f ac
54 5b 0c 0a 4c 0f ac 54  9a 0c 0a 67 41 0f ac 5c
da 0c 0a 67 45 0f ac 54  5b 0c 0a 67 44 0f ac 54
9a 0c 0a
     0:shrd %cl,%rbx,%r10
     4:shrd %cl,%r10,%r11
     8:shrd %cl,%r10,%rdx
     c:shrd %cl,%ebx,%r10d
    10:shrd %cl,%r10d,%r11d
    14:shrd %cl,%r10d,%edx
    18:shrd %cl,%bx,%r10w
    1d:shrd %cl,%r10w,%r11w
    22:shrd %cl,%r10w,%dx
    27:shrd $0xa,%rbx,%r10
    2c:shrd $0xa,%r10,%r11
    31:shrd $0xa,%r10,%rdx
    36:shrd $0xa,%ebx,%r10d
    3b:shrd $0xa,%r10d,%r11d
    40:shrd $0xa,%r10d,%edx
    45:shrd $0xa,%bx,%r10w
    4b:shrd $0xa,%r10w,%r11w
    51:shrd $0xa,%r10w,%dx
    57:shrd %cl,%rbx,(%r10)
    5b:shrd %cl,%r10,(%r11)
    5f:shrd %cl,%r10,(%rdx)
    63:shrd %cl,%ebx,(%r10d)
    68:shrd %cl,%r10d,(%r11d)
    6d:shrd %cl,%r10d,(%edx)
    72:shrd $0xa,%rbx,(%r10)
    77:shrd $0xa,%r10,(%r11)
    7c:shrd $0xa,%r10,(%rdx)
    81:shrd $0xa,%ebx,(%r10d)
    87:shrd $0xa,%r10d,(%r11d)
    8d:shrd $0xa,%r10d,(%edx)
    93:shrd %cl,%rbx,0xc(%r10)
    98:shrd %cl,%r10,0xc(%r11)
    9d:shrd %cl,%r10,0xc(%rdx)
    a2:shrd %cl,%ebx,0xc(%r10d)
    a8:shrd %cl,%r10d,0xc(%r11d)
    ae:shrd %cl,%r10d,0xc(%edx)
    b4:shrd $0xa,%rbx,0xc(%r10)
    ba:shrd $0xa,%r10,0xc(%r11)
    c0:shrd $0xa,%r10,0xc(%rdx)
    c6:shrd $0xa,%ebx,0xc(%r10d)
    cd:shrd $0xa,%r10d,0xc(%r11d)
    d4:shrd $0xa,%r10d,0xc(%edx)
    db:shrd %cl,%rbx,(%r10,%r9,1)
    e0:shrd %cl,%r10,(%r11,%r9,2)
    e5:shrd %cl,%r10,(%rdx,%r9,4)
    ea:shrd %cl,%ebx,(%r10d,%r13d,1)
    f0:shrd %cl,%r10d,(%r11d,%r13d,2)
    f6:shrd %cl,%r10d,(%edx,%r13d,4)
    fc:shrd $0xa,%rbx,(%r10,%r9,1)
   102:shrd $0xa,%r10,(%r11,%r9,2)
   108:shrd $0xa,%r10,(%rdx,%r9,4)
   10e:shrd $0xa,%ebx,(%r10d,%r13d,1)
   115:shrd $0xa,%r10d,(%r11d,%r13d,2)
   11c:shrd $0xa,%r10d,(%edx,%r13d,4)
   123:shrd %cl,%rbx,0xc(%r10,%r9,1)
   129:shrd %cl,%r10,0xc(%r11,%r9,2)
   12f:shrd %cl,%r10,0xc(%rdx,%r9,4)
   135:shrd %cl,%ebx,0xc(%r10d,%r13d,1)
   13c:shrd %cl,%r10d,0xc(%r11d,%r13d,2)
   143:shrd %cl,%r10d,0xc(%edx,%r13d,4)
   14a:shrd $0xa,%rbx,0xc(%r10,%r9,1)
   151:shrd $0xa,%r10,0xc(%r11,%r9,2)
   158:shrd $0xa,%r10,0xc(%rdx,%r9,4)
   15f:shrd $0xa,%ebx,0xc(%r10d,%r13d,1)
   167:shrd $0xa,%r10d,0xc(%r11d,%r13d,2)
   16f:shrd $0xa,%r10d,0xc(%edx,%r13d,4)
   177:shrd %cl,%rbx,(%r10,%rbx,8)
   17c:shrd %cl,%r10,(%r11,%rbx,2)
   181:shrd %cl,%r10,(%rdx,%rbx,4)
   186:shrd %cl,%ebx,(%r10d,%esi,8)
   18c:shrd %cl,%r10d,(%r11d,%esi,2)
   192:shrd %cl,%r10d,(%edx,%esi,4)
   198:shrd $0xa,%rbx,(%r10,%rbx,8)
   19e:shrd $0xa,%r10,(%r11,%rbx,2)
   1a4:shrd $0xa,%r10,(%rdx,%rsi,4)
   1aa:shrd $0xa,%ebx,(%r10d,%esi,8)
   1b1:shrd $0xa,%r10d,(%r11d,%esi,2)
   1b8:shrd $0xa,%r10d,(%edx,%edi,4)
   1bf:shrd %cl,%rbx,0xc(%r10,%rsi,8)
   1c5:shrd %cl,%r10,0xc(%r11,%rsi,2)
   1cb:shrd %cl,%r10,0xc(%rdx,%rsi,4)
   1d1:shrd %cl,%ebx,0xc(%r10d,%esi,8)
   1d8:shrd %cl,%r10d,0xc(%r11d,%esi,2)
   1df:shrd %cl,%r10d,0xc(%edx,%esi,4)
   1e6:shrd $0xa,%rbx,0xc(%r10,%rbx,8)
   1ed:shrd $0xa,%r10,0xc(%r11,%rbx,2)
   1f4:shrd $0xa,%r10,0xc(%rdx,%rbx,4)
   1fb:shrd $0xa,%ebx,0xc(%r10d,%ebx,8)
   203:shrd $0xa,%r10d,0xc(%r11d,%ebx,2)
   20b:shrd $0xa,%r10d,0xc(%edx,%ebx,4)
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



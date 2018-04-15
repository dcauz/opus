class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 648
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
size:     436
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   500
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
offset:   500
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
offset:   601
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
offset:   504
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
offset:   600
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
67 66 0f b2 02 67 66 0f  b2 5a 13 67 66 44 0f b2
0c 91 67 66 44 0f b2 8c  91 22 43 00 00 67 0f b2
02 67 0f b2 42 13 67 0f  b2 04 91 67 0f b2 84 91
22 43 00 00 67 48 0f b2  02 67 48 0f b2 42 13 67
4c 0f b2 2c 91 67 4c 0f  b2 94 91 22 43 00 00 67
66 0f b4 02 67 66 0f b4  5a 13 67 66 44 0f b4 0c
91 67 66 44 0f b4 8c 91  22 43 00 00 67 0f b4 02
67 0f b4 42 13 67 0f b4  04 91 67 0f b4 84 91 22
43 00 00 67 48 0f b4 02  67 48 0f b4 42 13 67 4c
0f b4 2c 91 67 4c 0f b4  94 91 22 43 00 00 67 66
0f b5 02 67 66 0f b5 5a  13 67 66 44 0f b5 0c 91
67 66 44 0f b5 8c 91 22  43 00 00 67 0f b5 02 67
0f b5 42 13 67 0f b5 04  91 67 0f b5 84 91 22 43
00 00 48 0f b5 02 48 0f  b5 42 13 4c 0f b5 2c 91
4c 0f b5 94 91 22 43 00  00 66 0f b2 02 66 0f b2
5a 13 66 44 0f b2 0c 91  66 44 0f b2 8c 91 22 43
00 00 0f b2 02 0f b2 42  13 0f b2 04 91 0f b2 84
91 22 43 00 00 48 0f b2  02 48 0f b2 42 13 4c 0f
b2 2c 91 4c 0f b2 94 91  22 43 00 00 66 0f b4 02
66 0f b4 5a 13 66 44 0f  b4 0c 91 66 44 0f b4 8c
91 22 43 00 00 0f b4 02  0f b4 42 13 0f b4 04 91
0f b4 84 91 22 43 00 00  48 0f b4 02 48 0f b4 42
13 4c 0f b4 2c 91 4c 0f  b4 94 91 22 43 00 00 66
0f b5 02 66 0f b5 5a 13  66 44 0f b5 0c 91 66 44
0f b5 8c 91 22 43 00 00  0f b5 02 0f b5 42 13 43
0f b5 44 95 00 0f b5 84  91 22 43 00 00 48 0f b5
02 48 0f b5 42 13 4c 0f  b5 2c 91 4f 0f b5 94 9a
22 43 00 00
     0:lss (%edx),%ax
     5:lss 0x13(%edx),%bx
     b:lss (%ecx,%edx,4),%r9w
    12:lss 0x4322(%ecx,%edx,4),%r9w
    1d:lss (%edx),%eax
    21:lss 0x13(%edx),%eax
    26:lss (%ecx,%edx,4),%eax
    2b:lss 0x4322(%ecx,%edx,4),%eax
    34:lss (%edx),%rax
    39:lss 0x13(%edx),%rax
    3f:lss (%ecx,%edx,4),%r13
    45:lss 0x4322(%ecx,%edx,4),%r10
    4f:lfs (%edx),%ax
    54:lfs 0x13(%edx),%bx
    5a:lfs (%ecx,%edx,4),%r9w
    61:lfs 0x4322(%ecx,%edx,4),%r9w
    6c:lfs (%edx),%eax
    70:lfs 0x13(%edx),%eax
    75:lfs (%ecx,%edx,4),%eax
    7a:lfs 0x4322(%ecx,%edx,4),%eax
    83:lfs (%edx),%rax
    88:lfs 0x13(%edx),%rax
    8e:lfs (%ecx,%edx,4),%r13
    94:lfs 0x4322(%ecx,%edx,4),%r10
    9e:lgs (%edx),%ax
    a3:lgs 0x13(%edx),%bx
    a9:lgs (%ecx,%edx,4),%r9w
    b0:lgs 0x4322(%ecx,%edx,4),%r9w
    bb:lgs (%edx),%eax
    bf:lgs 0x13(%edx),%eax
    c4:lgs (%ecx,%edx,4),%eax
    c9:lgs 0x4322(%ecx,%edx,4),%eax
    d2:lgs (%rdx),%rax
    d6:lgs 0x13(%rdx),%rax
    db:lgs (%rcx,%rdx,4),%r13
    e0:lgs 0x4322(%rcx,%rdx,4),%r10
    e9:lss (%rdx),%ax
    ed:lss 0x13(%rdx),%bx
    f2:lss (%rcx,%rdx,4),%r9w
    f8:lss 0x4322(%rcx,%rdx,4),%r9w
   102:lss (%rdx),%eax
   105:lss 0x13(%rdx),%eax
   109:lss (%rcx,%rdx,4),%eax
   10d:lss 0x4322(%rcx,%rdx,4),%eax
   115:lss (%rdx),%rax
   119:lss 0x13(%rdx),%rax
   11e:lss (%rcx,%rdx,4),%r13
   123:lss 0x4322(%rcx,%rdx,4),%r10
   12c:lfs (%rdx),%ax
   130:lfs 0x13(%rdx),%bx
   135:lfs (%rcx,%rdx,4),%r9w
   13b:lfs 0x4322(%rcx,%rdx,4),%r9w
   145:lfs (%rdx),%eax
   148:lfs 0x13(%rdx),%eax
   14c:lfs (%rcx,%rdx,4),%eax
   150:lfs 0x4322(%rcx,%rdx,4),%eax
   158:lfs (%rdx),%rax
   15c:lfs 0x13(%rdx),%rax
   161:lfs (%rcx,%rdx,4),%r13
   166:lfs 0x4322(%rcx,%rdx,4),%r10
   16f:lgs (%rdx),%ax
   173:lgs 0x13(%rdx),%bx
   178:lgs (%rcx,%rdx,4),%r9w
   17e:lgs 0x4322(%rcx,%rdx,4),%r9w
   188:lgs (%rdx),%eax
   18b:lgs 0x13(%rdx),%eax
   18f:lgs 0x0(%r13,%r10,4),%eax
   195:lgs 0x4322(%rcx,%rdx,4),%eax
   19d:lgs (%rdx),%rax
   1a1:lgs 0x13(%rdx),%rax
   1a6:lgs (%rcx,%rdx,4),%r13
   1ab:lgs 0x4322(%r10,%r11,4),%r10
#################
TODO: elf/file.cpp:186

500:0
#################
TODO: elf/file.cpp:252

500:0

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



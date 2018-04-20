class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 672
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
size:     459
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   523
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
offset:   523
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
offset:   625
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
offset:   528
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
offset:   624
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 02 d1 0f 02 d9 0f 02  f9 0f 02 f1 44 0f 02 d1
0f 02 ca 0f 02 da 0f 02  fa 0f 02 f2 44 0f 02 da
0f 02 cb 0f 02 d3 0f 02  fb 0f 02 f3 44 0f 02 db
0f 02 cf 0f 02 d7 0f 02  df 0f 02 f7 44 0f 02 df
0f 02 ce 0f 02 d6 0f 02  fe 0f 02 de 44 0f 02 de
41 0f 02 cb 41 0f 02 d3  41 0f 02 f3 41 0f 02 fb
45 0f 02 d3 48 0f 02 d1  48 0f 02 d9 48 0f 02 f9
48 0f 02 f1 4c 0f 02 d1  48 0f 02 ca 48 0f 02 da
48 0f 02 fa 48 0f 02 f2  4c 0f 02 da 48 0f 02 cb
48 0f 02 d3 48 0f 02 fb  48 0f 02 f3 4c 0f 02 db
48 0f 02 cf 48 0f 02 d7  48 0f 02 df 48 0f 02 f7
4c 0f 02 df 48 0f 02 ce  48 0f 02 d6 48 0f 02 fe
48 0f 02 de 4c 0f 02 de  49 0f 02 cb 49 0f 02 d3
49 0f 02 f3 49 0f 02 fb  4d 0f 02 d3 66 0f 02 d1
66 0f 02 d9 66 0f 02 f9  66 0f 02 f1 66 44 0f 02
d1 66 0f 02 ca 66 0f 02  da 66 0f 02 fa 66 0f 02
f2 66 44 0f 02 da 66 0f  02 cb 66 0f 02 d3 66 0f
02 fb 66 0f 02 f3 66 44  0f 02 db 66 0f 02 cf 66
0f 02 d7 66 0f 02 df 66  0f 02 f7 66 44 0f 02 df
66 0f 02 ce 66 0f 02 d6  66 0f 02 fe 66 0f 02 de
66 44 0f 02 de 66 41 0f  02 cb 66 41 0f 02 d3 66
41 0f 02 f3 66 41 0f 02  fb 66 45 0f 02 d3 4d 0f
02 c2 66 45 0f 02 c2 45  0f 02 c2 4d 0f 02 c2 66
45 0f 02 c2 45 0f 02 c2  4d 0f 02 c2 66 45 0f 02
c2 45 0f 02 c2 4c 0f 02  c3 66 44 0f 02 c1 44 0f
02 c2 4c 0f 02 c3 66 44  0f 02 c2 44 0f 02 c7 4c
0f 02 c3 66 44 0f 02 c6  44 0f 02 c4 67 66 0f 02
1c b3 66 0f 02 0c b3 67  0f 02 1c b3 0f 02 14 b3
67 48 0f 02 1c b3 48 0f  02 3c b3
     0:lar %cx,%edx
     3:lar %cx,%ebx
     6:lar %cx,%edi
     9:lar %cx,%esi
     c:lar %cx,%r10d
    10:lar %dx,%ecx
    13:lar %dx,%ebx
    16:lar %dx,%edi
    19:lar %dx,%esi
    1c:lar %dx,%r11d
    20:lar %bx,%ecx
    23:lar %bx,%edx
    26:lar %bx,%edi
    29:lar %bx,%esi
    2c:lar %bx,%r11d
    30:lar %di,%ecx
    33:lar %di,%edx
    36:lar %di,%ebx
    39:lar %di,%esi
    3c:lar %di,%r11d
    40:lar %si,%ecx
    43:lar %si,%edx
    46:lar %si,%edi
    49:lar %si,%ebx
    4c:lar %si,%r11d
    50:lar %r11w,%ecx
    54:lar %r11w,%edx
    58:lar %r11w,%esi
    5c:lar %r11w,%edi
    60:lar %r11w,%r10d
    64:lar %cx,%rdx
    68:lar %cx,%rbx
    6c:lar %cx,%rdi
    70:lar %cx,%rsi
    74:lar %cx,%r10
    78:lar %dx,%rcx
    7c:lar %dx,%rbx
    80:lar %dx,%rdi
    84:lar %dx,%rsi
    88:lar %dx,%r11
    8c:lar %bx,%rcx
    90:lar %bx,%rdx
    94:lar %bx,%rdi
    98:lar %bx,%rsi
    9c:lar %bx,%r11
    a0:lar %di,%rcx
    a4:lar %di,%rdx
    a8:lar %di,%rbx
    ac:lar %di,%rsi
    b0:lar %di,%r11
    b4:lar %si,%rcx
    b8:lar %si,%rdx
    bc:lar %si,%rdi
    c0:lar %si,%rbx
    c4:lar %si,%r11
    c8:lar %r11w,%rcx
    cc:lar %r11w,%rdx
    d0:lar %r11w,%rsi
    d4:lar %r11w,%rdi
    d8:lar %r11w,%r10
    dc:lar %cx,%dx
    e0:lar %cx,%bx
    e4:lar %cx,%di
    e8:lar %cx,%si
    ec:lar %cx,%r10w
    f1:lar %dx,%cx
    f5:lar %dx,%bx
    f9:lar %dx,%di
    fd:lar %dx,%si
   101:lar %dx,%r11w
   106:lar %bx,%cx
   10a:lar %bx,%dx
   10e:lar %bx,%di
   112:lar %bx,%si
   116:lar %bx,%r11w
   11b:lar %di,%cx
   11f:lar %di,%dx
   123:lar %di,%bx
   127:lar %di,%si
   12b:lar %di,%r11w
   130:lar %si,%cx
   134:lar %si,%dx
   138:lar %si,%di
   13c:lar %si,%bx
   140:lar %si,%r11w
   145:lar %r11w,%cx
   14a:lar %r11w,%dx
   14f:lar %r11w,%si
   154:lar %r11w,%di
   159:lar %r11w,%r10w
   15e:lar %r10w,%r8
   162:lar %r10w,%r8w
   167:lar %r10w,%r8d
   16b:lar %r10w,%r8
   16f:lar %r10w,%r8w
   174:lar %r10w,%r8d
   178:lar %r10w,%r8
   17c:lar %r10w,%r8w
   181:lar %r10w,%r8d
   185:lar %bx,%r8
   189:lar %cx,%r8w
   18e:lar %dx,%r8d
   192:lar %bx,%r8
   196:lar %dx,%r8w
   19b:lar %di,%r8d
   19f:lar %bx,%r8
   1a3:lar %si,%r8w
   1a8:lar %sp,%r8d
   1ac:lar (%ebx,%esi,4),%bx
   1b2:lar (%rbx,%rsi,4),%cx
   1b7:lar (%ebx,%esi,4),%ebx
   1bc:lar (%rbx,%rsi,4),%edx
   1c0:lar (%ebx,%esi,4),%rbx
   1c6:lar (%rbx,%rsi,4),%rdi
#################
TODO: elf/file.cpp:186

523:0
#################
TODO: elf/file.cpp:252

523:0

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



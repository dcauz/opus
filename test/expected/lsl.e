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
0f 03 d1 0f 03 d9 0f 03  f9 0f 03 f1 44 0f 03 d1
0f 03 ca 0f 03 da 0f 03  fa 0f 03 f2 44 0f 03 da
0f 03 cb 0f 03 d3 0f 03  fb 0f 03 f3 44 0f 03 db
0f 03 cf 0f 03 d7 0f 03  df 0f 03 f7 44 0f 03 df
0f 03 ce 0f 03 d6 0f 03  fe 0f 03 de 44 0f 03 de
41 0f 03 cb 41 0f 03 d3  41 0f 03 f3 41 0f 03 fb
45 0f 03 d3 48 0f 03 d1  48 0f 03 d9 48 0f 03 f9
48 0f 03 f1 4c 0f 03 d1  48 0f 03 ca 48 0f 03 da
48 0f 03 fa 48 0f 03 f2  4c 0f 03 da 48 0f 03 cb
48 0f 03 d3 48 0f 03 fb  48 0f 03 f3 4c 0f 03 db
48 0f 03 cf 48 0f 03 d7  48 0f 03 df 48 0f 03 f7
4c 0f 03 df 48 0f 03 ce  48 0f 03 d6 48 0f 03 fe
48 0f 03 de 4c 0f 03 de  49 0f 03 cb 49 0f 03 d3
49 0f 03 f3 49 0f 03 fb  4d 0f 03 d3 66 0f 03 d1
66 0f 03 d9 66 0f 03 f9  66 0f 03 f1 66 44 0f 03
d1 66 0f 03 ca 66 0f 03  da 66 0f 03 fa 66 0f 03
f2 66 44 0f 03 da 66 0f  03 cb 66 0f 03 d3 66 0f
03 fb 66 0f 03 f3 66 44  0f 03 db 66 0f 03 cf 66
0f 03 d7 66 0f 03 df 66  0f 03 f7 66 44 0f 03 df
66 0f 03 ce 66 0f 03 d6  66 0f 03 fe 66 0f 03 de
66 44 0f 03 de 66 41 0f  03 cb 66 41 0f 03 d3 66
41 0f 03 f3 66 41 0f 03  fb 66 45 0f 03 d3 4d 0f
03 c2 66 45 0f 03 c2 45  0f 03 c2 4d 0f 03 c2 66
45 0f 03 c2 45 0f 03 c2  4d 0f 03 c2 66 45 0f 03
c2 45 0f 03 c2 4c 0f 03  c3 66 44 0f 03 c1 44 0f
03 c2 4c 0f 03 c3 66 44  0f 03 c2 44 0f 03 c7 4c
0f 03 c3 66 44 0f 03 c6  44 0f 03 c4 67 66 0f 03
1c b3 66 0f 03 0c b3 67  0f 03 1c b3 0f 03 14 b3
67 48 0f 03 1c b3 48 0f  03 3c b3
     0:lsl %cx,%edx
     3:lsl %cx,%ebx
     6:lsl %cx,%edi
     9:lsl %cx,%esi
     c:lsl %cx,%r10d
    10:lsl %dx,%ecx
    13:lsl %dx,%ebx
    16:lsl %dx,%edi
    19:lsl %dx,%esi
    1c:lsl %dx,%r11d
    20:lsl %bx,%ecx
    23:lsl %bx,%edx
    26:lsl %bx,%edi
    29:lsl %bx,%esi
    2c:lsl %bx,%r11d
    30:lsl %di,%ecx
    33:lsl %di,%edx
    36:lsl %di,%ebx
    39:lsl %di,%esi
    3c:lsl %di,%r11d
    40:lsl %si,%ecx
    43:lsl %si,%edx
    46:lsl %si,%edi
    49:lsl %si,%ebx
    4c:lsl %si,%r11d
    50:lsl %r11w,%ecx
    54:lsl %r11w,%edx
    58:lsl %r11w,%esi
    5c:lsl %r11w,%edi
    60:lsl %r11w,%r10d
    64:lsl %cx,%rdx
    68:lsl %cx,%rbx
    6c:lsl %cx,%rdi
    70:lsl %cx,%rsi
    74:lsl %cx,%r10
    78:lsl %dx,%rcx
    7c:lsl %dx,%rbx
    80:lsl %dx,%rdi
    84:lsl %dx,%rsi
    88:lsl %dx,%r11
    8c:lsl %bx,%rcx
    90:lsl %bx,%rdx
    94:lsl %bx,%rdi
    98:lsl %bx,%rsi
    9c:lsl %bx,%r11
    a0:lsl %di,%rcx
    a4:lsl %di,%rdx
    a8:lsl %di,%rbx
    ac:lsl %di,%rsi
    b0:lsl %di,%r11
    b4:lsl %si,%rcx
    b8:lsl %si,%rdx
    bc:lsl %si,%rdi
    c0:lsl %si,%rbx
    c4:lsl %si,%r11
    c8:lsl %r11w,%rcx
    cc:lsl %r11w,%rdx
    d0:lsl %r11w,%rsi
    d4:lsl %r11w,%rdi
    d8:lsl %r11w,%r10
    dc:lsl %cx,%dx
    e0:lsl %cx,%bx
    e4:lsl %cx,%di
    e8:lsl %cx,%si
    ec:lsl %cx,%r10w
    f1:lsl %dx,%cx
    f5:lsl %dx,%bx
    f9:lsl %dx,%di
    fd:lsl %dx,%si
   101:lsl %dx,%r11w
   106:lsl %bx,%cx
   10a:lsl %bx,%dx
   10e:lsl %bx,%di
   112:lsl %bx,%si
   116:lsl %bx,%r11w
   11b:lsl %di,%cx
   11f:lsl %di,%dx
   123:lsl %di,%bx
   127:lsl %di,%si
   12b:lsl %di,%r11w
   130:lsl %si,%cx
   134:lsl %si,%dx
   138:lsl %si,%di
   13c:lsl %si,%bx
   140:lsl %si,%r11w
   145:lsl %r11w,%cx
   14a:lsl %r11w,%dx
   14f:lsl %r11w,%si
   154:lsl %r11w,%di
   159:lsl %r11w,%r10w
   15e:lsl %r10w,%r8
   162:lsl %r10w,%r8w
   167:lsl %r10w,%r8d
   16b:lsl %r10w,%r8
   16f:lsl %r10w,%r8w
   174:lsl %r10w,%r8d
   178:lsl %r10w,%r8
   17c:lsl %r10w,%r8w
   181:lsl %r10w,%r8d
   185:lsl %bx,%r8
   189:lsl %cx,%r8w
   18e:lsl %dx,%r8d
   192:lsl %bx,%r8
   196:lsl %dx,%r8w
   19b:lsl %di,%r8d
   19f:lsl %bx,%r8
   1a3:lsl %si,%r8w
   1a8:lsl %sp,%r8d
   1ac:lsl (%ebx,%esi,4),%bx
   1b2:lsl (%rbx,%rsi,4),%cx
   1b7:lsl (%ebx,%esi,4),%ebx
   1bc:lsl (%rbx,%rsi,4),%edx
   1c0:lsl (%ebx,%esi,4),%rbx
   1c6:lsl (%rbx,%rsi,4),%rdi
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



class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 512
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
size:     298
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   362
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
offset:   362
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
offset:   465
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
offset:   368
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
offset:   464
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 97 c0 0f 93 c4 0f 92  c3 0f 96 c7 0f 92 c1 0f
94 c5 40 0f 9f c6 40 0f  9d c7 41 0f 9c c1 41 0f
9e c1 41 0f 96 c1 41 0f  92 c1 41 0f 93 c1 41 0f
97 c1 41 0f 93 c1 41 0f  95 c1 41 0f 9e c1 41 0f
9c c1 41 0f 9d c1 41 0f  9f c1 41 0f 91 c1 41 0f
9b c1 41 0f 99 c2 41 0f  95 c3 41 0f 90 c4 41 0f
9a c5 41 0f 9a c6 41 0f  9b c7 40 0f 98 c4 40 0f
94 c5 67 0f 97 03 67 0f  93 01 67 0f 92 04 24 67
0f 96 04 24 67 0f 92 04  24 67 0f 94 04 24 67 0f
9f 04 24 67 0f 9d 04 1c  67 0f 9c 44 24 43 67 0f
9e 84 24 22 43 00 00 67  0f 96 84 24 32 67 00 00
67 41 0f 92 84 92 32 67  00 00 67 41 0f 93 01 67
43 0f 97 04 d1 67 42 0f  93 44 d4 11 67 41 0f 95
81 11 11 00 00 0f 9e 44  24 11 0f 9c 04 54 0f 9d
84 54 12 12 00 00 43 0f  9f 44 23 11 41 0f 91 84
8b 21 11 00 00 67 0f 9b  04 24 67 0f 99 04 24 67
0f 95 04 24 67 0f 90 04  24 67 0f 9a 04 24 67 0f
9a 04 24 67 0f 9b 04 24  67 0f 98 04 24 67 0f 94
04 24 0f 94 04 25 21 21  21 01
     0:seta %al
     3:setae %ah
     6:setb %bl
     9:setbe %bh
     c:setb %cl
     f:sete %ch
    12:setg %sil
    16:setge %dil
    1a:setl %r9b
    1e:setle %r9b
    22:setbe %r9b
    26:setb %r9b
    2a:setae %r9b
    2e:seta %r9b
    32:setae %r9b
    36:setne %r9b
    3a:setle %r9b
    3e:setl %r9b
    42:setge %r9b
    46:setg %r9b
    4a:setno %r9b
    4e:setnp %r9b
    52:setns %r10b
    56:setne %r11b
    5a:seto %r12b
    5e:setp %r13b
    62:setp %r14b
    66:setnp %r15b
    6a:sets %spl
    6e:sete %bpl
    72:seta (%ebx)
    76:setae (%ecx)
    7a:setb (%esp)
    7f:setbe (%esp)
    84:setb (%esp)
    89:sete (%esp)
    8e:setg (%esp)
    93:setge (%esp,%ebx,1)
    98:setl 0x43(%esp)
    9e:setle 0x4322(%esp)
    a7:setbe 0x6732(%esp)
    b0:setb 0x6732(%r10d,%edx,4)
    ba:setae (%r9d)
    bf:seta (%r9d,%r10d,8)
    c5:setae 0x11(%esp,%r10d,8)
    cc:setne 0x1111(%r9d)
    d5:setle 0x11(%rsp)
    da:setl (%rsp,%rdx,2)
    de:setge 0x1212(%rsp,%rdx,2)
    e6:setg 0x11(%r11,%r12,1)
    ec:setno 0x1121(%r11,%rcx,4)
    f5:setnp (%esp)
    fa:setns (%esp)
    ff:setne (%esp)
   104:seto (%esp)
   109:setp (%esp)
   10e:setp (%esp)
   113:setnp (%esp)
   118:sets (%esp)
   11d:sete (%esp)
   122:sete 0x1212121
#################
TODO: elf/file.cpp:186

362:0
#################
TODO: elf/file.cpp:252

362:0

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



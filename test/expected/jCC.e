class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 1224
proc spec flags:       0
elf hdr size (bytes):  64
prog hdr tbl ent size: 0
prog hdr tbl ent cnt:  0
sect hdr tbl ent size: 64
sect hdr tbl ent cnt:  8
sect hdr str tbl ndx   5
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
size:     249
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .rela.text
type:     Relocation entries with addends
flags:    Contains SHT index
addr:     0
offset:   448
size:     720
link:     6
info:     1
alignment:8
entrySize:24

SECTION: 3
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   313
size:     0
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 4
name:     .bss
type:     Program space with no data (bss)
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   313
size:     0
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 5
name:     .shstrtab
type:     String table
flags:    
addr:     0
offset:   1168
size:     49
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 6
name:     .symtab
type:     Symbol table
flags:    
addr:     0
offset:   320
size:     120
link:     7
info:     5
alignment:8
entrySize:24

SECTION: 7
name:     .strtab
type:     String table
flags:    
addr:     0
offset:   440
size:     6
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 80 00 00 00 00 0f 81  00 00 00 00 0f 82 00 00
00 00 0f 82 00 00 00 00  0f 82 00 00 00 00 0f 83
00 00 00 00 0f 83 00 00  00 00 0f 83 00 00 00 00
0f 84 00 00 00 00 0f 84  00 00 00 00 66 01 cb 0f
85 00 00 00 00 0f 85 00  00 00 00 0f 86 00 00 00
00 0f 86 00 00 00 00 0f  87 00 00 00 00 0f 87 00
00 00 00 0f 88 00 00 00  00 0f 89 00 00 00 00 0f
8a 00 00 00 00 0f 8a 00  00 00 00 0f 8b 00 00 00
00 0f 8b 00 00 00 00 0f  8c 00 00 00 00 0f 8c 00
00 00 00 0f 8d 00 00 00  00 0f 8d 00 00 00 00 0f
8e 00 00 00 00 0f 8e 00  00 00 00 0f 8f 00 00 00
00 0f 8f 00 00 00 00 90  67 e3 fc e3 fa 73 f8 77
f6 76 f4 72 f2 72 f0 74  ee 7d ec 7f ea 7e e8 7c
e6 72 e4 76 e2 77 e0 73  de 73 dc 75 da 7c d8 7e
d6 7f d4 7d d2 7b d0 79  ce 75 cc 70 ca 7a c8 7a
c6 7b c4 e3 c2 78 c0 74  be
     0:jo 0x0
     6:jno 0x0
     c:jb 0x0
    12:jb 0x0
    18:jb 0x0
    1e:jae 0x0
    24:jae 0x0
    2a:jae 0x0
    30:je 0x0
    36:je 0x0
    3c:add %cx,%bx
    3f:jne 0x0
    45:jne 0x0
    4b:jbe 0x0
    51:jbe 0x0
    57:ja 0x0
    5d:ja 0x0
    63:js 0x0
    69:jns 0x0
    6f:jp 0x0
    75:jp 0x0
    7b:jnp 0x0
    81:jnp 0x0
    87:jl 0x0
    8d:jl 0x0
    93:jge 0x0
    99:jge 0x0
    9f:jle 0x0
    a5:jle 0x0
    ab:jg 0x0
    b1:jg 0x0
    b7:nop
    b8:jecxz -0x4
    bb:jrcxz -0x6
    bd:jnb -0x8
    bf:jnbe -0xa
    c1:jbe -0xc
    c3:jb -0xe
    c5:jb -0x10
    c7:je -0x12
    c9:jnl -0x14
    cb:jg -0x16
    cd:jle -0x18
    cf:jl -0x1a
    d1:jb -0x1c
    d3:jbe -0x1e
    d5:jnbe -0x20
    d7:jnb -0x22
    d9:jnb -0x24
    db:jne -0x26
    dd:jl -0x28
    df:jle -0x2a
    e1:jg -0x2c
    e3:jnl -0x2e
    e5:jnp -0x30
    e7:jns -0x32
    e9:jne -0x34
    eb:jo -0x36
    ed:jp -0x38
    ef:jp -0x3a
    f1:jnp -0x3c
    f3:jrcxz -0x3e
    f5:js -0x40
    f7:je -0x42
#################
TODO: elf/file.cpp:224

448:720
02 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
fc 00 00 00 00 00 00 00  08 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  fd 00 00 00 00 00 00 00
0e 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
fe 00 00 00 00 00 00 00  14 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  ff 00 00 00 00 00 00 00
1a 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
00 01 00 00 00 00 00 00  20 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  01 01 00 00 00 00 00 00
26 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
02 01 00 00 00 00 00 00  2c 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  03 01 00 00 00 00 00 00
32 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
04 01 00 00 00 00 00 00  38 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  05 01 00 00 00 00 00 00
41 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
06 01 00 00 00 00 00 00  47 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  07 01 00 00 00 00 00 00
4d 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
08 01 00 00 00 00 00 00  53 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  09 01 00 00 00 00 00 00
59 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
0a 01 00 00 00 00 00 00  5f 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  0b 01 00 00 00 00 00 00
65 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
0c 01 00 00 00 00 00 00  6b 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  0d 01 00 00 00 00 00 00
71 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
0e 01 00 00 00 00 00 00  77 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  0f 01 00 00 00 00 00 00
7d 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
10 01 00 00 00 00 00 00  83 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  11 01 00 00 00 00 00 00
89 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
10 22 00 00 00 00 00 00  8f 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  10 22 00 00 00 00 00 00
95 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
41 23 00 00 00 00 00 00  9b 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  41 23 00 00 00 00 00 00
a1 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
41 23 00 00 00 00 00 00  a7 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  41 23 00 00 00 00 00 00
ad 00 00 00 00 00 00 00  02 00 00 00 00 00 00 00
41 23 00 00 00 00 00 00  b3 00 00 00 00 00 00 00
02 00 00 00 00 00 00 00  41 23 00 00 00 00 00 00
00
#################
TODO: elf/file.cpp:186

313:0
#################
TODO: elf/file.cpp:252

313:0

.symtab
.strtab
.shstrtab
.rela.text
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
section:3
value:0
size:0

name:
bind:local
type:assoc-with-section
visibility:default
section:4
value:0
size:0

name:loop
bind:local
type:unspecified
visibility:default
section:1
value:183
size:0


loop

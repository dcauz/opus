class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 784
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
size:     572
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   636
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
offset:   636
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
offset:   737
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
offset:   640
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
offset:   736
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
26 67 88 03 26 66 89 03  26 89 03 26 48 89 03 26
67 8a 03 26 66 8b 03 26  8b 03 26 48 8b 03 26 88
04 25 64 00 00 00 26 66  89 04 25 64 00 00 00 26
89 04 25 64 00 00 00 26  48 89 04 25 64 00 00 00
26 8a 04 25 64 00 00 00  26 66 8b 04 25 90 01 00
00 26 8b 04 25 2c 01 00  00 26 48 8b 04 25 c8 00
00 00 64 67 88 03 64 66  89 03 64 89 03 64 48 89
03 64 67 8a 03 64 66 8b  03 64 8b 03 64 48 8b 03
64 88 04 25 64 00 00 00  64 66 89 04 25 64 00 00
00 64 89 04 25 64 00 00  00 64 48 89 04 25 64 00
00 00 64 8a 04 25 64 00  00 00 64 66 8b 04 25 90
01 00 00 64 8b 04 25 2c  01 00 00 64 48 8b 04 25
c8 00 00 00 65 67 88 03  65 66 89 03 65 89 03 65
48 89 03 65 67 8a 03 65  66 8b 03 65 8b 03 65 48
8b 03 65 88 04 25 64 00  00 00 65 66 89 04 25 64
00 00 00 65 89 04 25 64  00 00 00 65 48 89 04 25
64 00 00 00 65 8a 04 25  64 00 00 00 65 66 8b 04
25 90 01 00 00 65 8b 04  25 2c 01 00 00 65 48 8b
04 25 c8 00 00 00 36 67  88 03 36 66 89 03 36 89
03 36 48 89 03 36 67 8a  03 36 66 8b 03 36 8b 03
36 48 8b 03 36 88 04 25  64 00 00 00 36 66 89 04
25 64 00 00 00 36 89 04  25 64 00 00 00 36 48 89
04 25 64 00 00 00 36 8a  04 25 64 00 00 00 36 66
8b 04 25 90 01 00 00 36  8b 04 25 2c 01 00 00 36
48 8b 04 25 c8 00 00 00  2e 67 88 03 2e 66 89 03
2e 89 03 2e 48 89 03 2e  67 8a 03 2e 66 8b 03 2e
8b 03 2e 48 8b 03 2e 88  04 25 64 00 00 00 2e 66
89 04 25 64 00 00 00 2e  89 04 25 64 00 00 00 2e
48 89 04 25 64 00 00 00  2e 8a 04 25 64 00 00 00
2e 66 8b 04 25 90 01 00  00 2e 8b 04 25 2c 01 00
00 2e 48 8b 04 25 c8 00  00 00 67 88 03 66 89 03
89 03 48 89 03 67 8a 03  66 8b 03 8b 03 48 8b 03
88 04 25 64 00 00 00 66  89 04 25 64 00 00 00 89
04 25 64 00 00 00 48 89  04 25 64 00 00 00 8a 04
25 64 00 00 00 66 8b 04  25 90 01 00 00 8b 04 25
2c 01 00 00 48 8b 04 25  c8 00 00 00
     0:mov %al,%es:(%ebx)
     4:mov %ax,%es:(%rbx)
     8:mov %eax,%es:(%rbx)
     b:mov %rax,%es:(%rbx)
     f:mov %es:(%ebx),%al
    13:mov %es:(%rbx),%ax
    17:mov %es:(%rbx),%eax
    1a:mov %es:(%rbx),%rax
    1e:mov %al,%es:0x64
    26:mov %ax,%es:0x64
    2f:mov %eax,%es:0x64
    37:mov %rax,%es:0x64
    40:mov %es:0x64,%al
    48:mov %es:0x190,%ax
    51:mov %es:0x12c,%eax
    59:mov %es:0xc8,%rax
    62:mov %al,%fs:(%ebx)
    66:mov %ax,%fs:(%rbx)
    6a:mov %eax,%fs:(%rbx)
    6d:mov %rax,%fs:(%rbx)
    71:mov %fs:(%ebx),%al
    75:mov %fs:(%rbx),%ax
    79:mov %fs:(%rbx),%eax
    7c:mov %fs:(%rbx),%rax
    80:mov %al,%fs:0x64
    88:mov %ax,%fs:0x64
    91:mov %eax,%fs:0x64
    99:mov %rax,%fs:0x64
    a2:mov %fs:0x64,%al
    aa:mov %fs:0x190,%ax
    b3:mov %fs:0x12c,%eax
    bb:mov %fs:0xc8,%rax
    c4:mov %al,%gs:(%ebx)
    c8:mov %ax,%gs:(%rbx)
    cc:mov %eax,%gs:(%rbx)
    cf:mov %rax,%gs:(%rbx)
    d3:mov %gs:(%ebx),%al
    d7:mov %gs:(%rbx),%ax
    db:mov %gs:(%rbx),%eax
    de:mov %gs:(%rbx),%rax
    e2:mov %al,%gs:0x64
    ea:mov %ax,%gs:0x64
    f3:mov %eax,%gs:0x64
    fb:mov %rax,%gs:0x64
   104:mov %gs:0x64,%al
   10c:mov %gs:0x190,%ax
   115:mov %gs:0x12c,%eax
   11d:mov %gs:0xc8,%rax
   126:mov %al,%ss:(%ebx)
   12a:mov %ax,%ss:(%rbx)
   12e:mov %eax,%ss:(%rbx)
   131:mov %rax,%ss:(%rbx)
   135:mov %ss:(%ebx),%al
   139:mov %ss:(%rbx),%ax
   13d:mov %ss:(%rbx),%eax
   140:mov %ss:(%rbx),%rax
   144:mov %al,%ss:0x64
   14c:mov %ax,%ss:0x64
   155:mov %eax,%ss:0x64
   15d:mov %rax,%ss:0x64
   166:mov %ss:0x64,%al
   16e:mov %ss:0x190,%ax
   177:mov %ss:0x12c,%eax
   17f:mov %ss:0xc8,%rax
   188:mov %al,%cs:(%ebx)
   18c:mov %ax,%cs:(%rbx)
   190:mov %eax,%cs:(%rbx)
   193:mov %rax,%cs:(%rbx)
   197:mov %cs:(%ebx),%al
   19b:mov %cs:(%rbx),%ax
   19f:mov %cs:(%rbx),%eax
   1a2:mov %cs:(%rbx),%rax
   1a6:mov %al,%cs:0x64
   1ae:mov %ax,%cs:0x64
   1b7:mov %eax,%cs:0x64
   1bf:mov %rax,%cs:0x64
   1c8:mov %cs:0x64,%al
   1d0:mov %cs:0x190,%ax
   1d9:mov %cs:0x12c,%eax
   1e1:mov %cs:0xc8,%rax
   1ea:mov %al,(%ebx)
   1ed:mov %ax,(%rbx)
   1f0:mov %eax,(%rbx)
   1f2:mov %rax,(%rbx)
   1f5:mov (%ebx),%al
   1f8:mov (%rbx),%ax
   1fb:mov (%rbx),%eax
   1fd:mov (%rbx),%rax
   200:mov %al,0x64
   207:mov %ax,0x64
   20f:mov %eax,0x64
   216:mov %rax,0x64
   21e:mov 0x64,%al
   225:mov 0x190,%ax
   22d:mov 0x12c,%eax
   234:mov 0xc8,%rax
#################
TODO: elf/file.cpp:186

636:0
#################
TODO: elf/file.cpp:252

636:0

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



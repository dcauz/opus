class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 320
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
size:     112
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   176
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
offset:   176
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
offset:   273
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
offset:   176
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
offset:   272
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
41 df 0a 41 db 0a 41 dd  0a 41 dd 0a df 0a db 0a
dd 0a dd 0a 67 41 df 0a  67 41 db 0a 67 41 dd 0a
67 41 dd 0a 67 df 0a 67  db 0a 67 dd 0a 67 dd 0a
43 df 0c 9a 43 db 0c 9a  43 dd 0c 9a 43 dd 0c 9a
df 0c 9a db 0c 9a dd 0c  9a dd 0c 9a 67 43 df 0c
a2 67 43 db 0c a2 67 43  dd 0c a2 67 43 dd 0c a2
67 df 0c 1a 67 db 0c 5a  67 dd 0c 9a 67 dd 0c da
00
     0:fisttp (%r10)
     3:fisttpl (%r10)
     6:fisttpll (%r10)
     9:fisttpll (%r10)
     c:fisttp (%rdx)
     e:fisttpl (%rdx)
    10:fisttpll (%rdx)
    12:fisttpll (%rdx)
    14:fisttp (%r10d)
    18:fisttpl (%r10d)
    1c:fisttpll (%r10d)
    20:fisttpll (%r10d)
    24:fisttp (%edx)
    27:fisttpl (%edx)
    2a:fisttpll (%edx)
    2d:fisttpll (%edx)
    30:fisttp (%r10,%r11,4)
    34:fisttpl (%r10,%r11,4)
    38:fisttpll (%r10,%r11,4)
    3c:fisttpll (%r10,%r11,4)
    40:fisttp (%rdx,%rbx,4)
    43:fisttpl (%rdx,%rbx,4)
    46:fisttpll (%rdx,%rbx,4)
    49:fisttpll (%rdx,%rbx,4)
    4c:fisttp (%r10d,%r12d,4)
    51:fisttpl (%r10d,%r12d,4)
    56:fisttpll (%r10d,%r12d,4)
    5b:fisttpll (%r10d,%r12d,4)
    60:fisttp (%edx,%ebx,1)
    64:fisttpl (%edx,%ebx,2)
    68:fisttpll (%edx,%ebx,4)
    6c:fisttpll (%edx,%ebx,8)
#################
TODO: elf/file.cpp:186

176:0
#################
TODO: elf/file.cpp:252

176:0

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



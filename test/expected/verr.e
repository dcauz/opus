class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 296
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
size:     84
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   148
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
offset:   148
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
offset:   249
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
offset:   152
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
offset:   248
size:     1
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
0f 00 e3 0f 00 ea 67 0f  00 22 67 0f 00 2a 67 0f
00 62 52 67 0f 00 6a 52  0f 00 22 0f 00 2a 0f 00
62 52 0f 00 6a 52 67 0f  00 24 3a 67 0f 00 2c f2
67 0f 00 64 f2 52 67 0f  00 6c f2 52 0f 00 24 f2
42 0f 00 2c 92 42 0f 00  64 92 52 42 0f 00 ac 92
12 52 00 00
     0:verr %bx
     3:verw %dx
     6:verr (%edx)
     a:verw (%edx)
     e:verr 0x52(%edx)
    13:verw 0x52(%edx)
    18:verr (%rdx)
    1b:verw (%rdx)
    1e:verr 0x52(%rdx)
    22:verw 0x52(%rdx)
    26:verr (%edx,%edi,1)
    2b:verw (%edx,%esi,8)
    30:verr 0x52(%edx,%esi,8)
    36:verw 0x52(%edx,%esi,8)
    3c:verr (%rdx,%rsi,8)
    40:verw (%rdx,%r10,4)
    45:verr 0x52(%rdx,%r10,4)
    4b:verw 0x5212(%rdx,%r10,4)
#################
TODO: elf/file.cpp:186

148:0
#################
TODO: elf/file.cpp:252

148:0

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



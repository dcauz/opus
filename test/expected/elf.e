class=64
data=2's complement, little endian
ABI=SYSV
type     =Relocatable
machine  =AMD x86-64 architecture
version  =1
entry pt virt addr:    0
prog hdr tbl file off: 0
sect hdr tbl file off: 896
proc spec flags:       0
elf hdr size (bytes):  64
prog hdr tbl ent size: 0
prog hdr tbl ent cnt:  0
sect hdr tbl ent size: 64
sect hdr tbl ent cnt:  13
sect hdr str tbl ndx   10
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
size:     57
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 2
name:     .rela.text
type:     Relocation entries with addends
flags:    Contains SHT index
addr:     0
offset:   744
size:     24
link:     11
info:     1
alignment:8
entrySize:24

SECTION: 3
name:     .data
type:     Program data
flags:    OCCUPIES MEMORY|Writable
addr:     0
offset:   121
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
offset:   121
size:     0
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 5
name:     .rodata
type:     Program data
flags:    OCCUPIES MEMORY
addr:     0
offset:   124
size:     10
link:     0
info:     0
alignment:4
entrySize:0

SECTION: 6
name:     .comment
type:     Program data
flags:    Might be merged|Nul-terminated strings
addr:     0
offset:   134
size:     53
link:     0
info:     0
alignment:1
entrySize:1

SECTION: 7
name:     .note.GNU-stack
type:     Program data
flags:    
addr:     0
offset:   187
size:     0
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 8
name:     .eh_frame
type:     Program data
flags:    OCCUPIES MEMORY
addr:     0
offset:   192
size:     56
link:     0
info:     0
alignment:8
entrySize:0

SECTION: 9
name:     .rela.eh_frame
type:     Relocation entries with addends
flags:    Contains SHT index
addr:     0
offset:   768
size:     24
link:     11
info:     8
alignment:8
entrySize:24

SECTION: 10
name:     .shstrtab
type:     String table
flags:    
addr:     0
offset:   792
size:     97
link:     0
info:     0
alignment:1
entrySize:0

SECTION: 11
name:     .symtab
type:     Symbol table
flags:    
addr:     0
offset:   248
size:     360
link:     12
info:     13
alignment:8
entrySize:24

SECTION: 12
name:     .strtab
type:     String table
flags:    
addr:     0
offset:   608
size:     130
link:     0
info:     0
alignment:1
entrySize:0

----------------------------------------
55 48 89 e5 48 83 ec 20  89 7d ec 48 89 75 e0 48
8b 45 e0 48 83 c0 08 48  8b 00 48 89 c7 e8 00 00
00 00 88 45 ff 80 7d ff  00 74 07 b8 00 00 00 00
eb 05 b8 01 00 00 00 c9  c3
     0:push %rbp
     1:mov %rsp,%rbp
     4:sub 0x20,%rsp
     8:mov %edi,-0x14(%rbp)
     b:mov %rsi,-0x20(%rbp)
     f:mov -0x20(%rbp),%rax
    13:add 0x8,%rax
    17:mov (%rax),%rax
    1a:mov %rax,%rdi
    1d:callq 0x0
    22:mov %al,-0x1(%rbp)
    25:cmpb 0x0,-0x1(%rbp)
    29:je 0x7
    2b:mov 0x0, %eax
    30:jmp 0x5
    32:mov 0x1, %eax
    37:leaveq
    38:retq
#################
TODO: elf/file.cpp:224

744:24
1e 00 00 00 00 00 00 00  02 00 00 00 0e 00 00 00
fc ff ff ff ff ff ff ff
#################
TODO: elf/file.cpp:186

121:0
#################
TODO: elf/file.cpp:252

121:0
#################
TODO: elf/file.cpp:186

124:10
00 00 00 00 02 00 00 00  00 00
#################
TODO: elf/file.cpp:186

134:53
00 47 43 43 3a 20 28 55  62 75 6e 74 75 20 35 2e
34 2e 30 2d 36 75 62 75  6e 74 75 31 7e 31 36 2e
30 34 2e 39 29 20 35 2e  34 2e 30 20 32 30 31 36
30 36 30 39 00
#################
TODO: elf/file.cpp:186

187:0
#################
TODO: elf/file.cpp:186

192:56
14 00 00 00 00 00 00 00  01 7a 52 00 01 78 10 01
1b 0c 07 08 90 01 00 00  1c 00 00 00 1c 00 00 00
00 00 00 00 39 00 00 00  00 41 0e 10 86 02 43 0d
06 74 0c 07 08 00 00 00
#################
TODO: elf/file.cpp:224

768:24
20 00 00 00 00 00 00 00  02 00 00 00 02 00 00 00
00 00 00 00 00 00 00 00

.symtab
.strtab
.shstrtab
.rela.text
.data
.bss
.rodata
.comment
.note.GNU-stack
.rela.eh_frame
name:
bind:local
type:unspecified
visibility:default
section:0
value:0
size:0

name:elf.cpp
bind:local
type:file-name
visibility:default
section:65521
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

name:
bind:local
type:assoc-with-section
visibility:default
section:5
value:0
size:0

name:_ZStL19piecewise_construct
bind:local
type:data-object
visibility:default
section:5
value:0
size:1

name:_ZN9__gnu_cxxL21__default_lock_policyE
bind:local
type:data-object
visibility:default
section:5
value:4
size:4

name:_ZStL13allocator_arg
bind:local
type:data-object
visibility:default
section:5
value:8
size:1

name:_ZStL6ignore
bind:local
type:data-object
visibility:default
section:5
value:9
size:1

name:
bind:local
type:assoc-with-section
visibility:default
section:7
value:0
size:0

name:
bind:local
type:assoc-with-section
visibility:default
section:8
value:0
size:0

name:
bind:local
type:assoc-with-section
visibility:default
section:6
value:0
size:0

name:main
bind:global
type:code-object
visibility:default
section:1
value:0
size:57

name:_Z9readIdentPKc
bind:global
type:unspecified
visibility:default
section:0
value:0
size:0


elf.cpp
_ZStL19piecewise_construct
_ZN9__gnu_cxxL21__default_lock_policyE
_ZStL13allocator_arg
_ZStL6ignore
main
_Z9readIdentPKc

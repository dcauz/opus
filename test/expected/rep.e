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
f3 6c 66 f3 6d f3 6d f3  a4 66 f3 a5 f3 a5 f3 48
a5 f3 6e 66 f3 6f f3 6f  f3 ac 66 f3 ad f3 ad f3
48 ad f3 aa 66 f3 ab f3  ab f3 48 ab f3 a6 66 f3
a7 f3 a7 f3 48 a7 f2 a6  66 f2 a7 f2 a7 f2 48 a7
f3 ae 66 f3 af f3 af f3  48 af f2 ae 66 f2 af f2
af f2 48 af
     0:rep insb (%dx),%es:(%rdi)
     2:rep insw (%dx),%es:(%rdi)
     5:rep insl (%dx),%es:(%rdi)
     7:rep movsb %ds:(%rsi),%es:(%rdi)
     9:rep movsw %ds:(%rsi),%es:(%rdi)
     c:rep movsw %ds:(%rsi),%es:(%rdi)
     e:rep movsw %ds:(%rsi),%es:(%rdi)
    11:rep outsb %ds:(%rsi),(%dx)
    13:rep outsw %ds:(%rsi),(%dx)
    16:rep outsl %ds:(%rsi),(%dx)
    18:rep lods %ds:(%rsi),%al
    1a:rep lods %ds:(%rsi),%ax
    1d:rep lods %ds:(%rsi),%eax
    1f:rep lods %ds:(%rsi),%rax
    22:rep stos %al,%es:(%rdi)
    24:rep stos %ax,%es:(%rdi)
    27:rep stos %eax,%es:(%rdi)
    29:rep stos %rax,%es:(%rdi)
    2c:repz cmpsb %es:(%rdi),%ds:(%rsi)
    2e:repz cmpsw %es:(%rdi),%ds:(%rsi)
    31:repz cmpsw %es:(%rdi),%ds:(%rsi)
    33:repz cmpsq %es:(%rdi),%ds:(%rsi)
    36:repnz cmpsb %es:(%rdi),%ds:(%rsi)
    38:repnz cmpsw %es:(%rdi),%ds:(%rsi)
    3b:repnz cmpsw %es:(%rdi),%ds:(%rsi)
    3d:repnz cmpsq %es:(%rdi),%ds:(%rsi)
    40:repz scas %es:(%rdi),%al
    42:repz scas %es:(%rdi),%ax
    45:repz scas %es:(%rdi),%eax
    47:repz scas %es:(%rdi),%rax
    4a:repnz scas %es:(%rdi),%al
    4c:repnz scas %es:(%rdi),%ax
    4f:repnz scas %es:(%rdi),%eax
    51:repnz scas %es:(%rdi),%rax
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



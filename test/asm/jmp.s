jmp 0x10
jmp 0xF0

jmp 0x100
jmp 0xF00

jmp *%bx
jmp *%cx
jmp *%di
jmp *%si


jmp *%dx
jmp *%r10w

jmp *%rdx
jmp *%r10

jmp *(%edx)
jmp *(%r10d)

jmp *(%rdx)
jmp *(%r10)

jmp *0x10(%r10)
jmp *0x100(%r10)

jmp *(%rdx,%r10,4)
jmp *(%r10,%r10,4)

jmp *0x10(%r10,%r10,2)
jmp *0x100(%r10,%r10,8)

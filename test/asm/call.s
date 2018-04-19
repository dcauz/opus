// TODO: Different types of calls: far, near, and so on

callq *%rax

callq *(%rax)

callq *0x10(%rax)
callq *0x100(%rax)

callq *(%rax,%r10,2)
callq *(%eax,%r9d,8)

callq *0x10(%rax,%r10,2)
callq *0x100(%eax,%r9d,8)

callq *(%r10)

callq *0x10(%r11)
callq *0x100(%r12)

callq *(%r10,%r10,2)
callq *(%r10,%rdx,2)

callq *(%eax,%r9d,8)
callq *(%r8d,%r9d,8)

callq *0x10(%rax,%r10,2)
callq *0x100(%eax,%r9d,8)

callq *0x10(%r12,%r10,2)
callq *0x100(%r8d,%r9d,8)

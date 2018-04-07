
push %rbp
push %bx 
push %si 
push %r9w 
push %r13w 

push %rbx 
push %rsi 
push %r9 
push %r13

push (%rbx)
push 0x20(%rsi)
push 0x22(%r9)
push 0x21(%r13)

push (%rbx, %r9)
push 0x20(%rsi,%rbx)

push 0x2011(%rsi,%r13)
push 0x20123456(%r9,%rbx)

push 0x22(%r9,%r13,4)


push 1
push 1000
push 1000000
//push 10000000000

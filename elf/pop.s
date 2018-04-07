
pop %rbp
pop %bx 
pop %si 
pop %r9w 
pop %r13w 

pop %rbx 
pop %rsi 
pop %r9 
pop %r13

pop (%rbx)
pop 0x20(%rsi)
pop 0x22(%r9)
pop 0x21(%r13)

pop (%rbx, %r9)
pop 0x20(%rsi,%rbx)

pop 0x2011(%rsi,%r13)
pop 0x20123456(%r9,%rbx)

pop 0x22(%r9,%r13,4)

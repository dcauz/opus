shrd %cl, %rbx, %r10
shrd %cl, %r10, %r11
shrd %cl, %r10, %rdx

shrd %cl, %ebx, %r10d
shrd %cl, %r10d, %r11d
shrd %cl, %r10d, %edx

shrd %cl, %bx, %r10w
shrd %cl, %r10w, %r11w
shrd %cl, %r10w, %dx

shrd $10, %rbx, %r10
shrd $10, %r10, %r11
shrd $10, %r10, %rdx

shrd $10, %ebx, %r10d
shrd $10, %r10d, %r11d
shrd $10, %r10d, %edx

shrd $10, %bx, %r10w
shrd $10, %r10w, %r11w
shrd $10, %r10w, %dx

shrd %cl, %rbx, (%r10)
shrd %cl, %r10, (%r11)
shrd %cl, %r10, (%rdx)

shrd %cl, %ebx, (%r10d)
shrd %cl, %r10d, (%r11d)
shrd %cl, %r10d, (%edx)

shrd $10, %rbx, (%r10)
shrd $10, %r10, (%r11)
shrd $10, %r10, (%rdx)

shrd $10, %ebx, (%r10d)
shrd $10, %r10d, (%r11d)
shrd $10, %r10d, (%edx)

shrd %cl, %rbx, 12(%r10)
shrd %cl, %r10, 12(%r11)
shrd %cl, %r10, 12(%rdx)

shrd %cl, %ebx, 12(%r10d)
shrd %cl, %r10d, 12(%r11d)
shrd %cl, %r10d, 12(%edx)

shrd $10, %rbx, 12(%r10)
shrd $10, %r10, 12(%r11)
shrd $10, %r10, 12(%rdx)

shrd $10, %ebx, 12(%r10d)
shrd $10, %r10d, 12(%r11d)
shrd $10, %r10d, 12(%edx)

shrd %cl, %rbx, (%r10,%r9,1)
shrd %cl, %r10, (%r11,%r9,2)
shrd %cl, %r10, (%rdx,%r9,4)

shrd %cl, %ebx, (%r10d,%r13d,1)
shrd %cl, %r10d, (%r11d,%r13d,2)
shrd %cl, %r10d, (%edx,%r13d,4)

shrd $10, %rbx, (%r10,%r9,1)
shrd $10, %r10, (%r11,%r9,2)
shrd $10, %r10, (%rdx,%r9,4)

shrd $10, %ebx, (%r10d,%r13d,1)
shrd $10, %r10d, (%r11d,%r13d,2)
shrd $10, %r10d, (%edx,%r13d,4)

shrd %cl, %rbx, 12(%r10,%r9,1)
shrd %cl, %r10, 12(%r11,%r9,2)
shrd %cl, %r10, 12(%rdx,%r9,4)

shrd %cl, %ebx, 12(%r10d,%r13d,1)
shrd %cl, %r10d, 12(%r11d,%r13d,2)
shrd %cl, %r10d, 12(%edx,%r13d,4)

shrd $10, %rbx, 12(%r10,%r9,1)
shrd $10, %r10, 12(%r11,%r9,2)
shrd $10, %r10, 12(%rdx,%r9,4)

shrd $10, %ebx, 12(%r10d,%r13d,1)
shrd $10, %r10d, 12(%r11d,%r13d,2)
shrd $10, %r10d, 12(%edx,%r13d,4)

shrd %cl, %rbx, (%r10,%rbx,8)
shrd %cl, %r10, (%r11,%rbx,2)
shrd %cl, %r10, (%rdx,%rbx,4)

shrd %cl, %ebx, (%r10d,%esi,8)
shrd %cl, %r10d, (%r11d,%esi,2)
shrd %cl, %r10d, (%edx,%esi,4)

shrd $10, %rbx, (%r10,%rbx,8)
shrd $10, %r10, (%r11,%rbx,2)
shrd $10, %r10, (%rdx,%rsi,4)

shrd $10, %ebx, (%r10d,%esi,8)
shrd $10, %r10d, (%r11d,%esi,2)
shrd $10, %r10d, (%edx,%edi,4)

shrd %cl, %rbx, 12(%r10,%rsi,8)
shrd %cl, %r10, 12(%r11,%rsi,2)
shrd %cl, %r10, 12(%rdx,%rsi,4)

shrd %cl, %ebx, 12(%r10d, %esi,8)
shrd %cl, %r10d, 12(%r11d,%esi,2)
shrd %cl, %r10d, 12(%edx, %esi,4)

shrd $10, %rbx, 12(%r10,%rbx,8)
shrd $10, %r10, 12(%r11,%rbx,2)
shrd $10, %r10, 12(%rdx,%rbx,4)

shrd $10, %ebx, 12(%r10d, %ebx,8)
shrd $10, %r10d, 12(%r11d,%ebx,2)
shrd $10, %r10d, 12(%edx, %ebx,4)


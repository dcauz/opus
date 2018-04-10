shld %cl, %rbx, %r10
shld %cl, %r10, %r11
shld %cl, %r10, %rdx

shld %cl, %ebx, %r10d
shld %cl, %r10d, %r11d
shld %cl, %r10d, %edx

shld %cl, %bx, %r10w
shld %cl, %r10w, %r11w
shld %cl, %r10w, %dx

shld $10, %rbx, %r10
shld $10, %r10, %r11
shld $10, %r10, %rdx

shld $10, %ebx, %r10d
shld $10, %r10d, %r11d
shld $10, %r10d, %edx

shld $10, %bx, %r10w
shld $10, %r10w, %r11w
shld $10, %r10w, %dx

shld %cl, %rbx, (%r10)
shld %cl, %r10, (%r11)
shld %cl, %r10, (%rdx)

shld %cl, %ebx, (%r10d)
shld %cl, %r10d, (%r11d)
shld %cl, %r10d, (%edx)

shld $10, %rbx, (%r10)
shld $10, %r10, (%r11)
shld $10, %r10, (%rdx)

shld $10, %ebx, (%r10d)
shld $10, %r10d, (%r11d)
shld $10, %r10d, (%edx)

shld %cl, %rbx, 12(%r10)
shld %cl, %r10, 12(%r11)
shld %cl, %r10, 12(%rdx)

shld %cl, %ebx, 12(%r10d)
shld %cl, %r10d, 12(%r11d)
shld %cl, %r10d, 12(%edx)

shld $10, %rbx, 12(%r10)
shld $10, %r10, 12(%r11)
shld $10, %r10, 12(%rdx)

shld $10, %ebx, 12(%r10d)
shld $10, %r10d, 12(%r11d)
shld $10, %r10d, 12(%edx)

shld %cl, %rbx, (%r10,%r9,1)
shld %cl, %r10, (%r11,%r9,2)
shld %cl, %r10, (%rdx,%r9,4)

shld %cl, %ebx, (%r10d,%r13d,1)
shld %cl, %r10d, (%r11d,%r13d,2)
shld %cl, %r10d, (%edx,%r13d,4)

shld $10, %rbx, (%r10,%r9,1)
shld $10, %r10, (%r11,%r9,2)
shld $10, %r10, (%rdx,%r9,4)

shld $10, %ebx, (%r10d,%r13d,1)
shld $10, %r10d, (%r11d,%r13d,2)
shld $10, %r10d, (%edx,%r13d,4)

shld %cl, %rbx, 12(%r10,%r9,1)
shld %cl, %r10, 12(%r11,%r9,2)
shld %cl, %r10, 12(%rdx,%r9,4)

shld %cl, %ebx, 12(%r10d,%r13d,1)
shld %cl, %r10d, 12(%r11d,%r13d,2)
shld %cl, %r10d, 12(%edx,%r13d,4)

shld $10, %rbx, 12(%r10,%r9,1)
shld $10, %r10, 12(%r11,%r9,2)
shld $10, %r10, 12(%rdx,%r9,4)

shld $10, %ebx, 12(%r10d,%r13d,1)
shld $10, %r10d, 12(%r11d,%r13d,2)
shld $10, %r10d, 12(%edx,%r13d,4)

shld %cl, %rbx, (%r10,%rbx,8)
shld %cl, %r10, (%r11,%rbx,2)
shld %cl, %r10, (%rdx,%rbx,4)

shld %cl, %ebx, (%r10d,%esi,8)
shld %cl, %r10d, (%r11d,%esi,2)
shld %cl, %r10d, (%edx,%esi,4)

shld $10, %rbx, (%r10,%rbx,8)
shld $10, %r10, (%r11,%rbx,2)
shld $10, %r10, (%rdx,%rsi,4)

shld $10, %ebx, (%r10d,%esi,8)
shld $10, %r10d, (%r11d,%esi,2)
shld $10, %r10d, (%edx,%edi,4)

shld %cl, %rbx, 12(%r10,%rsi,8)
shld %cl, %r10, 12(%r11,%rsi,2)
shld %cl, %r10, 12(%rdx,%rsi,4)

shld %cl, %ebx, 12(%r10d, %esi,8)
shld %cl, %r10d, 12(%r11d,%esi,2)
shld %cl, %r10d, 12(%edx, %esi,4)

shld $10, %rbx, 12(%r10,%rbx,8)
shld $10, %r10, 12(%r11,%rbx,2)
shld $10, %r10, 12(%rdx,%rbx,4)

shld $10, %ebx, 12(%r10d, %ebx,8)
shld $10, %r10d, 12(%r11d,%ebx,2)
shld $10, %r10d, 12(%edx, %ebx,4)


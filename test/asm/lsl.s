lsl %ecx,  %edx
lsl %ecx,  %ebx
lsl %ecx,  %edi
lsl %ecx,  %esi
lsl %ecx,  %r10d

lsl %edx,  %ecx
lsl %edx,  %ebx
lsl %edx,  %edi
lsl %edx,  %esi
lsl %edx,  %r11d

lsl %ebx,  %ecx
lsl %ebx,  %edx
lsl %ebx,  %edi
lsl %ebx,  %esi
lsl %ebx,  %r11d

lsl %edi,  %ecx
lsl %edi,  %edx
lsl %edi,  %ebx
lsl %edi,  %esi
lsl %edi,  %r11d

lsl %esi,  %ecx
lsl %esi,  %edx
lsl %esi,  %edi
lsl %esi,  %ebx
lsl %esi,  %r11d

lsl %r11d, %ecx
lsl %r11d, %edx
lsl %r11d, %esi
lsl %r11d, %edi
lsl %r11d, %r10d


lsl %rcx,  %rdx
lsl %rcx,  %rbx
lsl %rcx,  %rdi
lsl %rcx,  %rsi
lsl %rcx,  %r10

lsl %rdx,  %rcx
lsl %rdx,  %rbx
lsl %rdx,  %rdi
lsl %rdx,  %rsi
lsl %rdx,  %r11

lsl %rbx,  %rcx
lsl %rbx,  %rdx
lsl %rbx,  %rdi
lsl %rbx,  %rsi
lsl %rbx,  %r11

lsl %rdi,  %rcx
lsl %rdi,  %rdx
lsl %rdi,  %rbx
lsl %rdi,  %rsi
lsl %rdi,  %r11

lsl %rsi,  %rcx
lsl %rsi,  %rdx
lsl %rsi,  %rdi
lsl %rsi,  %rbx
lsl %rsi,  %r11

lsl %r11w, %rcx
lsl %r11w, %rdx
lsl %r11w, %rsi
lsl %r11w, %rdi
lsl %r11w, %r10

lsl %cx,  %dx
lsl %cx,  %bx
lsl %cx,  %di
lsl %cx,  %si
lsl %cx,  %r10w

lsl %dx,  %cx
lsl %dx,  %bx
lsl %dx,  %di
lsl %dx,  %si
lsl %dx,  %r11w

lsl %bx,  %cx
lsl %bx,  %dx
lsl %bx,  %di
lsl %bx,  %si
lsl %bx,  %r11w

lsl %di,  %cx
lsl %di,  %dx
lsl %di,  %bx
lsl %di,  %si
lsl %di,  %r11w

lsl %si,  %cx
lsl %si,  %dx
lsl %si,  %di
lsl %si,  %bx
lsl %si,  %r11w

lsl %r11w, %cx
lsl %r11w, %dx
lsl %r11w, %si
lsl %r11w, %di
lsl %r11w, %r10w

lsl %r10, %r8
lsl %r10, %r8w
lsl %r10, %r8d

lsl %r10w, %r8
lsl %r10w, %r8w
lsl %r10w, %r8d

lsl %r10d, %r8
lsl %r10d, %r8w
lsl %r10d, %r8d

lsl %rbx, %r8
lsl %rcx, %r8w
lsl %rdx, %r8d

lsl %bx, %r8
lsl %dx, %r8w
lsl %di, %r8d

lsl %ebx, %r8
lsl %esi, %r8w
lsl %esp, %r8d


lslw (%ebx,%esi,4), %bx
lslw (%rbx,%rsi,4), %cx

lsll (%ebx,%esi,4), %ebx
lsll (%rbx,%rsi,4), %edx

lslq (%ebx,%esi,4), %rbx
lslq (%rbx,%rsi,4), %rdi

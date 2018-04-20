lar %ecx,  %edx
lar %ecx,  %ebx
lar %ecx,  %edi
lar %ecx,  %esi
lar %ecx,  %r10d

lar %edx,  %ecx
lar %edx,  %ebx
lar %edx,  %edi
lar %edx,  %esi
lar %edx,  %r11d

lar %ebx,  %ecx
lar %ebx,  %edx
lar %ebx,  %edi
lar %ebx,  %esi
lar %ebx,  %r11d

lar %edi,  %ecx
lar %edi,  %edx
lar %edi,  %ebx
lar %edi,  %esi
lar %edi,  %r11d

lar %esi,  %ecx
lar %esi,  %edx
lar %esi,  %edi
lar %esi,  %ebx
lar %esi,  %r11d

lar %r11d, %ecx
lar %r11d, %edx
lar %r11d, %esi
lar %r11d, %edi
lar %r11d, %r10d


lar %rcx,  %rdx
lar %rcx,  %rbx
lar %rcx,  %rdi
lar %rcx,  %rsi
lar %rcx,  %r10

lar %rdx,  %rcx
lar %rdx,  %rbx
lar %rdx,  %rdi
lar %rdx,  %rsi
lar %rdx,  %r11

lar %rbx,  %rcx
lar %rbx,  %rdx
lar %rbx,  %rdi
lar %rbx,  %rsi
lar %rbx,  %r11

lar %rdi,  %rcx
lar %rdi,  %rdx
lar %rdi,  %rbx
lar %rdi,  %rsi
lar %rdi,  %r11

lar %rsi,  %rcx
lar %rsi,  %rdx
lar %rsi,  %rdi
lar %rsi,  %rbx
lar %rsi,  %r11

lar %r11w, %rcx
lar %r11w, %rdx
lar %r11w, %rsi
lar %r11w, %rdi
lar %r11w, %r10

lar %cx,  %dx
lar %cx,  %bx
lar %cx,  %di
lar %cx,  %si
lar %cx,  %r10w

lar %dx,  %cx
lar %dx,  %bx
lar %dx,  %di
lar %dx,  %si
lar %dx,  %r11w

lar %bx,  %cx
lar %bx,  %dx
lar %bx,  %di
lar %bx,  %si
lar %bx,  %r11w

lar %di,  %cx
lar %di,  %dx
lar %di,  %bx
lar %di,  %si
lar %di,  %r11w

lar %si,  %cx
lar %si,  %dx
lar %si,  %di
lar %si,  %bx
lar %si,  %r11w

lar %r11w, %cx
lar %r11w, %dx
lar %r11w, %si
lar %r11w, %di
lar %r11w, %r10w

lar %r10, %r8
lar %r10, %r8w
lar %r10, %r8d

lar %r10w, %r8
lar %r10w, %r8w
lar %r10w, %r8d

lar %r10d, %r8
lar %r10d, %r8w
lar %r10d, %r8d

lar %rbx, %r8
lar %rcx, %r8w
lar %rdx, %r8d

lar %bx, %r8
lar %dx, %r8w
lar %di, %r8d

lar %ebx, %r8
lar %esi, %r8w
lar %esp, %r8d


larw (%ebx,%esi,4), %bx
larw (%rbx,%rsi,4), %cx

larl (%ebx,%esi,4), %ebx
larl (%rbx,%rsi,4), %edx

larq (%ebx,%esi,4), %rbx
larq (%rbx,%rsi,4), %rdi

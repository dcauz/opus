movd %mm0, (%r10)
movd %mm1, (%rcx)
movd %mm3, (%rcx)
movd %mm5, (%rcx)
movd %mm7, (%rcx)

movq %mm0, (%rcx)
movq %mm1, (%r10)
movq %mm3, (%rcx)
movq %mm5, (%rcx)
movq %mm7, (%rcx)

movd (%r10), %mm0
movd (%r10), %mm1
movd (%rdx), %mm3
movd (%r10), %mm5
movd (%r10), %mm7

movq (%r10), %mm0
movq (%r10), %mm1
movq (%rdx), %mm3
movq (%r10), %mm5
movq (%r10), %mm7


movd %xmm0, (%rcx)
movd %xmm1, (%rcx)
movd %xmm3, (%rcx)
movd %xmm5, (%rcx)
movd %xmm7, (%rcx)

movq %xmm0, (%rcx)
movq %xmm1, (%rcx)
movq %xmm3, (%rcx)
movq %xmm5, (%rcx)
movq %xmm7, (%rcx)

movd (%r10), %xmm0
movd (%rdx), %xmm1
movd (%r10), %xmm3
movd (%r10), %xmm5
movd (%r10), %xmm7

movq (%r10), %xmm0
movq (%r10), %xmm1
movq (%rsi), %xmm3
movq (%r10), %xmm5
movq (%r10), %xmm7


vmovd %xmm0, (%rcx)
vmovd %xmm0, (%rdx)
vmovd %xmm0, (%rdi)

vmovd %xmm1, (%rcx)
vmovd %xmm1, (%rdx)
vmovd %xmm2, (%rcx)
vmovd %xmm3, (%rcx)
vmovd %xmm4, (%rcx)
vmovd %xmm5, (%r8)
vmovd %xmm5, (%r9)
vmovd %xmm5, (%r11)
vmovd %xmm6, (%r12)
vmovd %xmm6, (%r12d)
vmovd %xmm6, (%r15d)
vmovd %xmm7, (%rcx)
vmovd %xmm8, (%rcx)
vmovd %xmm9, (%rcx)
vmovd %xmm10, (%rcx)
vmovd %xmm11, (%rcx)
vmovd %xmm31, (%rcx)
vmovd %xmm30, (%rcx)
vmovd %xmm29, (%rcx)
vmovd %xmm28, (%rcx)
vmovd %xmm27, (%rcx)
vmovd %xmm26, (%rcx)
vmovd %xmm25, (%rcx)
vmovd %xmm24, (%rcx)
vmovd %xmm23, (%rcx)
vmovd %xmm22, (%rcx)
vmovd %xmm21, (%rcx)
vmovd %xmm20, (%rcx)
vmovd %xmm19, (%rcx)
vmovd %xmm18, (%rcx)
vmovd %xmm17, (%rcx)
vmovd %xmm16, (%rcx)
vmovd %xmm15, (%rcx)
vmovd (%r10), %xmm0
vmovd (%r10), %xmm1
vmovd (%r10), %xmm3
vmovd (%r10), %xmm5
vmovd (%rdx), %xmm7
vmovd (%r10), %xmm31
vmovd (%r14d),%xmm15


vmovq %xmm0, (%rcx)
vmovq %xmm1, (%rcx)
vmovq %xmm3, (%rcx)
vmovq %xmm5, (%rcx)
vmovq %xmm7, (%rcx)
vmovq %xmm31, (%rcx)

vmovq (%r11), %xmm0
vmovq (%r12), %xmm1
vmovq (%r13), %xmm2
vmovq (%r14), %xmm3
vmovq (%r15), %xmm4
vmovq (%rdx), %xmm5
vmovq (%r8),  %xmm6
vmovq (%r9),  %xmm7
vmovq (%r11), %xmm9
vmovq (%r12), %xmm10
vmovq (%r13), %xmm11
vmovq (%r14), %xmm12
vmovq (%r15), %xmm13
vmovq (%r8),  %xmm14
vmovq (%r9),  %xmm15
vmovq (%r11), %xmm17
vmovq (%r12), %xmm18
vmovq (%r13), %xmm19
vmovq (%r14), %xmm20
vmovq (%r15), %xmm21
vmovq (%r8),  %xmm22
vmovq (%r9),  %xmm23
vmovq (%r10), %xmm24
vmovq (%r11), %xmm25
vmovq (%r12), %xmm26
vmovq (%r13), %xmm27
vmovq (%r14), %xmm28
vmovq (%rsi), %xmm29
vmovq (%rdi), %xmm30
vmovq (%rcx), %xmm31

vmovd (%r8, %rdx,1), %xmm31
vmovd (%r9, %rdx,1), %xmm31
vmovd (%r10,%rdx,1), %xmm31
vmovd (%r11,%rdx,1), %xmm31
vmovd (%r12,%rdx,1), %xmm31
vmovd (%r13,%rdx,1), %xmm31
vmovd (%r14,%rdx,1), %xmm31
vmovd (%r15,%rdx,1), %xmm31

vmovd (%r8, %rdx,2), %xmm31
vmovd (%r9, %rdx,2), %xmm31
vmovd (%r10,%rdx,2), %xmm31
vmovd (%r11,%rdx,2), %xmm31
vmovd (%r12,%rdx,2), %xmm31
vmovd (%r13,%rdx,2), %xmm31
vmovd (%r14,%rdx,2), %xmm31
vmovd (%r15,%rdx,2), %xmm31

vmovd (%r8, %rdx,8), %xmm31
vmovd (%r9, %rdx,8), %xmm31
vmovd (%r10,%rdx,8), %xmm31
vmovd (%r11,%rdx,8), %xmm31
vmovd (%r12,%rdx,8), %xmm31
vmovd (%r13,%rdx,8), %xmm31
vmovd (%r14,%rdx,8), %xmm31
vmovd (%r15,%rdx,8), %xmm31

vmovd (%r8, %rdx,4), %xmm31
vmovd (%r9, %rdx,4), %xmm31
vmovd (%r10,%rdx,4), %xmm31
vmovd (%r11,%rdx,4), %xmm31
vmovd (%r12,%rdx,4), %xmm31
vmovd (%r13,%rdx,4), %xmm31
vmovd (%r14,%rdx,4), %xmm31
vmovd (%r15,%rdx,4), %xmm31

vmovd (%r8, %r15,1), %xmm31
vmovd (%r9, %r14,1), %xmm31
vmovd (%r10,%r13,1), %xmm31
vmovd (%r11,%r12,1), %xmm31
vmovd (%r12,%r11,1), %xmm31
vmovd (%r13,%r10,1), %xmm31
vmovd (%r14,%r9,1), %xmm31
vmovd (%r15,%r8,1), %xmm31

vmovd (%r8, %rcx,2), %xmm31
vmovd (%r9, %rcx,2), %xmm31
vmovd (%r10,%rcx,2), %xmm31
vmovd (%r11,%rcx,2), %xmm31
vmovd (%r12,%rcx,2), %xmm31
vmovd (%r13,%rcx,2), %xmm31
vmovd (%r14,%rcx,2), %xmm31
vmovd (%r15,%rcx,2), %xmm31

vmovd (%r8, %rdx,8), %xmm31
vmovd (%r9, %rdx,8), %xmm31
vmovd (%r10,%rdx,8), %xmm31
vmovd (%r11,%rdx,8), %xmm31
vmovd (%r12,%rdx,8), %xmm31
vmovd (%r13,%rdx,8), %xmm31
vmovd (%r14,%rdx,8), %xmm31
vmovd (%r15,%rdx,8), %xmm31

vmovd (%r8d, %edx,4), %xmm31
vmovd (%r9d, %edx,4), %xmm31
vmovd (%r10d,%edx,4), %xmm31
vmovd (%r11d,%edx,4), %xmm31
vmovd (%r12d,%edx,4), %xmm31
vmovd (%r13d,%edx,4), %xmm31
vmovd (%r14d,%edx,4), %xmm31
vmovd (%r15d,%edx,4), %xmm31

vmovd 0x10(%r8, %rdx,8), %xmm31
vmovd 0x100(%r9, %rdx,8), %xmm31
vmovq 0x10(%r8, %rdx,8), %xmm31
vmovq 0x100(%r9, %rdx,8), %xmm31
vmovd 0x1000(%r10,%rdx,8), %xmm31
vmovd 0x1000(%r11,%rdx,8), %xmm31
vmovd 0x1234(%r12,%rdx,8), %xmm31
vmovd 0x1234(%r13,%rdx,8), %xmm31
vmovd 0x1234(%r14,%rdx,8), %xmm31
vmovd 0x1234(%r15,%rdx,8), %xmm31

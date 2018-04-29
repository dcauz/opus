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
vmovd (%r10), %xmm0
vmovd (%r10), %xmm1
vmovd (%r10), %xmm3
vmovd (%r10), %xmm5
vmovd (%rdx), %xmm7
vmovd (%r10), %xmm31
vmovd (%r14), %xmm31
vmovd (%r14d),%xmm31
vmovd (%r14d),%xmm15


vmovq %xmm0, (%rcx)
vmovq %xmm1, (%rcx)
vmovq %xmm3, (%rcx)
vmovq %xmm5, (%rcx)
vmovq %xmm7, (%rcx)
vmovq %xmm31, (%rcx)

vmovq (%r10), %xmm0
vmovq (%r10), %xmm1
vmovq (%r10), %xmm2
vmovq (%r10), %xmm3
vmovq (%r10), %xmm4
vmovq (%rdx), %xmm5
vmovq (%r10), %xmm6
vmovq (%r10), %xmm7
vmovq (%r10), %xmm8
vmovq (%r10), %xmm9
vmovq (%r10), %xmm10
vmovq (%r10), %xmm11
vmovq (%r10), %xmm12
vmovq (%r10), %xmm13
vmovq (%r10), %xmm14
vmovq (%r10), %xmm15
vmovq (%r10), %xmm16
vmovq (%r10), %xmm17
vmovq (%r10), %xmm18
vmovq (%r10), %xmm19
vmovq (%r10), %xmm20
vmovq (%r10), %xmm21
vmovq (%r10), %xmm22
vmovq (%r10), %xmm23
vmovq (%r10), %xmm24
vmovq (%r10), %xmm25
vmovq (%r10), %xmm26
vmovq (%r10), %xmm27
vmovq (%r10), %xmm28
vmovq (%rsi), %xmm29
vmovq (%r10), %xmm30
vmovq (%r10), %xmm31

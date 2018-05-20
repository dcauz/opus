
movlps %xmm5, (%r10)

movlps (%r10),             %xmm5
movlps (%r10,%r12,1),      %xmm2
movlps 0x10(%r10,%r12,1),  %xmm3
movlps 0x11(%r10,%r12,2),  %xmm4
movlps 0x3567(%r10,%r12,4),%xmm0

movlps (%r10),             %xmm10
movlps (%r10,%r12,1),      %xmm11
movlps 0x10(%r10,%r12,1),  %xmm12
movlps 0x11(%r10,%r12,2),  %xmm13
movlps 0x3567(%r10,%r12,4),%xmm14

vmovlps (%r10),             %xmm5,%xmm1
vmovlps (%r10,%r12,1),      %xmm2,%xmm2
vmovlps 0x10(%r10,%r12,1),  %xmm3,%xmm3
vmovlps 0x11(%r10,%r12,2),  %xmm4,%xmm4
vmovlps 0x3567(%r10,%r12,4),%xmm0,%xmm6

vmovlps (%r10),             %xmm10,%xmm7
vmovlps (%r10,%r12,1),      %xmm11,%xmm8
vmovlps 0x10(%r10,%r12,1),  %xmm12,%xmm9
vmovlps 0x11(%r10,%r12,2),  %xmm13,%xmm10
vmovlps 0x3567(%r10,%r12,4),%xmm14,%xmm11

vmovlps %xmm14,(%r10)
vmovlps %xmm13,(%r10,%r12,1)
vmovlps %xmm12,0x10(%r10,%r12,1)
vmovlps %xmm11,0x11(%r10,%r12,2)
vmovlps %xmm15,0x3567(%r10,%r12,4)

vmovlps %xmm2,(%r10)
vmovlps %xmm5,(%r10,%r12,1)
vmovlps %xmm6,0x10(%r10,%r12,1)
vmovlps %xmm8,0x11(%r10,%r12,2)
vmovlps %xmm9,0x3567(%r10,%r12,4)



movhps %xmm5, (%r10)

movhps (%r10),             %xmm5
movhps (%r10,%r12,1),      %xmm2
movhps 0x10(%r10,%r12,1),  %xmm3
movhps 0x11(%r10,%r12,2),  %xmm4
movhps 0x3567(%r10,%r12,4),%xmm0

movhps (%r10),             %xmm10
movhps (%r10,%r12,1),      %xmm11
movhps 0x10(%r10,%r12,1),  %xmm12
movhps 0x11(%r10,%r12,2),  %xmm13
movhps 0x3567(%r10,%r12,4),%xmm14

vmovhps (%r10),             %xmm5,%xmm1
vmovhps (%r10,%r12,1),      %xmm2,%xmm2
vmovhps 0x10(%r10,%r12,1),  %xmm3,%xmm3
vmovhps 0x11(%r10,%r12,2),  %xmm4,%xmm4
vmovhps 0x3567(%r10,%r12,4),%xmm0,%xmm6

vmovhps (%r10),             %xmm10,%xmm7
vmovhps (%r10,%r12,1),      %xmm11,%xmm8
vmovhps 0x10(%r10,%r12,1),  %xmm12,%xmm9
vmovhps 0x11(%r10,%r12,2),  %xmm13,%xmm10
vmovhps 0x3567(%r10,%r12,4),%xmm14,%xmm11

vmovhps %xmm14,(%r10)
vmovhps %xmm13,(%r10,%r12,1)
vmovhps %xmm12,0x10(%r10,%r12,1)
vmovhps %xmm11,0x11(%r10,%r12,2)
vmovhps %xmm15,0x3567(%r10,%r12,4)

vmovhps %xmm2,(%r10)
vmovhps %xmm5,(%r10,%r12,1)
vmovhps %xmm6,0x10(%r10,%r12,1)
vmovhps %xmm8,0x11(%r10,%r12,2)
vmovhps %xmm9,0x3567(%r10,%r12,4)


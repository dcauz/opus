addps %xmm2, %xmm7
addps (%r10), %xmm0

vaddps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vaddps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vaddps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vaddps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vaddps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vaddps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vaddps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vaddps (%r10,%r12,1),      %zmm5,  %zmm2
vaddps (%r10),             %zmm5,  %zmm1

vaddps %xmm7,%xmm25,%xmm10
vaddps %ymm13,%ymm0,%ymm28
vaddps %zmm28,%zmm20,%zmm29

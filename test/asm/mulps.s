mulps %xmm2, %xmm7
mulps (%r10), %xmm0

vmulps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vmulps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vmulps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vmulps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vmulps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vmulps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vmulps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vmulps (%r10,%r12,1),      %zmm5,  %zmm2
vmulps (%r10),             %zmm5,  %zmm1

vmulps %xmm7,%xmm25,%xmm10
vmulps %ymm13,%ymm0,%ymm28
vmulps %zmm28,%zmm20,%zmm29

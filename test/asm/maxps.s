maxps %xmm2, %xmm7
maxps (%r10), %xmm0

vmaxps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vmaxps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vmaxps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vmaxps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vmaxps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vmaxps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vmaxps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vmaxps (%r10,%r12,1),      %zmm5,  %zmm2
vmaxps (%r10),             %zmm5,  %zmm1

vmaxps %xmm7,%xmm25,%xmm10
vmaxps %ymm13,%ymm0,%ymm28
vmaxps %zmm28,%zmm20,%zmm29

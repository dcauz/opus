andps %xmm2, %xmm7
andps (%r10), %xmm0

vandps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vandps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vandps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vandps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vandps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vandps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vandps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vandps (%r10,%r12,1),      %zmm5,  %zmm2
vandps (%r10),             %zmm5,  %zmm1

vandps %xmm7,%xmm25,%xmm10
vandps %ymm13,%ymm0,%ymm28
vandps %zmm28,%zmm20,%zmm29

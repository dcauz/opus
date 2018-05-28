andnps %xmm2, %xmm7
andnps (%r10), %xmm0

vandnps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vandnps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vandnps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vandnps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vandnps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vandnps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vandnps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vandnps (%r10,%r12,1),      %zmm5,  %zmm2
vandnps (%r10),             %zmm5,  %zmm1

vandnps %xmm7,%xmm25,%xmm10
vandnps %ymm13,%ymm0,%ymm28
vandnps %zmm28,%zmm20,%zmm29

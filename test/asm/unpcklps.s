unpcklps %xmm2, %xmm7
unpcklps (%r10), %xmm0

vunpcklps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vunpcklps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vunpcklps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vunpcklps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vunpcklps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vunpcklps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vunpcklps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vunpcklps (%r10,%r12,1),      %zmm5,  %zmm2
vunpcklps (%r10),             %zmm5,  %zmm1

vunpcklps %xmm7,%xmm25,%xmm10
vunpcklps %ymm13,%ymm0,%ymm28
vunpcklps %zmm28,%zmm20,%zmm29

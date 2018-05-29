unpckhps %xmm2, %xmm7
unpckhps (%r10), %xmm0

vunpckhps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vunpckhps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vunpckhps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vunpckhps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vunpckhps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vunpckhps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vunpckhps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vunpckhps (%r10,%r12,1),      %zmm5,  %zmm2
vunpckhps (%r10),             %zmm5,  %zmm1

vunpckhps %xmm7,%xmm25,%xmm10
vunpckhps %ymm13,%ymm0,%ymm28
vunpckhps %zmm28,%zmm20,%zmm29

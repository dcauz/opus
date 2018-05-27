minps %xmm2, %xmm7
minps (%r10), %xmm0

vminps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vminps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vminps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vminps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vminps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vminps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vminps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vminps (%r10,%r12,1),      %zmm5,  %zmm2
vminps (%r10),             %zmm5,  %zmm1

vminps %xmm7,%xmm25,%xmm10
vminps %ymm13,%ymm0,%ymm28
vminps %zmm28,%zmm20,%zmm29

orps %xmm2, %xmm7
orps (%r10), %xmm0

vorps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vorps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vorps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vorps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vorps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vorps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vorps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vorps (%r10,%r12,1),      %zmm5,  %zmm2
vorps (%r10),             %zmm5,  %zmm1

vorps %xmm7,%xmm25,%xmm10
vorps %ymm13,%ymm0,%ymm28
vorps %zmm28,%zmm20,%zmm29

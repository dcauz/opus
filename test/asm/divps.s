divps %xmm2, %xmm7
divps (%r10), %xmm0

vdivps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vdivps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vdivps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vdivps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vdivps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vdivps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vdivps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vdivps (%r10,%r12,1),      %zmm5,  %zmm2
vdivps (%r10),             %zmm5,  %zmm1

vdivps %xmm7,%xmm25,%xmm10
vdivps %ymm13,%ymm0,%ymm28
vdivps %zmm28,%zmm20,%zmm29

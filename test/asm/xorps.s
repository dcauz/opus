xorps %xmm2, %xmm7
xorps (%r10), %xmm0

vxorps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vxorps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vxorps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vxorps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vxorps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vxorps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vxorps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vxorps (%r10,%r12,1),      %zmm5,  %zmm2
vxorps (%r10),             %zmm5,  %zmm1

vxorps %xmm7,%xmm25,%xmm10
vxorps %ymm13,%ymm0,%ymm28
vxorps %zmm28,%zmm20,%zmm29

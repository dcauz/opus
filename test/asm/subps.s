subps %xmm2, %xmm7
subps (%r10), %xmm0

vsubps 0x10(%r10,%r12,1),  %xmm31, %xmm10
vsubps 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vsubps 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vsubps 0x10(%r10,%r12,1),  %ymm31, %ymm10
vsubps 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vsubps 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vsubps 0x3567(%r10,%r12,4),%zmm21, %zmm10
vsubps (%r10,%r12,1),      %zmm5,  %zmm2
vsubps (%r10),             %zmm5,  %zmm1

vsubps %xmm7,%xmm25,%xmm10
vsubps %ymm13,%ymm0,%ymm28
vsubps %zmm28,%zmm20,%zmm29

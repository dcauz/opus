pmaxsb %xmm2, %xmm7
pmaxsb (%r10), %xmm0

pmaxsw %xmm2, %xmm7
pmaxsw (%r10), %xmm0

vpmaxsb 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpmaxsb 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpmaxsb 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpmaxsb 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpmaxsb 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpmaxsb 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpmaxsb 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpmaxsb (%r10,%r12,1),      %zmm5,  %zmm2
vpmaxsb (%r10),             %zmm5,  %zmm1

vpmaxsb %xmm7,%xmm25,%xmm10
vpmaxsb %ymm13,%ymm0,%ymm28
vpmaxsb %zmm28,%zmm20,%zmm29

vpmaxsd 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpmaxsd 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpmaxsd 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpmaxsd 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpmaxsd 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpmaxsd 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpmaxsd 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpmaxsd (%r10,%r12,1),      %zmm5,  %zmm2
vpmaxsd (%r10),             %zmm5,  %zmm1

vpmaxsd %xmm7,%xmm25,%xmm10
vpmaxsd %ymm13,%ymm0,%ymm28
vpmaxsd %zmm28,%zmm20,%zmm29

vpmaxsw 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpmaxsw 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpmaxsw 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpmaxsw 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpmaxsw 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpmaxsw 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpmaxsw 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpmaxsw (%r10,%r12,1),      %zmm5,  %zmm2
vpmaxsw (%r10),             %zmm5,  %zmm1

vpmaxsw %xmm7,%xmm25,%xmm10
vpmaxsw %ymm13,%ymm0,%ymm28
vpmaxsw %zmm28,%zmm20,%zmm29

vpmaxsq 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpmaxsq 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpmaxsq 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpmaxsq 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpmaxsq 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpmaxsq 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpmaxsq 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpmaxsq (%r10,%r12,1),      %zmm5,  %zmm2
vpmaxsq (%r10),             %zmm5,  %zmm1

vpmaxsq %xmm7,%xmm25,%xmm10
vpmaxsq %ymm13,%ymm0,%ymm28
vpmaxsq %zmm28,%zmm20,%zmm29

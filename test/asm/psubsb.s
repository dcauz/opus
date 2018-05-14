psubsb %mm2, %mm7
psubsb (%r10), %mm0

vpsubsb 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpsubsb 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpsubsb 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpsubsb 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpsubsb 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpsubsb 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpsubsb 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpsubsb (%r10,%r12,1),      %zmm5,  %zmm2
vpsubsb (%r10),             %zmm5,  %zmm1

vpsubsb %xmm7,%xmm25,%xmm10
vpsubsb %ymm13,%ymm0,%ymm28
vpsubsb %zmm28,%zmm20,%zmm29

psubsw %mm2, %mm7
psubsw (%r10), %mm0

vpsubsw 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpsubsw 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpsubsw 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpsubsw 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpsubsw 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpsubsw 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpsubsw 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpsubsw (%r10,%r12,1),      %zmm5,  %zmm2
vpsubsw (%r10),             %zmm5,  %zmm1

vpsubsw %xmm7,%xmm25,%xmm10
vpsubsw %ymm13,%ymm0,%ymm28
vpsubsw %zmm28,%zmm20,%zmm29

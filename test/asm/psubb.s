psubb %mm2, %mm7
psubb (%r10), %mm0

vpsubb 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpsubb 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpsubb 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpsubb 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpsubb 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpsubb 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpsubb 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpsubb (%r10,%r12,1),      %zmm5,  %zmm2
vpsubb (%r10),             %zmm5,  %zmm1

vpsubb %xmm7,%xmm25,%xmm10
vpsubb %ymm13,%ymm0,%ymm28
vpsubb %zmm28,%zmm20,%zmm29

psubw %mm2, %mm7
psubw (%r10), %mm0

vpsubw 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpsubw 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpsubw 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpsubw 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpsubw 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpsubw 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpsubw 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpsubw (%r10,%r12,1),      %zmm5,  %zmm2
vpsubw (%r10),             %zmm5,  %zmm1

vpsubw %xmm7,%xmm25,%xmm10
vpsubw %ymm13,%ymm0,%ymm28
vpsubw %zmm28,%zmm20,%zmm29

psubd %mm2, %mm7
psubd (%r10), %mm0

vpsubd 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpsubd 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpsubd 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpsubd 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpsubd 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpsubd 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpsubd 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpsubd (%r10,%r12,1),      %zmm5,  %zmm2
vpsubd (%r10),             %zmm5,  %zmm1

vpsubd %xmm7,%xmm25,%xmm10
vpsubd %ymm13,%ymm0,%ymm28
vpsubd %zmm28,%zmm20,%zmm29

psubq %mm2, %mm7
psubq (%r10), %mm0

vpsubq 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpsubq 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpsubq 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpsubq 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpsubq 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpsubq 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpsubq 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpsubq (%r10,%r12,1),      %zmm5,  %zmm2
vpsubq (%r10),             %zmm5,  %zmm1

vpsubq %xmm7,%xmm25,%xmm10
vpsubq %ymm13,%ymm0,%ymm28
vpsubq %zmm28,%zmm20,%zmm29


psubusb %mm2, %mm7
psubusb (%r10), %mm0

vpsubusb 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpsubusb 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpsubusb 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpsubusb 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpsubusb 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpsubusb 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpsubusb 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpsubusb (%r10,%r12,1),      %zmm5,  %zmm2
vpsubusb (%r10),             %zmm5,  %zmm1

vpsubusb %xmm7,%xmm25,%xmm10
vpsubusb %ymm13,%ymm0,%ymm28
vpsubusb %zmm28,%zmm20,%zmm29

psubusw %mm2, %mm7
psubusw (%r10), %mm0

vpsubusw 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpsubusw 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpsubusw 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpsubusw 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpsubusw 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpsubusw 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpsubusw 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpsubusw (%r10,%r12,1),      %zmm5,  %zmm2
vpsubusw (%r10),             %zmm5,  %zmm1

vpsubusw %xmm7,%xmm25,%xmm10
vpsubusw %ymm13,%ymm0,%ymm28
vpsubusw %zmm28,%zmm20,%zmm29

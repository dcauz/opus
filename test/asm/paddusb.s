paddusb %mm2, %mm7
paddusb (%r10), %mm0

vpaddusb 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpaddusb 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpaddusb 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpaddusb 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpaddusb 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpaddusb 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpaddusb 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpaddusb (%r10,%r12,1),      %zmm5,  %zmm2
vpaddusb (%r10),             %zmm5,  %zmm1

vpaddusb %xmm7,%xmm25,%xmm10
vpaddusb %ymm13,%ymm0,%ymm28
vpaddusb %zmm28,%zmm20,%zmm29

paddusw %mm2, %mm7
paddusw (%r10), %mm0

vpaddusw 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpaddusw 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpaddusw 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpaddusw 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpaddusw 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpaddusw 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpaddusw 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpaddusw (%r10,%r12,1),      %zmm5,  %zmm2
vpaddusw (%r10),             %zmm5,  %zmm1

vpaddusw %xmm7,%xmm25,%xmm10
vpaddusw %ymm13,%ymm0,%ymm28
vpaddusw %zmm28,%zmm20,%zmm29

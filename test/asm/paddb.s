paddb %mm2, %mm7
paddb (%r10), %mm0

vpaddb 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpaddb 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpaddb 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpaddb 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpaddb 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpaddb 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpaddb 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpaddb (%r10,%r12,1),      %zmm5,  %zmm2
vpaddb (%r10),             %zmm5,  %zmm1

vpaddb %xmm7,%xmm25,%xmm10
vpaddb %ymm13,%ymm0,%ymm28
vpaddb %zmm28,%zmm20,%zmm29

paddw %mm2, %mm7
paddw (%r10), %mm0

vpaddw 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpaddw 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpaddw 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpaddw 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpaddw 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpaddw 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpaddw 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpaddw (%r10,%r12,1),      %zmm5,  %zmm2
vpaddw (%r10),             %zmm5,  %zmm1

vpaddw %xmm7,%xmm25,%xmm10
vpaddw %ymm13,%ymm0,%ymm28
vpaddw %zmm28,%zmm20,%zmm29

paddd %mm2, %mm7
paddd (%r10), %mm0

vpaddd 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpaddd 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpaddd 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpaddd 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpaddd 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpaddd 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpaddd 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpaddd (%r10,%r12,1),      %zmm5,  %zmm2
vpaddd (%r10),             %zmm5,  %zmm1

vpaddd %xmm7,%xmm25,%xmm10
vpaddd %ymm13,%ymm0,%ymm28
vpaddd %zmm28,%zmm20,%zmm29

paddq %mm2, %mm7
paddq (%r10), %mm0

vpaddq 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpaddq 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpaddq 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpaddq 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpaddq 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpaddq 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpaddq 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpaddq (%r10,%r12,1),      %zmm5,  %zmm2
vpaddq (%r10),             %zmm5,  %zmm1

vpaddq %xmm7,%xmm25,%xmm10
vpaddq %ymm13,%ymm0,%ymm28
vpaddq %zmm28,%zmm20,%zmm29


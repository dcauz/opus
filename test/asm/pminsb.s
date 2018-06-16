pminsb %xmm2, %xmm7
pminsb (%r10), %xmm0

pminsw %xmm2, %xmm7
pminsw (%r10), %xmm0

vpminsb 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpminsb 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpminsb 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpminsb 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpminsb 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpminsb 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpminsb 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpminsb (%r10,%r12,1),      %zmm5,  %zmm2
vpminsb (%r10),             %zmm5,  %zmm1

vpminsb %xmm7,%xmm25,%xmm10
vpminsb %ymm13,%ymm0,%ymm28
vpminsb %zmm28,%zmm20,%zmm29

vpminsd 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpminsd 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpminsd 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpminsd 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpminsd 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpminsd 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpminsd 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpminsd (%r10,%r12,1),      %zmm5,  %zmm2
vpminsd (%r10),             %zmm5,  %zmm1

vpminsd %xmm7,%xmm25,%xmm10
vpminsd %ymm13,%ymm0,%ymm28
vpminsd %zmm28,%zmm20,%zmm29

vpminsw 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpminsw 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpminsw 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpminsw 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpminsw 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpminsw 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpminsw 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpminsw (%r10,%r12,1),      %zmm5,  %zmm2
vpminsw (%r10),             %zmm5,  %zmm1

vpminsw %xmm7,%xmm25,%xmm10
vpminsw %ymm13,%ymm0,%ymm28
vpminsw %zmm28,%zmm20,%zmm29

vpminsq 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpminsq 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpminsq 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpminsq 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpminsq 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpminsq 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpminsq 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpminsq (%r10,%r12,1),      %zmm5,  %zmm2
vpminsq (%r10),             %zmm5,  %zmm1

vpminsq %xmm7,%xmm25,%xmm10
vpminsq %ymm13,%ymm0,%ymm28
vpminsq %zmm28,%zmm20,%zmm29

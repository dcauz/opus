paddsb %mm2, %mm7
paddsb (%r10), %mm0

vpaddsb 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpaddsb 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpaddsb 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpaddsb 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpaddsb 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpaddsb 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpaddsb 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpaddsb (%r10,%r12,1),      %zmm5,  %zmm2
vpaddsb (%r10),             %zmm5,  %zmm1

vpaddsb %xmm7,%xmm25,%xmm10
vpaddsb %ymm13,%ymm0,%ymm28
vpaddsb %zmm28,%zmm20,%zmm29

paddsw %mm2, %mm7
paddsw (%r10), %mm0

vpaddsw 0x10(%r10,%r12,1),  %xmm31, %xmm10
vpaddsw 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vpaddsw 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vpaddsw 0x10(%r10,%r12,1),  %ymm31, %ymm10
vpaddsw 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vpaddsw 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vpaddsw 0x3567(%r10,%r12,4),%zmm21, %zmm10
vpaddsw (%r10,%r12,1),      %zmm5,  %zmm2
vpaddsw (%r10),             %zmm5,  %zmm1

vpaddsw %xmm7,%xmm25,%xmm10
vpaddsw %ymm13,%ymm0,%ymm28
vpaddsw %zmm28,%zmm20,%zmm29

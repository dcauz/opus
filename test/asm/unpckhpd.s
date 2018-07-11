unpckhpd %xmm2, %xmm7
unpckhpd (%r10), %xmm0

vunpckhpd 0x10(%r10,%r12,1),  %xmm31, %xmm10
vunpckhpd 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vunpckhpd 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vunpckhpd 0x10(%r10,%r12,1),  %ymm31, %ymm10
vunpckhpd 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vunpckhpd 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vunpckhpd 0x3567(%r10,%r12,4),%zmm21, %zmm10
vunpckhpd (%r10,%r12,1),      %zmm5,  %zmm2
vunpckhpd (%r10),             %zmm5,  %zmm1

vunpckhpd %xmm7,%xmm25,%xmm10
vunpckhpd %ymm13,%ymm0,%ymm28
vunpckhpd %zmm28,%zmm20,%zmm29

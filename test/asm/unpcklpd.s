unpcklpd %xmm2, %xmm7
unpcklpd (%r10), %xmm0

vunpcklpd 0x10(%r10,%r12,1),  %xmm31, %xmm10
vunpcklpd 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vunpcklpd 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vunpcklpd 0x10(%r10,%r12,1),  %ymm31, %ymm10
vunpcklpd 0x10(%r10,%r12,1),  %ymm5,  %ymm3
vunpcklpd 0x10(%r10,%r12,1),  %ymm5,  %ymm3

vunpcklpd 0x3567(%r10,%r12,4),%zmm21, %zmm10
vunpcklpd (%r10,%r12,1),      %zmm5,  %zmm2
vunpcklpd (%r10),             %zmm5,  %zmm1

vunpcklpd %xmm7,%xmm25,%xmm10
vunpcklpd %ymm13,%ymm0,%ymm28
vunpcklpd %zmm28,%zmm20,%zmm29

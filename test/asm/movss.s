movss %xmm0, %xmm1
movss %xmm2, %xmm7
movss %xmm7, %xmm5

movss (%r10), %xmm0
movss (%r10,%rdx,4), %xmm0
movss 0x10(%r10,%rdx,4), %xmm0

movss (%r10), %xmm4
movss (%r10,%rdx,4), %xmm5
movss 0x10(%r10,%rdx,4), %xmm6

movss %xmm13, (%r10)
movss %xmm14, (%r10,%rdx,4)
movss %xmm15, 0x10(%r10,%rdx,4)

movss (%r10), %xmm4
movss (%r10,%rdx,4), %xmm5
movss 0x10(%r10,%rdx,4), %xmm6

vmovss %xmm0,%xmm3,%xmm1
vmovss %xmm1,%xmm2,%xmm11
vmovss %xmm3,%xmm12,%xmm1
vmovss %xmm4,%xmm13,%xmm15

vmovss %xmm11,%xmm0,%xmm23
vmovss %xmm12,%xmm20,%xmm11
vmovss %xmm14,%xmm10,%xmm4
vmovss %xmm15,%xmm12,%xmm11

vmovss (%r10), %xmm0
vmovss (%r10,%rdx,4), %xmm0
vmovss 0x10(%r10,%rdx,4), %xmm0

vmovss (%r10), %xmm4
vmovss (%r10,%rdx,4), %xmm5
vmovss 0x10(%r10,%rdx,4), %xmm6

vmovss %xmm13, (%r10)
vmovss %xmm14, (%r10,%rdx,4)
vmovss %xmm15, 0x10(%r10,%rdx,4)

vmovss %xmm24, (%r10)
vmovss %xmm14, (%r10,%rdx,4)
vmovss %xmm4, 0x10(%r10,%rdx,4)


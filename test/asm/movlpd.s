movlpd (%r10), %xmm1
movlpd %xmm4,(%r10)

vmovlpd %xmm4,(%r10)
vmovlpd %xmm24,(%r10)

vmovlpd (%r10), %xmm1, %xmm3
vmovlpd (%r10), %xmm19, %xmm3
vmovlpd (%r10), %xmm1, %xmm30
vmovlpd (%r10), %xmm21, %xmm30

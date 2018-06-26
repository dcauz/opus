maxsd (%rdx), %xmm4
maxsd %xmm2, %xmm4

vmaxsd (%r10), %xmm1, %xmm2
vmaxsd (%r10), %xmm21, %xmm2
vmaxsd (%r10), %xmm1, %xmm20
vmaxsd (%r10), %xmm21, %xmm20

vmaxsd %xmm10, %xmm1, %xmm2
vmaxsd %xmm10, %xmm21, %xmm2
vmaxsd %xmm10, %xmm1, %xmm20
vmaxsd %xmm10, %xmm21, %xmm20

vmaxsd %xmm20, %xmm1, %xmm2
vmaxsd %xmm20, %xmm21, %xmm2
vmaxsd %xmm20, %xmm1, %xmm20
vmaxsd %xmm20, %xmm21, %xmm20

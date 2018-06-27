minsd (%rdx), %xmm4
minsd %xmm2, %xmm4

vminsd (%r10), %xmm1, %xmm2
vminsd (%r10), %xmm21, %xmm2
vminsd (%r10), %xmm1, %xmm20
vminsd (%r10), %xmm21, %xmm20

vminsd %xmm10, %xmm1, %xmm2
vminsd %xmm10, %xmm21, %xmm2
vminsd %xmm10, %xmm1, %xmm20
vminsd %xmm10, %xmm21, %xmm20

vminsd %xmm20, %xmm1, %xmm2
vminsd %xmm20, %xmm21, %xmm2
vminsd %xmm20, %xmm1, %xmm20
vminsd %xmm20, %xmm21, %xmm20

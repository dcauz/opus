sqrtsd (%rdx), %xmm4
sqrtsd %xmm2, %xmm4

vsqrtsd (%r10), %xmm1, %xmm2
vsqrtsd (%r10), %xmm21, %xmm2
vsqrtsd (%r11), %xmm1, %xmm24
vsqrtsd (%r11), %xmm21, %xmm24

vsqrtsd %xmm3, %xmm1, %xmm2
vsqrtsd %xmm3, %xmm1, %xmm21
vsqrtsd %xmm3, %xmm16, %xmm2
vsqrtsd %xmm3, %xmm16, %xmm21

vsqrtsd %xmm30, %xmm1, %xmm2
vsqrtsd %xmm30, %xmm1, %xmm21
vsqrtsd %xmm30, %xmm16, %xmm2
vsqrtsd %xmm30, %xmm16, %xmm21

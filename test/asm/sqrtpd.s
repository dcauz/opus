sqrtpd (%rdx), %xmm4
sqrtpd %xmm2, %xmm4

vsqrtpd (%r10), %xmm1
vsqrtpd (%r10), %xmm21
vsqrtpd %xmm1, %xmm4
vsqrtpd %xmm1, %xmm24
vsqrtpd %xmm21, %xmm24
vsqrtpd %xmm21, %xmm2

vsqrtpd (%r10), %ymm1
vsqrtpd (%r10), %ymm21
vsqrtpd %ymm1, %ymm4
vsqrtpd %ymm1, %ymm24
vsqrtpd %ymm21, %ymm24
vsqrtpd %ymm21, %ymm2

vsqrtpd (%r10), %zmm1
vsqrtpd (%r10), %zmm21
vsqrtpd %zmm1, %zmm4
vsqrtpd %zmm1, %zmm24
vsqrtpd %zmm21, %zmm24
vsqrtpd %zmm21, %zmm2

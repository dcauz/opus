subpd (%rdx), %xmm4
subpd %xmm2, %xmm4

vsubpd (%r10), %xmm1, %xmm2
vsubpd (%r10), %xmm21, %xmm2
vsubpd (%r10), %xmm1, %xmm20
vsubpd (%r10), %xmm21, %xmm20

vsubpd (%r10), %ymm1, %ymm2
vsubpd (%r10), %ymm21, %ymm2
vsubpd (%r10), %ymm1, %ymm20
vsubpd (%r10), %ymm21, %ymm20

vsubpd (%r10), %zmm1, %zmm2
vsubpd (%r10), %zmm21, %zmm2
vsubpd (%r10), %zmm1, %zmm20
vsubpd (%r10), %zmm21, %zmm20

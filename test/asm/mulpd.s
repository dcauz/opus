mulpd (%rdx), %xmm4
mulpd %xmm2, %xmm4

vmulpd (%r10), %xmm1, %xmm2
vmulpd (%r10), %xmm21, %xmm2
vmulpd (%r10), %xmm1, %xmm20
vmulpd (%r10), %xmm21, %xmm20

vmulpd (%r10), %ymm1, %ymm2
vmulpd (%r10), %ymm21, %ymm2
vmulpd (%r10), %ymm1, %ymm20
vmulpd (%r10), %ymm21, %ymm20

vmulpd (%r10), %zmm1, %zmm2
vmulpd (%r10), %zmm21, %zmm2
vmulpd (%r10), %zmm1, %zmm20
vmulpd (%r10), %zmm21, %zmm20

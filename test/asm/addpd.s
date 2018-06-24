addpd (%rdx), %xmm4
addpd %xmm2, %xmm4

vaddpd (%r10), %xmm1, %xmm2
vaddpd (%r10), %xmm21, %xmm2
vaddpd (%r10), %xmm1, %xmm20
vaddpd (%r10), %xmm21, %xmm20

vaddpd (%r10), %ymm1, %ymm2
vaddpd (%r10), %ymm21, %ymm2
vaddpd (%r10), %ymm1, %ymm20
vaddpd (%r10), %ymm21, %ymm20

vaddpd (%r10), %zmm1, %zmm2
vaddpd (%r10), %zmm21, %zmm2
vaddpd (%r10), %zmm1, %zmm20
vaddpd (%r10), %zmm21, %zmm20

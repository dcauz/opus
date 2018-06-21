movapd %xmm2, %xmm1
movapd (%r10), %xmm1
movapd %xmm4,(%r10)

vmovapd %xmm2, %xmm1
vmovapd (%r10), %xmm1
vmovapd %xmm4,(%r10)

vmovapd %ymm2, %ymm1
vmovapd (%r10), %ymm1
vmovapd %ymm4,(%r10)

vmovapd %zmm2, %zmm1
vmovapd (%r10), %zmm1
vmovapd %zmm4,(%r10)


movupd %xmm2, %xmm1
movupd (%r10), %xmm1
movupd %xmm4,(%r10)

vmovupd %xmm2, %xmm1
vmovupd (%r10), %xmm1
vmovupd %xmm4,(%r10)

vmovupd %ymm2, %ymm1
vmovupd (%r10), %ymm1
vmovupd %ymm4,(%r10)

vmovupd %zmm2, %zmm1
vmovupd (%r10), %zmm1
vmovupd %zmm4,(%r10)


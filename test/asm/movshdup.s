movshdup %xmm2, %xmm3
movshdup %xmm2, %xmm8
movshdup %xmm9, %xmm8
movshdup (%r10), %xmm8

vmovshdup %xmm2, %xmm3
vmovshdup %xmm22, %xmm8
vmovshdup %xmm9, %xmm18
vmovshdup (%r10), %xmm8

vmovshdup %ymm2, %ymm3
vmovshdup %ymm22, %ymm8
vmovshdup %ymm9, %ymm18
vmovshdup (%r10), %ymm8

vmovshdup %zmm2, %zmm3
vmovshdup %zmm22, %zmm8
vmovshdup %zmm9, %zmm18
vmovshdup (%r10), %zmm8

vmovshdup %xmm2, %xmm3 {%k6}
vmovshdup %xmm22, %xmm8 {%k1}
vmovshdup %xmm9, %xmm18 {%k3}
vmovshdup (%r10), %xmm8 {%k4}

vmovshdup %ymm2, %ymm3 {%k2}
vmovshdup %ymm22, %ymm8 {%k5}
vmovshdup %ymm9, %ymm18 {%k1}
vmovshdup (%r10), %ymm8 {%k2}

vmovshdup %zmm2, %zmm3 {%k2}
vmovshdup %zmm22, %zmm8 {%k2}
vmovshdup %zmm9, %zmm18 {%k2}
vmovshdup (%r10), %zmm8 {%k6}

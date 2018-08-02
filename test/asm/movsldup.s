movsldup %xmm2, %xmm3
movsldup %xmm2, %xmm8
movsldup %xmm9, %xmm8
movsldup (%r10), %xmm8

vmovsldup %xmm2, %xmm3
vmovsldup %xmm22, %xmm8
vmovsldup %xmm9, %xmm18
vmovsldup (%r10), %xmm8

vmovsldup %ymm2, %ymm3
vmovsldup %ymm22, %ymm8
vmovsldup %ymm9, %ymm18
vmovsldup (%r10), %ymm8

vmovsldup %zmm2, %zmm3
vmovsldup %zmm22, %zmm8
vmovsldup %zmm9, %zmm18
vmovsldup (%r10), %zmm8

vmovsldup %xmm2, %xmm3 {%k6}
vmovsldup %xmm22, %xmm8 {%k1}
vmovsldup %xmm9, %xmm18 {%k3}
vmovsldup (%r10), %xmm8 {%k4}

vmovsldup %ymm2, %ymm3 {%k2}
vmovsldup %ymm22, %ymm8 {%k5}
vmovsldup %ymm9, %ymm18 {%k1}
vmovsldup (%r10), %ymm8 {%k2}

vmovsldup %zmm2, %zmm3 {%k2}
vmovsldup %zmm22, %zmm8 {%k2}
vmovsldup %zmm9, %zmm18 {%k2}
vmovsldup (%r10), %zmm8 {%k6}

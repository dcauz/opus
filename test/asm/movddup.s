movddup %xmm2, %xmm3
movddup %xmm2, %xmm8
movddup %xmm9, %xmm8
movddup (%r10), %xmm8

vmovddup %xmm2, %xmm3
vmovddup %xmm22, %xmm8
vmovddup %xmm9, %xmm18
vmovddup (%r10), %xmm8

vmovddup %ymm2, %ymm3
vmovddup %ymm22, %ymm8
vmovddup %ymm9, %ymm18
vmovddup (%r10), %ymm8

vmovddup %zmm2, %zmm3
vmovddup %zmm22, %zmm8
vmovddup %zmm9, %zmm18
vmovddup (%r10), %zmm8

vmovddup %xmm2, %xmm3 {%k6}
vmovddup %xmm22, %xmm8 {%k1}
vmovddup %xmm9, %xmm18 {%k3}
vmovddup (%r10), %xmm8 {%k4}

vmovddup %ymm2, %ymm3 {%k2}
vmovddup %ymm22, %ymm8 {%k5}
vmovddup %ymm9, %ymm18 {%k1}
vmovddup (%r10), %ymm8 {%k2}

vmovddup %zmm2, %zmm3 {%k2}
vmovddup %zmm22, %zmm8 {%k2}
vmovddup %zmm9, %zmm18 {%k2}
vmovddup (%r10), %zmm8 {%k6}

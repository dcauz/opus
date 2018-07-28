pmuludq %xmm1, %xmm2
pmuludq (%r10), %xmm2

pmuludq %xmm10, %xmm2
pmuludq %xmm1, %xmm12
pmuludq %xmm1, %xmm12
pmuludq (%r10), %xmm12

vpmuludq %xmm1, %xmm2, %xmm3
vpmuludq %xmm10, %xmm2, %xmm3
vpmuludq %xmm1, %xmm12, %xmm3
vpmuludq %xmm1, %xmm12, %xmm13
vpmuludq %xmm20, %xmm2, %xmm3
vpmuludq %xmm1, %xmm22, %xmm3
vpmuludq %xmm1, %xmm22, %xmm23

vpmuludq (%r10), %xmm2, %xmm3

vpmuludq %ymm1, %ymm2, %ymm3
vpmuludq %ymm10, %ymm2, %ymm3
vpmuludq %ymm1, %ymm12, %ymm3
vpmuludq %ymm1, %ymm12, %ymm13
vpmuludq %ymm20, %ymm2, %ymm3
vpmuludq %ymm1, %ymm22, %ymm3
vpmuludq %ymm1, %ymm22, %ymm23

vpmuludq (%r10), %ymm2, %ymm3

vpmuludq %zmm1, %zmm2, %zmm3
vpmuludq %zmm10, %zmm2, %zmm3
vpmuludq %zmm1, %zmm12, %zmm3
vpmuludq %zmm1, %zmm12, %zmm13
vpmuludq %zmm20, %zmm2, %zmm3
vpmuludq %zmm1, %zmm22, %zmm3
vpmuludq %zmm1, %zmm22, %zmm23

vpmuludq (%r10), %zmm2, %zmm3

vpmuludq %xmm1, %xmm2, %xmm3 {%k1}
vpmuludq %xmm10, %xmm2, %xmm3 {%k1}
vpmuludq %xmm1, %xmm12, %xmm3 {%k1}
vpmuludq %xmm1, %xmm12, %xmm13 {%k1}
vpmuludq %xmm20, %xmm2, %xmm3 {%k1}
vpmuludq %xmm1, %xmm22, %xmm3 {%k1}
vpmuludq %xmm1, %xmm22, %xmm23 {%k1}

vpmuludq (%r10), %xmm2, %xmm3 {%k1}

vpmuludq %ymm1, %ymm2, %ymm3 {%k1}
vpmuludq %ymm10, %ymm2, %ymm3 {%k1}
vpmuludq %ymm1, %ymm12, %ymm3 {%k1}
vpmuludq %ymm1, %ymm12, %ymm13 {%k1}
vpmuludq %ymm20, %ymm2, %ymm3 {%k1}
vpmuludq %ymm1, %ymm22, %ymm3 {%k1}
vpmuludq %ymm1, %ymm22, %ymm23 {%k1}

vpmuludq (%r10), %ymm2, %ymm3 {%k1}

vpmuludq %zmm1, %zmm2, %zmm3 {%k1}
vpmuludq %zmm10, %zmm2, %zmm3 {%k1}
vpmuludq %zmm1, %zmm12, %zmm3 {%k1}
vpmuludq %zmm1, %zmm12, %zmm13 {%k1}
vpmuludq %zmm20, %zmm2, %zmm3 {%k1}
vpmuludq %zmm1, %zmm22, %zmm3 {%k1}
vpmuludq %zmm1, %zmm22, %zmm23 {%k1}

vpmuludq (%r10), %zmm2, %zmm3 {%k1}

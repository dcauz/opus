vcvtps2ph $1, %ymm2, %xmm1
vcvtps2ph $2, %ymm2, (%r10)

vcvtps2ph $3, %xmm2, %xmm1
vcvtps2ph $4, %xmm2, (%r10)

vcvtps2ph $5, %ymm2, %xmm1{%k3}
vcvtps2ph $6, %ymm2, (%r10){%k3}

vcvtps2ph $7, %xmm2, %xmm1{%k3}
vcvtps2ph $8, %xmm2, (%r10){%k3}

vcvtps2ph $9, %zmm2, %ymm1
vcvtps2ph $10, %zmm2, (%r10)

vcvtps2ph $11, %zmm2, %ymm1{%k3}
vcvtps2ph $12, %zmm2, (%r10){%k3}

vcvtps2ph $13, %ymm12, %xmm1
vcvtps2ph $14, %ymm12, (%r10)

vcvtps2ph $15, %xmm12, %xmm1
vcvtps2ph $16, %xmm12, (%r10)

vcvtps2ph $17, %ymm12, %xmm1{%k3}
vcvtps2ph $18, %ymm12, (%r10){%k3}

vcvtps2ph $19, %xmm12, %xmm1{%k3}
vcvtps2ph $20, %xmm12, (%r10){%k3}

vcvtps2ph $21, %zmm12, %ymm1
vcvtps2ph $22, %zmm12, (%r10)

vcvtps2ph $23, %zmm12, %ymm1{%k3}
vcvtps2ph $24, %zmm12, (%r10){%k3}

vcvtps2ph $25, %ymm22, %xmm1
vcvtps2ph $26, %ymm22, (%r10)

vcvtps2ph $27, %xmm22, %xmm1
vcvtps2ph $28, %xmm22, (%r10)

vcvtps2ph $29, %ymm22, %xmm1{%k3}
vcvtps2ph $30, %ymm22, (%r10){%k3}

vcvtps2ph $31, %xmm22, %xmm1{%k3}
vcvtps2ph $32, %xmm22, (%r10){%k3}

vcvtps2ph $33, %zmm22, %ymm1
vcvtps2ph $34, %zmm22, (%r10)

vcvtps2ph $35, %zmm22, %ymm1{%k3}
vcvtps2ph $36, %zmm22, (%r10){%k3}


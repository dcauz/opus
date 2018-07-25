cvtdq2ps %xmm1, %xmm4
cvtdq2ps (%r10), %xmm4
cvtdq2ps (%rdx), %xmm4

vcvtdq2ps %xmm1, %xmm4
vcvtdq2ps %xmm1, %xmm24
vcvtdq2ps %xmm21, %xmm4
vcvtdq2ps %xmm21, %xmm24
vcvtdq2ps (%r10), %xmm4
vcvtdq2ps (%rdx), %xmm24

vcvtdq2ps %ymm1, %ymm4
vcvtdq2ps %ymm1, %ymm24
vcvtdq2ps %ymm21, %ymm4
vcvtdq2ps %ymm21, %ymm24
vcvtdq2ps (%r10), %ymm4
vcvtdq2ps (%rdx), %ymm24

vcvtdq2ps %xmm1, %xmm4 {%k1}
vcvtdq2ps %xmm1, %xmm24 {%k2}
vcvtdq2ps %xmm21, %xmm4 {%k3}
vcvtdq2ps %xmm21, %xmm24 {%k4}
vcvtdq2ps (%r10), %xmm4 {%k5}
vcvtdq2ps (%rdx), %xmm24 {%k6}

vcvtdq2ps %ymm1, %ymm4 {%k7}
vcvtdq2ps %ymm1, %ymm24 {%k6}
vcvtdq2ps %ymm21, %ymm4 {%k5}
vcvtdq2ps %ymm21, %ymm24 {%k4}
vcvtdq2ps (%r10), %ymm4 {%k3}
vcvtdq2ps (%rdx), %ymm24 {%k2}

vcvtdq2ps %zmm1, %zmm4 {%k1}
vcvtdq2ps %zmm1, %zmm24 {%k2}
vcvtdq2ps %zmm21, %zmm4 {%k3}
vcvtdq2ps %zmm21, %zmm24 {%k4}
vcvtdq2ps (%r10), %zmm4 {%k5}
vcvtdq2ps (%rdx), %zmm24 {%k6}

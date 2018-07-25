cvtps2dq %xmm1, %xmm4
cvtps2dq (%r10), %xmm4
cvtps2dq (%rdx), %xmm4

vcvtps2dq %xmm1, %xmm4
vcvtps2dq %xmm1, %xmm24
vcvtps2dq %xmm21, %xmm4
vcvtps2dq %xmm21, %xmm24
vcvtps2dq (%r10), %xmm4
vcvtps2dq (%rdx), %xmm24

vcvtps2dq %ymm1, %ymm4
vcvtps2dq %ymm1, %ymm24
vcvtps2dq %ymm21, %ymm4
vcvtps2dq %ymm21, %ymm24
vcvtps2dq (%r10), %ymm4
vcvtps2dq (%rdx), %ymm24

vcvtps2dq %xmm1, %xmm4 {%k1}
vcvtps2dq %xmm1, %xmm24 {%k2}
vcvtps2dq %xmm21, %xmm4 {%k3}
vcvtps2dq %xmm21, %xmm24 {%k4}
vcvtps2dq (%r10), %xmm4 {%k5}
vcvtps2dq (%rdx), %xmm24 {%k6}

vcvtps2dq %ymm1, %ymm4 {%k7}
vcvtps2dq %ymm1, %ymm24 {%k6}
vcvtps2dq %ymm21, %ymm4 {%k5}
vcvtps2dq %ymm21, %ymm24 {%k4}
vcvtps2dq (%r10), %ymm4 {%k3}
vcvtps2dq (%rdx), %ymm24 {%k2}

vcvtps2dq %zmm1, %zmm4 {%k1}
vcvtps2dq %zmm1, %zmm24 {%k2}
vcvtps2dq %zmm21, %zmm4 {%k3}
vcvtps2dq %zmm21, %zmm24 {%k4}
vcvtps2dq (%r10), %zmm4 {%k5}
vcvtps2dq (%rdx), %zmm24 {%k6}
